import React from 'react'

const Copyright = () => {
    const date = new Date();
    const year = date.getFullYear();
    return (
        <div>
            <p>&copy; {year} Tous droits réservés</p>
        </div>
    )
}

export default Copyright