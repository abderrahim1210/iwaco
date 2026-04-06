import React from 'react'
import { FaPlus } from 'react-icons/fa'

const ProductCard = ({ p }) => {
    return (
        <div className='product-card'>
            <div className="products-image">
                <div className='category_badge'>{p.brand || p.category}</div>
                <img src={`http://localhost:8000/storage/products/${p.category.slug}/${p.image}`} alt={p.name} loading='lazy' />
                <div className="hover-actions">
                    <button className='view-btn'>Voir Détails</button>
                </div>
            </div>

            <div className="product-info">
                <h3 className='product-title'>{p.name}</h3>
                <p className="product-desc">{p.description}</p>

                <div className="product-footer">
                    <div className="price-container">
                        <span className="price">
                            {p.price} <small>DH</small>
                        </span>
                    </div>

                    <button className='add-to-cart-icon' title='Ajouter au panier'>
                        <FaPlus />
                    </button>
                </div>
            </div>
        </div>

    )
}

export default ProductCard