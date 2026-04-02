import React from 'react'
import { FaEnvelope, FaFacebookF, FaLinkedinIn, FaMap, FaPhone, FaTwitter } from 'react-icons/fa'
import Copyright from './Copyright'

const Footer = () => {
    return (

        <div data-bs-page="footer">
            <footer className="footer">
                <div className="container">
                    <div className="footer-grid">
                        <div className="footer-col">
                            <h2 className="logo">IWACO</h2>
                            <p>Nous apportons des solutions innovantes pour développer votre activité et des services techniques de haute qualité.</p>
                        </div>
                        <div className="footer-col">
                            <h4>Explore</h4>
                            <a href="#">Accueil</a>
                            <a href="#">Service</a>
                            <a href="#">A propos</a>
                        </div>

                        <div className="footer-col">
                            <h4>Contactez-nous</h4>
                            <div className="socials">
                                <a href="https://www.facebook.com/iwaco.maroc"><FaFacebookF /></a>
                                <a href="https://fr.linkedin.com/company/iwaco"><FaLinkedinIn /></a>
                                <a href="https://twitter.com/iwacomaroc"><FaTwitter /></a>
                            </div>
                        </div>
                    </div>

                    <div className="footer-bottom">
                        <Copyright />
                    </div>
                </div>
            </footer>
        </div>

    )
}

export default Footer