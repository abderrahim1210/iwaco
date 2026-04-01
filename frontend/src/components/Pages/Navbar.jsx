import React from 'react'
import Offcanvas from './OffcanvasTemplate'
import { FaBriefcase, FaEnvelope, FaFacebook, FaFacebookF, FaHome, FaInfoCircle, FaLinkedin, FaLinkedinIn, FaTwitter } from 'react-icons/fa'
import { NavLink } from 'react-bootstrap'
import {Briefcase, Home, Info, Mail} from 'lucide-react'

const Navbar = () => {
    return (
        <div data-bs-page="navbar">
            <header className='d-flex d-sm-flex d-md-block'>
                <nav className='navbar navbar-expand p-md-2 p-sm-3 nav1 sticky-top'>
                    <div className="container-fluid d-flex align-items-center justify-content-between">
                        <ul className='navbar-nav me-auto ul1'>
                            <li className='nav-item' title='Bienvenue à IWACO'>
                                <NavLink style={{ cursor: 'pointer' }} className='nav-link nav-brand p-0 m-0'>
                                    <img src="/outils/pngs/logo.png" alt="logo" style={{ padding: "0%", width: 100, height: "auto", margin: 0 }} id='logo' />
                                </NavLink>
                            </li>
                        </ul>
                        <ul className='navbar-nav d-none d-md-flex mx-auto ul2'>
                            <li className='nav-item'>
                                <a href='/home' className='nav-link'><Home /> Accueil</a>
                            </li>
                            <li className='nav-item'>
                                <a href='/propos' className='nav-link'><Info /> A propos</a>
                            </li>
                            <li className='nav-item'>
                                <a href='/services' className='nav-link'><Briefcase /> Services</a>
                            </li>
                            <li className='nav-item'>
                                <a href='/contact' className='nav-link'><Mail />Contactez-nous</a>
                            </li>
                        </ul>
                        <ul className='navbar-nav d-none d-md-flex flex-column ms-auto'>
                            <div className='text-center' style={{color:"#555"}}>
                                <small>Suivez-nous</small>
                            </div>
                            <div className='d-flex'>
                                <li className="nav-item">
                                    <a href='https://www.facebook.com/share/1BCabGnttm/' className='nav-link social-icon facebook'>
                                        <FaFacebookF />
                                    </a>
                                </li>
                                <li className="nav-item">
                                    <a href='' className='nav-link social-icon twitter'>
                                        <FaTwitter />
                                    </a>
                                </li>
                                <li className="nav-item">
                                    <a href='' className='nav-link social-icon linkedin'>
                                        <FaLinkedinIn />
                                    </a>
                                </li>
                            </div>
                        </ul>
                    </div>
                </nav>
                <Offcanvas />
            </header>
        </div>
    )
}

export default Navbar