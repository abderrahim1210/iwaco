import React from 'react'

const Spinner = ({ text = "Préparation de votre espace technologique", type='full' }) => {
    return (
        type === "full" ? (<div className='iwaco-loader-container'>
            <div className="loader-content">
                <div className="iwaco-ring">
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <h5 className='loader-text'>IWACO<span> - {text}</span></h5>
            </div>
        </div>) : (
            <div className='mini-loader-wrapper text-center py-5 w-100'>
                <div className="custom-spinner" style={{width:'3rem',height:'3rem'}}></div>

                <p className="mt-3 loader-text-mini">
                    <strong>IWACO.</strong><br />
                    <span>{text}</span>
                </p>
            </div>
        )
    )
}

export default Spinner