import React from 'react'
import Navbar from './Navbar'
import Footer from './Footer'
import { useNavigate } from 'react-router-dom';
import { FiArrowRight } from 'react-icons/fi'
import { Swiper, SwiperSlide } from 'swiper/react';
import { Autoplay, EffectFade, Pagination, Navigation } from 'swiper/modules';

import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/effect-fade';
import ServicesSection from './ServicesSection';
import AboutSection from './AboutSection';
import Heritage from './Heritage';
import Partners from './Partners';
import ProductsSection from './ProductsSection';
import ContactFormSection from './ContactFormSection';
const Home = () => {
  const navigate = useNavigate();
  const homeTexts = {
    heroTitle: "L'Excellence Technologique au Service de l'Industrie",
    heroDescription: "Expertise, innovation et fiabilité : découvrez notre large gamme de produits et services technologiques."
  }
  return (
    <div data-bs-page="home">
      <Navbar />
      <div className="div2">
        <Swiper
          modules={[Autoplay, EffectFade]}
          effect='fade'
          allowTouchMove={false}
          className='hero-bg-swiper'
          style={{ height: '100%', width: '100%' }}
          autoplay={{ delay: 4000, disableOnInteraction: false }}
        >
          <SwiperSlide>
            <div className='slide-img' style={{ backgroundImage: "url('/outils/backgrounds/iwaco_6.jpg')" }}></div>
          </SwiperSlide>
          <SwiperSlide>
            <div className='slide-img' style={{ backgroundImage: "url('/outils/backgrounds/iwaco_1.jpg')" }}></div>
          </SwiperSlide>
          <SwiperSlide>
            <div className='slide-img' style={{ backgroundImage: "url('/outils/backgrounds/iwaco_2.jpg')" }}></div>
          </SwiperSlide>
          <SwiperSlide>
            <div className='slide-img' style={{ backgroundImage: "url('/outils/backgrounds/iwaco_5.jpg')" }}></div>
          </SwiperSlide>
        </Swiper>
        <div className="hero-static-content">
          <div className="container-fluid p-0">
            <>
              <h1 className='hero-title' style={{ fontWeight: "700" }}>{homeTexts.heroTitle}</h1>
              <p id="quote" className="hero-description mt-2 mb-2">
                {homeTexts.heroDescription}
              </p>
              <a href='#produits' className='btn voir-produits'>Voir nos produits <FiArrowRight /></a>
            </>
          </div>
        </div>
      </div>

      <Heritage />

      <AboutSection /> 

      <ServicesSection />

      <Partners />

      <ProductsSection />

      <ContactFormSection />

      <Footer />
    </div>
  )
}

export default Home