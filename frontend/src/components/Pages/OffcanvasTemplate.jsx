import React, { useState } from 'react'
import { Offcanvas } from 'react-bootstrap';
import { FaBars, FaPlus } from 'react-icons/fa';
import { Briefcase, Home, Info, Mail, Menu, Package, Users, X } from 'lucide-react';
import Copyright from './Copyright';
const OffcanvasTemplate = () => {
    const [show, setShow] = useState(false);

    return (
        <>

            {/* <Menu size={24} /> */}
            <button className={`custom-menu-icon btn d-md-none ms-auto ${show ? 'open' : ''}`} onClick={() => setShow(true)}>
                <div className="bar-wrapper">
                    <span className='bar top-bar'></span>
                    <span className='bar middle-bar'></span>
                    <span className='bar bottom-bar'></span>
                </div>
            </button>
            <Offcanvas show={show} onHide={() => setShow(false)} className="custom-offcanvas" >
                <Offcanvas.Header>
                    {/* <Offcanvas.Title>Menu</Offcanvas.Title> */}
                    <div className="slidebar-logo">IWACO<span>.</span></div>
                    <button className='close-custom-btn' onClick={() => setShow(false)}>
                        <X size={24} />
                    </button>
                </Offcanvas.Header>
                <Offcanvas.Body>
                    <div className="nav-list">
                        <a href="#home" className='nav-item active'><Home size={18} /> Accueil</a>
                        <a href="#propos" className='nav-item'><Info size={18} /> A propos</a>
                        <a href="#services" className='nav-item'><Briefcase size={18} /> Services</a>
                        <a href="#produits" className='nav-item'><Package size={18} />Nos produits</a>
                        <a href="#contact" className='nav-item'><Mail size={18} />Contactez-nous</a>
                        <div className="divider"></div>
                    </div>

                    <div className="slidebar-footer">
                        <Copyright className='text-dark' />
                    </div>
                </Offcanvas.Body>
            </Offcanvas>
        </>
    )
}

export default OffcanvasTemplate