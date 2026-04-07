import axios from 'axios';
import { ChevronLeft, Package, RefreshCw, ShieldCheck, ShoppingCart, Truck } from 'lucide-react';
import React, { useEffect, useState } from 'react'
import { Link, useParams } from 'react-router-dom';
import Copyright from './Copyright';
import EmptyContent from './EmptyContent';
import Spinner from './Spinner';

const ProductDetails = () => {
    const { id } = useParams();
    const [product, setProduct] = useState(null);
    const fetchInfosURL = `http://localhost:8000/product/${id}`;
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        try {
            const fetchInfos = async () => {
                const res = await axios.get(fetchInfosURL, { withCredentials: true, withXSRFToken: true });
                if (res.data.success) {
                    setProduct(res.data.product);
                    setLoading(false);
                } else {
                    console.log(res.data.message);
                    setLoading(true);
                }
            }
            fetchInfos();
        } catch (err) {
            console.log(err?.response?.data);
        }
    }, []);
    if (loading) return <Spinner text='Chargement des détails du produit' />;
    return (
        <div className='product-details-wrapper container-fluid'>
            <div className="product-page-container container py-5">
                <div className="d-flex align-items-center justify-content-between">
                    <Link to={'/'} className='detail-logo'><img src='/outils/pngs/logo.webp' /> <span>.</span></Link>
                    <Link to={'/'} className='back-line mb-4'>
                        <ChevronLeft size={20} /> Retour aux produits
                    </Link>
                </div>

                {
                    loading ? (<EmptyContent icon={<Package className='faIcon' />} text={'Produit est introuvable'} />) : (<><div className="row g-5">
                    <div className="col-lg-6">
                        <div className="main-product-img-card shadow-sm">
                            <img src={`http://localhost:8000/storage/products/${product?.category?.slug}/${product?.image}`} alt={product?.name} className='img-fluid main-img rounded-4' />
                        </div>
                    </div>

                    <div className="col-lg-6">
                        <div className="product-info-header">
                            <span className="badge-cat">
                                {product?.category?.name}
                            </span>
                            <h1 className='product-main-title display-5 mt-2 fw-bold text-dark'>{product?.name}</h1>
                            <p className='ref-text text-muted'>Référence: IW-PRD-{product?.id}</p>
                        </div>

                        <div className="price-section my-4">
                            <h2 className='price-text'>{product?.price} <small>MAD</small></h2>
                            <p className='text-success fw-semibold'><ShieldCheck size={18} /> En stock - Disponible immédiatement</p>
                        </div>

                        <div className="description-box mb-4">
                            <h5 className='fw-bold mb-3'>Description du produit</h5>
                            <p className="text-secondary leading-relaxed">
                                {product?.description || "Description technique détaillée à venir pour ce produit Iwaco."}
                            </p>
                        </div>

                        <div className="features-grid-mini mb-4">
                            <div className="feat-item"><Truck size={18} /> Livraison Rapide</div>
                            <div className="feat-item"><RefreshCw size={18} /> Support 24/7</div>
                        </div>

                        {/* <button className='btn-buy-now'>
                            <ShoppingCart size={20} /> Demander un devis
                        </button> */}
                    </div>

                </div></>)
                }
            </div>
            <div className="container text-center">
                <Copyright />
            </div>
        </div>
    )
}

export default ProductDetails