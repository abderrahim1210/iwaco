import React from 'react'

const Heritage = () => {
  return (
    <div data-bs-page="heritage">
        <section className='heritage-section'>
            <div className="container">
                <div className="heritage-content">
                    <div className="heritage-text" data-aos="fade-right">
                        <span className="subtitle">Notre Histoire</span>
                        <h2>L'Héritage d'un <span>Visionnaire</span></h2>
                        <p>Tout commence en <span>1936</span>, lorsque <strong>Feu Haj Hassan Raji</strong> a posé les premières pierres d'un empire commercial fondé sur l'intégrité et l'exellence.</p>
                        <p className='description'>
                            Pionnier dans le secteur du thé avec la marque emblématique <em>Sultan</em>, il a su transmettre des valeurs de rigueur et de passion qui animent aujourd'hui l'ensemble du <strong>Groupe T-MAN Holding</strong>.
                        </p>
                        <div className="legacy-footer">
                            <div className="year-badge">Depuis 1936</div>
                            <p>Une tradition de confiance perpétuée par Iwaco.</p>
                        </div>
                    </div>

                    <div className="heritage-image" data-aos="fade-left">
                        <div className="image-wrapper">
                            <img src="/outils/pngs/fondateur.jpg" alt="Feu Haj Hassan Raji" />
                            <div className="image-overlay-card">
                                <h4>Haj Hassan Raji</h4>
                                <span>Fondateur du Groupe</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
  )
}

export default Heritage