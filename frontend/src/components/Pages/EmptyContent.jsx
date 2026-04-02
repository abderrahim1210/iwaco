import React from 'react'

const EmptyContent = ({ icon, text }) => {
    return (
        <div data-bs-page='empty_content'>
            <div className="container-fluid">
                <div className="empty-content">
                    <div className="empty-content-item">
                        {icon}
                        <h4>{text}</h4>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default EmptyContent