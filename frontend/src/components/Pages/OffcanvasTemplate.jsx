import React, { useState } from 'react'
import { Offcanvas } from 'react-bootstrap';
import {FaBars, FaPlus} from 'react-icons/fa';
const OffcanvasTemplate = () => {
    const [show,setShow] = useState(false);
  return (
    <>
        <button className='btn d-md-none ms-auto' onClick={() => setShow(true)}>
            <FaBars />
        </button>
        <Offcanvas show={show} onHide={() => setShow(false)} placement='end' >
            <Offcanvas.Header closeButton>
                <Offcanvas.Title>Menu</Offcanvas.Title>
            </Offcanvas.Header>
            <Offcanvas.Body>
                Hello
            </Offcanvas.Body>
        </Offcanvas>
    </>
  )
}

export default OffcanvasTemplate