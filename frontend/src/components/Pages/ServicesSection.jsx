import React, { useEffect, useState } from 'react'
import EmptyContent from './EmptyContent'
import { FaProductHunt, FaServicestack } from 'react-icons/fa'
import { FiBriefcase, FiHardDrive, FiLayers, FiMapPin, FiShare2, FiTruck } from 'react-icons/fi';
import axios from 'axios'

const ServicesSection = () => {
    const [services, setServices] = useState([]);
    const iconMap = {
        "Warehouse": <FiHardDrive />,
        "Dépôts régionaux": <FiMapPin />,
        "Flotte": <FiTruck />,
        "Canaux": <FiShare2 />
    }
    useEffect(() => {
        try {
            axios.get('/jsons/services.json')
                .then(res => {
                    const data = Array.isArray(res.data) ? res.data : [];
                    setServices(data);
                })
        } catch (err) {
            console.log(err);
        }
    }, []);
    return (
        <section data-bs-page="services" className='container-fluid mt-3 mb-1' id='services'>
            <div className="text-center">
                <h2 className='fw-bold mt-5'>Nos Services Professionnels</h2>
                <div className="title-separator mx-auto"></div>
            </div>
            <div className="container services-section-custom mb-3">

                <div className="row g-4 mt-2 justify-content-center">
                    {
                        services?.length > 0 ? (services?.map((item, index) => (
                            <div className='col-lg-3 col-md-6' key={index}>
                                <div className="iwaco-card text-center">
                                    <div className="card-overlay"></div>
                                    <div className="icon-wrapper">
                                        {iconMap[item.title] || <FiLayers />}
                                    </div>
                                    <h4>{item.title}</h4>
                                    <p className='text-muted small'>{item.description}</p>
                                    <div className="card-accent"></div>
                                </div>
                            </div>
                        ))) : (<EmptyContent icon={<FaServicestack className='faIcon' />} text={'No services found - try again later'} />)
                    }
                </div>
            </div>
        </section>
    )
}

export default ServicesSection