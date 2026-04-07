import React, { useEffect, useState } from 'react'
import EmptyContent from './EmptyContent'
import { ChevronDown, LucidePackage } from 'lucide-react';
import { FaPlus } from 'react-icons/fa';
import axios from 'axios';
import ProductCard from './ProductCard';
const ProductsSection = () => {
    const [products, setProducts] = useState([]);
    const [categories,setCategories] = useState([]);
    const [activeCategory,setActiveCategory] = useState(0);
    const [visible,setVisible] = useState(3);

    const showMoreProducts = () => {
        setVisible(prev => prev + 3);
    }
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

    useEffect(() => {
        setVisible(3);
    },[activeCategory])

    useEffect(() => {
        try{
            const url = 'http://localhost:8000/get_categories';
            axios.get(url,{withCredentials:true})
            .then(res => {
                if (res.data.success){
                    setCategories(res.data.categories);
                }
            })
        }catch(err){
            console.log(err?.response?.data);
        }
    },[]);

    const filterdProducts = activeCategory === 0 ? products : products.filter(p => p.category_id === activeCategory);
    return (
        <div data-bs-page="products" id='produits'>
            <h2 className='section-title'>Nos produits</h2>
            <div className="filter-container">
                <button className={`filter-btn ${activeCategory === 0 ? 'active' : ''}`} onClick={() => setActiveCategory(0)}>Tous</button>
                {
                    categories?.map((c,index) => (
                        <button key={index} className={`filter-btn ${activeCategory === c.id ? 'active' : ''}`} onClick={() => setActiveCategory(c.id)}>{c.name}</button>
                    ))
                }
            </div>
            <section className='products-grid'>
                {
                    filterdProducts?.length > 0 ? filterdProducts.slice(0, visible).map(p => (
                        <ProductCard p={p} key={p.id} />
                    )) : (<EmptyContent icon={<LucidePackage className='faIcon' />} text={"No products found - try again later"} />)
                }
            </section>
            {
                visible < filterdProducts.length && (
                    <div className='show-more-wrapper'>
                        <button className='btn-show-more' onClick={showMoreProducts}>
                            Voir plus <ChevronDown size={18} />
                        </button>
                    </div>
                )
            }
        </div>
    )
}

export default ProductsSection