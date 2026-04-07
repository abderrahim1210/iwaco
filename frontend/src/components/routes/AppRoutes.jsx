import React, { Suspense,lazy } from 'react'
import { BrowserRouter, Route, Routes } from 'react-router-dom'
// import Home from '../Pages/Home';
// import ProductDetails from '../Pages/ProductDetails';
import Spinner from '../Pages/Spinner';
const Home = lazy(() => import('../Pages/Home'));
const ProductDetails = lazy(() => import('../Pages/ProductDetails'));
const AppRoutes = () => {
  return (
    <Suspense fallback={<Spinner type='full' />}>
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<Home />} />
          <Route path='/product/:id' element={<ProductDetails />} />
        </Routes>
      </BrowserRouter>
    </Suspense>
  )
}

export default AppRoutes