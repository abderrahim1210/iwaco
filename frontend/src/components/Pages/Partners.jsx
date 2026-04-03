import React from 'react'

const Partners = () => {
    const logos = ['samsung.svg','vivo.svg','nokia.svg','huawei.svg','tman.svg','sultan.svg','echo.webp','islahate.webp','wafacash.webp','inwi.webp']
  return (
    <div data-bs-page="partners">
        <section className='partners-section'>
            <div className="container-fluid">
                <h4 data-aos="fade-up">Ils nous font confiance</h4>
                <div className="logos-slider">
                    <div className="slide-track">
                        {
                            [...logos,...logos].map((logo,i) => (
                                <div className="logo-item" key={i}>
                                    <img src={`/outils/logos/${logo}`} alt={logo} />
                                </div>
                            ))
                        };
                    </div>
                </div>
            </div>
        </section>
    </div>
  )
}

export default Partners