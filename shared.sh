#!/bin/bash
# Shared header/footer/styles for all pages

STYLES='<link rel="preconnect" href="https://fonts.googleapis.com"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@700;800&family=DM+Sans:wght@400;500;600&display=swap"/>
  <style>
    *,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
    :root{--navy:#1B3A6B;--orange:#E87722;--orange2:#c9661a;--white:#FFFFFF;--lgrey:#F5F7FA;--mgrey:#6B7E8F;--dgrey:#333333;--border:#E2E8F0;--lorange:#FEF3E8;--shadow-lg:0 8px 40px rgba(27,58,107,0.16)}
    html{scroll-behavior:smooth}
    body{font-family:"DM Sans",sans-serif;color:var(--dgrey);background:var(--white);line-height:1.7;overflow-x:hidden}
    a{text-decoration:none;color:inherit}ul{list-style:none}
    h1,h2,h3,h4{font-family:"Poppins",sans-serif;font-weight:800;line-height:1.15;color:var(--navy);letter-spacing:-0.02em}
    h1{font-size:clamp(2.2rem,5vw,3.8rem)}h2{font-size:clamp(1.7rem,3.5vw,2.6rem)}h3{font-size:clamp(1.2rem,2vw,1.5rem)}
    p{font-size:1rem;color:var(--mgrey);line-height:1.75}
    .section{padding:5rem 5%}.section-grey{background:var(--lgrey)}.section-navy{background:var(--navy)}
    .container{max-width:1180px;margin:0 auto}
    .section-head{margin-bottom:3.5rem}.section-head h2{margin-bottom:0.75rem}.section-head p{max-width:560px;font-size:1.05rem}
    .section-head.center{text-align:center}.section-head.center p{margin:0 auto}
    .section-label{display:inline-block;font-size:0.72rem;font-weight:600;letter-spacing:0.15em;text-transform:uppercase;color:var(--orange);margin-bottom:0.75rem}
    .reveal{opacity:0;transform:translateY(28px);transition:opacity 0.7s ease,transform 0.7s ease}
    .reveal.visible{opacity:1;transform:translateY(0)}
    .reveal-delay-1{transition-delay:0.1s}.reveal-delay-2{transition-delay:0.2s}.reveal-delay-3{transition-delay:0.3s}
    .btn-primary{background:var(--orange);color:#fff;font-family:"Poppins",sans-serif;font-weight:700;font-size:0.88rem;padding:0.65rem 1.5rem;border-radius:6px;border:none;cursor:pointer;transition:all 0.2s;display:inline-flex;align-items:center;gap:0.4rem;text-decoration:none;white-space:nowrap;min-height:48px}
    .btn-primary:hover{background:var(--orange2);transform:translateY(-1px)}
    .btn-secondary{background:transparent;color:var(--navy);font-family:"Poppins",sans-serif;font-weight:700;font-size:0.88rem;padding:0.65rem 1.5rem;border-radius:6px;border:2px solid var(--navy);cursor:pointer;transition:all 0.2s;display:inline-flex;align-items:center;gap:0.4rem;text-decoration:none;white-space:nowrap;min-height:48px}
    .btn-secondary:hover{background:var(--navy);color:#fff}
    .btn-outline-orange{background:transparent;color:var(--orange);font-family:"Poppins",sans-serif;font-weight:700;font-size:0.88rem;padding:0.65rem 1.5rem;border-radius:6px;border:2px solid var(--orange);cursor:pointer;transition:all 0.2s;display:inline-flex;align-items:center;gap:0.4rem;text-decoration:none;white-space:nowrap;min-height:48px}
    .btn-outline-orange:hover{background:var(--orange);color:#fff}
    .btn-white{background:#fff;color:var(--navy);font-family:"Poppins",sans-serif;font-weight:700;font-size:0.88rem;padding:0.65rem 1.5rem;border-radius:6px;border:2px solid #fff;cursor:pointer;transition:all 0.2s;display:inline-flex;align-items:center;gap:0.4rem;text-decoration:none;white-space:nowrap;min-height:48px}
    .btn-white:hover{background:var(--lorange);border-color:var(--lorange)}
    .nav{position:sticky;top:0;z-index:500;background:var(--white);box-shadow:0 2px 12px rgba(27,58,107,0.08);display:flex;align-items:center;justify-content:space-between;padding:0 5%;height:72px}
    .nav-links{display:flex;align-items:center;gap:2rem}
    .nav-links a{font-weight:500;font-size:0.9rem;color:var(--dgrey);transition:color 0.2s}
    .nav-links a:hover{color:var(--navy)}
    .nav-right{display:flex;align-items:center;gap:1.2rem}
    .hamburger{display:none;flex-direction:column;gap:5px;cursor:pointer;background:none;border:none;padding:4px}
    .hamburger span{display:block;width:24px;height:2px;background:var(--navy);transition:all 0.3s;border-radius:2px}
    .hamburger.open span:nth-child(1){transform:rotate(45deg) translate(5px,5px)}
    .hamburger.open span:nth-child(2){opacity:0}
    .hamburger.open span:nth-child(3){transform:rotate(-45deg) translate(5px,-5px)}
    .mobile-menu{display:none;position:fixed;top:72px;left:0;right:0;bottom:0;background:var(--white);z-index:499;padding:2rem 5%;flex-direction:column;gap:1.5rem;overflow-y:auto}
    .mobile-menu.open{display:flex}
    .mobile-menu a{font-size:1.2rem;font-weight:600;color:var(--navy);padding:0.75rem 0;border-bottom:1px solid var(--border)}
    .mobile-menu .btn-primary{width:100%;justify-content:center;margin-top:1rem;font-size:1rem;padding:1rem}
    .mobile-cta-bar{display:none;position:fixed;bottom:0;left:0;right:0;z-index:400;background:var(--navy);padding:0.75rem 1.2rem}
    .mobile-cta-bar .btn-primary{width:100%;justify-content:center;font-size:1rem;padding:0.9rem}
    .cta-banner{background:var(--navy);padding:5rem 5%;text-align:center}
    .cta-banner h2{color:#fff;margin-bottom:1rem}
    .cta-banner p{color:rgba(255,255,255,0.8);max-width:520px;margin:0 auto 2rem}
    .cta-banner small{display:block;color:rgba(255,255,255,0.45);margin-top:1rem;font-size:0.82rem}
    footer{background:var(--navy);padding:4rem 5% 0}
    .footer-grid{display:grid;grid-template-columns:1.4fr 1fr 1fr 1.2fr;gap:3rem;padding-bottom:3rem;border-bottom:1px solid rgba(255,255,255,0.1)}
    .footer-col h4{color:#fff;font-size:0.85rem;font-weight:700;letter-spacing:0.08em;text-transform:uppercase;margin-bottom:1.2rem}
    .footer-col ul{display:flex;flex-direction:column;gap:0.6rem}
    .footer-col ul a{color:rgba(255,255,255,0.65);font-size:0.88rem;transition:color 0.2s}
    .footer-col ul a:hover{color:var(--orange)}
    .footer-tagline{color:rgba(255,255,255,0.5);font-size:0.85rem;margin-top:0.75rem}
    .footer-contact-item{color:rgba(255,255,255,0.65);font-size:0.88rem;margin-bottom:0.5rem}
    .footer-contact-item a{color:var(--orange)}
    .footer-badges{display:flex;flex-wrap:wrap;gap:0.5rem;margin-top:1rem}
    .footer-badge{background:rgba(255,255,255,0.08);color:rgba(255,255,255,0.7);font-size:0.72rem;padding:0.3rem 0.7rem;border-radius:4px;border:1px solid rgba(255,255,255,0.12)}
    .footer-bottom{padding:1.2rem 0;display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:0.75rem;font-size:0.78rem;color:rgba(255,255,255,0.4)}
    .footer-bottom a{color:rgba(255,255,255,0.5);transition:color 0.2s}
    .footer-bottom a:hover{color:var(--orange)}
    .footer-disclaimer{font-size:0.72rem;color:rgba(255,255,255,0.3);padding-bottom:1rem}
    .accordion-item{border-bottom:1px solid var(--border)}
    .accordion-btn{width:100%;background:none;border:none;cursor:pointer;padding:1.2rem 0;display:flex;align-items:center;justify-content:space-between;text-align:left;font-family:"DM Sans",sans-serif;font-weight:600;font-size:1rem;color:var(--navy);transition:color 0.2s}
    .accordion-btn:hover{color:var(--orange)}
    .accordion-arrow{width:24px;height:24px;background:var(--lgrey);border-radius:50%;display:flex;align-items:center;justify-content:center;flex-shrink:0;transition:background 0.2s,transform 0.3s;font-size:0.75rem;color:var(--navy)}
    .accordion-btn.open .accordion-arrow{transform:rotate(180deg);background:var(--orange);color:#fff}
    .accordion-body{max-height:0;overflow:hidden;transition:max-height 0.35s ease,padding 0.3s ease}
    .accordion-body.open{max-height:400px;padding-bottom:1.2rem}
    .accordion-body p{color:var(--mgrey);font-size:0.95rem}
    .legal-page{max-width:800px;margin:0 auto;padding:4rem 5%}
    .legal-toc{background:var(--lgrey);border-radius:10px;padding:1.5rem 2rem;margin-bottom:3rem}
    .legal-toc h4{color:var(--navy);margin-bottom:1rem;font-size:0.9rem;letter-spacing:0.05em;text-transform:uppercase}
    .legal-toc ul{display:flex;flex-direction:column;gap:0.4rem}
    .legal-toc ul a{color:var(--navy);font-size:0.9rem;text-decoration:underline}
    .legal-section{margin-bottom:3rem}
    .legal-section h2{font-size:1.4rem;margin-bottom:1rem;padding-top:1rem;border-top:2px solid var(--border)}
    .legal-section p{margin-bottom:1rem;color:var(--dgrey)}
    .legal-section ul{margin:0.75rem 0 1rem 1.5rem;list-style:disc;display:flex;flex-direction:column;gap:0.4rem}
    .legal-section ul li{color:var(--dgrey);font-size:0.95rem}
    @media(max-width:1024px){.footer-grid{grid-template-columns:1fr 1fr}}
    @media(max-width:768px){.nav-links{display:none}.hamburger{display:flex}.mobile-cta-bar{display:block}.footer-grid{grid-template-columns:1fr;gap:2rem}.section{padding:3.5rem 5%}body{padding-bottom:72px}}
  </style>'

echo "Shared styles defined"
