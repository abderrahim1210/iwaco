import React, { useEffect, useState } from 'react'
import EmptyContent from './EmptyContent'
import { LucidePackage } from 'lucide-react';
import { FaPlus } from 'react-icons/fa';
import axios from 'axios';
const ProductsSection = () => {
    const [products, setProducts] = useState([]);
    useEffect(() => {
        try{
            const url = 'http://localhost:8000/get_all_products';
            axios.get(url,{withCredentials:true})
            .then(res => {
                if (res.data.success){
                    setProducts(res.data.produits);
                }
            })
        }catch(err){
            console.log(err.response?.data);
        }
    },[]);
    return (
        <div data-bs-page="products" id='produits'>
            <h2 className='section-title'>Nos produits</h2>
            <section className='products-grid'>
                {
                    products?.length > 0 ? products.map(p => (
                        <div key={p.id} className='product-card'>
                            <div className="products-image">
                                <div className='category_badge'>{p.brand || p.category}</div>
                                <img src={`http://localhost:8000/storage/products/${p.image}`} alt={p.name} loading='lazy' />
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

                    )) : (<EmptyContent icon={<LucidePackage className='faIcon' />} text={"No products found - try again later"} />)
                }
            </section>
        </div>
    )
}

export default ProductsSection