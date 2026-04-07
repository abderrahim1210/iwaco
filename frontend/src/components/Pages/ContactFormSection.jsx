import React, { useState } from 'react'
// import { FaMailBulk, FaPhone, FaTag, FaUser } from 'react-icons/fa';
import { User, Mail, Phone, Tag, MessageSquare, Send, MapPin } from 'lucide-react';
import axios from 'axios';
import Swal from 'sweetalert2'
const ContactFormSection = () => {
    const [sent, setSent] = useState(false);
    const [message, setMeassage] = useState({
        id: "",
        name: "",
        email: "",
        tel: "",
        subject: "",
        text: ""
    });

    const sendMessageURL = "http://localhost:8000/send_message";
    const handleSubmit = (e) => {
        e.preventDefault();
        const { name, email, tel, subject, text } = message;
        if (!name || !email || !tel || !subject || !text) {
            return Swal.fire({
                icon: "warning",
                title: "Message pas envoyés",
                text: "Tous les champs sont obligatoire !",
                timer: 2000,
                confirmButtonColor: "#1E3A8A",
                confirmButtonText: "Okay",
                showConfirmButton: true,
            });
        }
        try {
            axios.post(sendMessageURL, message, {
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                }, withCredentials: true, withXSRFToken: true
            })
                .then(res => {
                    if (res.data.success) {
                        Swal.fire({
                            icon: "success",
                            title: "Message envoyé !",
                            text: "Notre équipe vous répondra dans les plus brefs délais.",
                            timer: 2000,
                            confirmButtonColor: "#1E3A8A",
                            confirmButtonText: "Ok",
                            showConfirmButton: true,
                        });
                    } else {
                        console.log(res.data.messsage);
                    }
                })
        } catch (err) {
            console.log(err?.response?.data);
        }
    }
    return (
        <div data-bs-page="contact" id='contact'>
            <h2 className='section-title mt-5'></h2>
            <div className="contact-grid">
                <div className="container-info-panel">
                    <div className="panel-header">
                        <h2>Contactez-nous</h2>
                        <p>Une question ? Une demande de partenariat ? Notre équipe distribution est à votre disposition.</p>
                    </div>

                    <div className="info-cards">
                        <div className="info-card">
                            <div className="icon-wrapper"><Phone size={20} /></div>
                            <div className="details"><span>Téléphone</span><p>05 29 02 94 44</p></div>
                        </div>

                        <div className="info-card">
                            <div className="icon-wrapper"><Mail size={20} /></div>
                            <div className="details"><span>E-mail</span><p>contact@iwaco.ma</p></div>
                        </div>

                        <div className="info-card">
                            <div className="icon-wrapper"><MapPin size={20} /></div>
                            <div className="details"><span>Adresse</span><p>328 lotissement Lina route 1029</p></div>
                        </div>
                    </div>
                </div>

                <form onSubmit={handleSubmit} className="main-contact-form" id='sendMessageForm'>
                    <div className="input-row">
                        <div className="input-box">
                            <label><User size={14} />Nom Complet</label>
                            <input type="text" value={message.name} onChange={(e) => setMeassage(prev => ({ ...prev, name: e.target.value }))} placeholder='Ex: Nadia Tech' required />
                        </div>
                        <div className="input-box">
                            <label><Mail size={14} />E-mail</label>
                            <input type="email" value={message.email} onChange={(e) => setMeassage(prev => ({ ...prev, email: e.target.value }))} placeholder='contact@exemple.com' required />
                        </div>
                    </div>

                    <div className="input-row">
                        <div className="input-box">
                            <label><Phone size={14} />Téléphone</label>
                            <input type="tel" value={message.tel} onChange={(e) => setMeassage(prev => ({ ...prev, tel: e.target.value }))} placeholder='+212 600 000000' required />
                        </div>
                        <div className="input-box">
                            <label><Tag size={14} />Sujet</label>
                            <select value={message.subject} onChange={(e) => setMeassage(prev => ({ ...prev, subject: e.target.value }))} required>
                                <option value="" disabled>Choisir un sujet</option>
                                <option value="devis">Demande de Devis</option>
                                <option value="partenariat">Devenir Revendeur</option>
                                <option value="support">Support Technique</option>
                            </select>
                        </div>
                    </div>

                    <div className="input-box full-width">
                        <label><MessageSquare size={14} />Message</label>
                        <textarea value={message.text} onChange={(e) => setMeassage(prev => ({ ...prev, text: e.target.value }))} placeholder='Comment pouvons-nous vous aider ?' rows={5} required></textarea>
                    </div>

                    <button className='send-btn'>
                        Envoyer le Message <Send size={18} />
                    </button>
                </form>
            </div>
        </div>
    )
}

export default ContactFormSection