import React from 'react'

const AboutSection = () => {
    return (
        <div data-bs-page="about">
            <section className='about-section' id='propos'>
                <div className="container">
                    <div className="about-wrapper">
                        <div className="about-left" data-aos="fade-right">
                            <div className="image-container">
                                <img src="/outils/backgrounds/iwaco_1.jpg" alt="Siége Iwaco Maroc" />
                                <div className="experience-box">
                                    <span className="years">20+</span>
                                    <span className="text">Ans d'Expertise <br /> (Depuis 2006)</span>
                                </div>
                            </div>
                        </div>

                        <div className="about-right" data-aos="fade-left">
                            <h4 className='top-title'>DÉCOUVREZ IWACO</h4>
                            <h2 className='main-title'>Chef de File National de la <span>Distribution High-Tech</span></h2>

                            <p className="description">
                                Membre prestigieux de <strong>T-MAN Distribution</strong>, Iwaco s'est imposée depuis sa création en 2006 comme un acteur incontournable du marché marocain.
                                Grâce à notre synergie avec le groupe, nous maîtrisons l'ensemble de la chaîne logistique pour offrir le meilleur de la technologie.
                            </p>

                            <div className="stats-grid">
                                <div className="stat-item">
                                    <h3>100%</h3>
                                    <p>Capital Marocain</p>
                                </div>
                                <div className="stat-item">
                                    <h3>+500</h3>
                                    <p>Points de Vente</p>
                                </div>
                                <div className="stat-item">
                                    <h3>24/7</h3>
                                    <p>Réactivité Logistique</p>
                                </div>
                            </div>
                            <a href='http://tmangroup.ma' className='btn btn-modern'>En savoir plus sur T-MAN Group</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    )
}

export default AboutSection