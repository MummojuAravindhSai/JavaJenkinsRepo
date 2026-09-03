<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>

        :root {
            --bg: #f6f7fb;
            --bg-card: #ffffff;
            --primary: #172033;
            --primary-light: #26324a;
            --accent: #635bff;
            --accent-light: #eeecff;
            --accent-dark: #4b44d6;
            --muted: #667085;
            --muted-light: #98a2b3;
            --surface: #f1f3f7;
            --success: #12b76a;
            --warning: #fdb022;
            --danger: #f04438;
            --radius: 18px;
            --radius-sm: 12px;
            --shadow: 0 6px 24px rgba(16, 24, 40, .06);
            --shadow-hover: 0 18px 45px rgba(16, 24, 40, .12);
            --transition: .22s ease;
            --container: 1240px;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }

        html {
            scroll-behavior: smooth;
            scroll-padding-top: 84px;
        }

        body {
            font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.55;
            -webkit-font-smoothing: antialiased;
        }

        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; }
        button, input { font: inherit; }
        button { cursor: pointer; border: 0; background: none; color: inherit; }

        .container {
            width: min(100% - 32px, var(--container));
            margin-inline: auto;
        }

        .muted { color: var(--muted); }
        .text-center { text-align: center; }

        /* Buttons */
        .btn {
            min-height: 46px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            padding: 11px 20px;
            border: 1px solid transparent;
            border-radius: 12px;
            font-size: 14px;
            font-weight: 700;
            transition: transform var(--transition), box-shadow var(--transition), background var(--transition);
        }

        .btn:hover { transform: translateY(-2px); }
        .btn:focus-visible,
        .icon-btn:focus-visible,
        .wish-btn:focus-visible,
        .mobile-toggle:focus-visible,
        .search-wrap:focus-within {
            outline: 3px solid rgba(99, 91, 255, .22);
            outline-offset: 2px;
        }

        .btn-primary {
            color: #fff;
            background: var(--accent);
            border-color: var(--accent);
            box-shadow: 0 8px 20px rgba(99, 91, 255, .22);
        }

        .btn-primary:hover { background: var(--accent-dark); }
        .btn-secondary { color: #fff; background: var(--primary); }
        .btn-secondary:hover { background: var(--primary-light); }

        .btn-outline {
            color: var(--primary);
            background: #fff;
            border-color: #d0d5dd;
        }

        .btn-outline:hover { background: var(--surface); }

        .btn-ghost {
            color: #fff;
            background: rgba(255,255,255,.12);
            border-color: rgba(255,255,255,.35);
            backdrop-filter: blur(8px);
        }

        .btn-ghost:hover { background: rgba(255,255,255,.2); }

        .btn-sm { min-height: 38px; padding: 8px 14px; font-size: 13px; }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,.94);
            border-bottom: 1px solid #eaecf0;
            backdrop-filter: blur(14px);
        }

        .header-inner {
            min-height: 72px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 14px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 9px;
            flex-shrink: 0;
            font-size: 21px;
            font-weight: 800;
            letter-spacing: -.6px;
        }

        .brand .accent { color: var(--accent); }
        .brand i { color: var(--accent); font-size: 24px; }

        nav.main-nav ul {
            display: flex;
            align-items: center;
            gap: 3px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 9px 12px;
            border-radius: 10px;
            color: var(--muted);
            font-size: 13px;
            font-weight: 600;
            transition: var(--transition);
        }

        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            color: var(--accent);
            background: var(--accent-light);
        }

        nav.main-nav li a i { font-size: 13px; }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 3px;
        }

        .header-actions .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 11px;
            color: var(--muted);
            font-size: 17px;
            transition: var(--transition);
            position: relative;
        }

        .header-actions .icon-btn:hover {
            color: var(--accent);
            background: var(--accent-light);
        }

        .cart-wrap { position: relative; }

        .cart-count {
            position: absolute;
            top: 0;
            right: -1px;
            width: 19px;
            height: 19px;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
            border-radius: 50%;
            background: var(--accent);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
            transition: transform .2s ease;
        }

        .search-wrap {
            width: clamp(170px, 18vw, 250px);
            height: 42px;
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 0 13px;
            border: 1px solid #e4e7ec;
            border-radius: 12px;
            background: var(--surface);
            transition: var(--transition);
        }

        .search-wrap:focus-within {
            background: #fff;
            border-color: var(--accent);
        }

        .search-wrap input {
            width: 100%;
            min-width: 0;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--primary);
            font-size: 13px;
        }

        .search-wrap input::placeholder { color: var(--muted-light); }
        .search-wrap button { color: var(--muted); padding: 5px; }
        .search-wrap button:hover { color: var(--accent); }

        .mobile-toggle {
            display: none;
            width: 40px;
            height: 40px;
            place-items: center;
            border-radius: 11px;
            background: var(--surface);
            font-size: 18px;
        }

        #mobileMenu {
            display: none;
            padding: 10px 0 16px;
            background: #fff;
            border-top: 1px solid #eaecf0;
        }

        #mobileMenu ul {
            display: grid;
            gap: 4px;
            list-style: none;
        }

        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 14px;
            border-radius: 10px;
            font-weight: 600;
        }

        #mobileMenu ul li a:hover { background: var(--surface); }
        #mobileMenu ul li a i { width: 20px; color: var(--muted); }

        /* Hero */
        .hero {
            position: relative;
            min-height: 500px;
            display: flex;
            align-items: center;
            margin: 20px auto 0;
            width: min(calc(100% - 32px), 1400px);
            padding: 64px 0;
            overflow: hidden;
            border-radius: 24px;
            background: linear-gradient(115deg, #111827 0%, #2d2a72 100%);
            isolation: isolate;
        }

        .hero::before {
            content: "";
            position: absolute;
            inset: 0;
            z-index: -1;
            background:
                linear-gradient(90deg, rgba(10,15,30,.88) 0%, rgba(24,28,62,.72) 48%, rgba(24,28,62,.25) 100%),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
        }

        .hero .container { position: relative; z-index: 1; }

        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            margin-bottom: 18px;
            padding: 7px 12px;
            border: 1px solid rgba(255,255,255,.16);
            border-radius: 999px;
            background: rgba(255,255,255,.1);
            color: #e9e7ff;
            font-size: 12px;
            font-weight: 700;
            backdrop-filter: blur(8px);
        }

        .hero h1 {
            max-width: 680px;
            margin-bottom: 16px;
            color: #fff;
            font-size: clamp(36px, 5vw, 58px);
            line-height: 1.08;
            letter-spacing: -1.8px;
            font-weight: 800;
        }

        .hero p {
            max-width: 560px;
            margin-bottom: 30px;
            color: rgba(255,255,255,.78);
            font-size: 16px;
            line-height: 1.7;
        }

        .hero .actions { display: flex; flex-wrap: wrap; gap: 10px; }

        /* Sections */
        .section { padding: 62px 0; }

        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 26px;
        }

        .section-header .title-group h2 {
            font-size: clamp(23px, 3vw, 30px);
            line-height: 1.2;
            letter-spacing: -.7px;
        }

        .section-header .title-group p {
            margin-top: 6px;
            color: var(--muted);
            font-size: 14px;
        }

        .section-header .view-all {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: var(--accent);
            font-size: 13px;
            font-weight: 700;
            white-space: nowrap;
        }

        .section-header .view-all:hover { color: var(--accent-dark); }
        .section-header .view-all:hover i { transform: translateX(3px); }

        /* Categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, minmax(0,1fr));
            gap: 14px;
        }

        .cat-card {
            min-height: 148px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 18px 12px;
            text-align: center;
            border: 1px solid #eaecf0;
            border-radius: var(--radius);
            background: #fff;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-4px);
            border-color: #d9d6ff;
            box-shadow: var(--shadow-hover);
        }

        .cat-card .icon-wrap {
            width: 52px;
            height: 52px;
            display: grid;
            place-items: center;
            margin-bottom: 11px;
            border-radius: 15px;
            background: var(--accent-light);
            color: var(--accent);
            font-size: 21px;
            transition: var(--transition);
        }

        .cat-card:hover .icon-wrap {
            color: #fff;
            background: var(--accent);
            transform: scale(1.04);
        }

        .cat-card h4 { font-size: 14px; font-weight: 700; }
        .cat-card .count { margin-top: 3px; color: var(--muted); font-size: 12px; }

        /* Products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, minmax(0,1fr));
            gap: 18px;
        }

        .product-card {
            min-width: 0;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            border: 1px solid #eaecf0;
            border-radius: var(--radius);
            background: #fff;
            box-shadow: var(--shadow);
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-5px);
            border-color: #d9d6ff;
            box-shadow: var(--shadow-hover);
        }

        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            aspect-ratio: 1 / 1;
            background: var(--surface);
        }

        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform .35s ease;
        }

        .product-card:hover .img-wrap img { transform: scale(1.045); }

        .product-card .badge {
            position: absolute;
            top: 11px;
            left: 11px;
            padding: 5px 9px;
            border-radius: 7px;
            background: var(--accent);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .product-card .badge.sale {
            background: var(--warning);
            color: #1d2939;
        }

        .product-card .wish-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border: 1px solid rgba(16,24,40,.08);
            border-radius: 10px;
            background: rgba(255,255,255,.94);
            color: var(--muted);
            font-size: 15px;
            transition: var(--transition);
        }

        .product-card .wish-btn:hover {
            color: var(--danger);
            background: #fff;
            transform: scale(1.05);
        }

        .product-card .body {
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
            padding: 15px 16px 10px;
        }

        .product-card .body .category-tag {
            color: var(--muted-light);
            font-size: 10px;
            font-weight: 800;
            letter-spacing: .7px;
            text-transform: uppercase;
        }

        .product-card .body h5 {
            min-height: 38px;
            font-size: 14px;
            font-weight: 700;
            line-height: 1.35;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .product-card .body .price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: 3px;
        }

        .product-card .body .price {
            color: var(--primary);
            font-size: 18px;
            font-weight: 800;
        }

        .product-card .body .old-price {
            color: var(--muted-light);
            font-size: 12px;
            text-decoration: line-through;
        }

        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            color: #f79009;
            font-size: 12px;
        }

        .product-card .body .rating span { color: var(--muted); }
        .product-card .footer { padding: 0 16px 16px; }

        .product-card .footer .add-btn {
            width: 100%;
            min-height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 7px;
            border-radius: 10px;
            background: var(--primary);
            color: #fff;
            font-size: 13px;
            font-weight: 700;
            transition: var(--transition);
        }

        .product-card .footer .add-btn:hover { background: var(--accent); }
        .product-card .footer .add-btn.added { background: var(--success); }

        /* Deal */
        .deal-wrap {
            display: flex;
            overflow: hidden;
            border: 1px solid #eaecf0;
            border-radius: 20px;
            background: #fff;
            box-shadow: var(--shadow);
        }

        .deal-wrap .deal-img {
            flex: 0 0 48%;
            min-height: 340px;
            background: var(--surface);
        }

        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-wrap .deal-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 42px 46px;
        }

        .deal-wrap .deal-content .tag {
            align-self: flex-start;
            margin-bottom: 12px;
            padding: 6px 10px;
            border-radius: 7px;
            background: #fff3d6;
            color: #b54708;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .deal-wrap .deal-content h3 {
            margin-bottom: 7px;
            font-size: 28px;
            letter-spacing: -.6px;
        }

        .deal-wrap .deal-content .desc {
            max-width: 510px;
            margin-bottom: 18px;
            color: var(--muted);
            font-size: 14px;
        }

        .deal-wrap .deal-content .price-big {
            color: var(--primary);
            font-size: 32px;
            font-weight: 800;
        }

        .deal-wrap .deal-content .price-big .old {
            margin-left: 9px;
            color: var(--muted-light);
            font-size: 18px;
            font-weight: 500;
            text-decoration: line-through;
        }

        .deal-wrap .deal-content .stock {
            margin: 5px 0 12px;
            color: var(--muted);
            font-size: 13px;
        }

        .deal-wrap .deal-content .stock strong { color: var(--danger); }

        .timer-grid { display: flex; flex-wrap: wrap; gap: 9px; margin: 14px 0 20px; }

        .timer-box {
            min-width: 65px;
            padding: 9px 11px;
            text-align: center;
            border: 1px solid #eaecf0;
            border-radius: 10px;
            background: var(--surface);
        }

        .timer-box .num { font-size: 23px; font-weight: 800; line-height: 1.2; }
        .timer-box .label {
            margin-top: 2px;
            color: var(--muted);
            font-size: 9px;
            font-weight: 700;
            letter-spacing: .6px;
            text-transform: uppercase;
        }

        /* Testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 5px 3px 15px;
            scroll-snap-type: x mandatory;
            scrollbar-width: thin;
        }

        .testimonials-scroll::-webkit-scrollbar { height: 5px; }
        .testimonials-scroll::-webkit-scrollbar-thumb { background: #d9d6ff; border-radius: 99px; }

        .testimonial-card {
            flex: 0 0 340px;
            padding: 22px;
            border: 1px solid #eaecf0;
            border-radius: var(--radius);
            background: #fff;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
        }

        .testimonial-card:hover { transform: translateY(-3px); box-shadow: var(--shadow-hover); }
        .testimonial-card .stars { margin-bottom: 10px; color: #f79009; font-size: 15px; letter-spacing: 2px; }

        .testimonial-card blockquote {
            min-height: 72px;
            margin-bottom: 15px;
            color: #344054;
            font-size: 14px;
            line-height: 1.65;
            font-style: italic;
        }

        .testimonial-card .author { display: flex; align-items: center; gap: 10px; }
        .testimonial-card .author .avatar { width: 42px; height: 42px; border-radius: 50%; object-fit: cover; }
        .testimonial-card .author .name { font-size: 13px; font-weight: 700; }
        .testimonial-card .author .role { color: var(--muted); font-size: 12px; }

        /* Newsletter */
        .newsletter-wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 28px;
            padding: 42px 46px;
            overflow: hidden;
            border-radius: 20px;
            color: #fff;
            background: linear-gradient(120deg, #171c2c, #35308a);
            box-shadow: var(--shadow-hover);
        }

        .newsletter-wrap .text h3 { margin-bottom: 5px; font-size: 25px; }
        .newsletter-wrap .text p { color: rgba(255,255,255,.72); font-size: 13px; }

        .newsletter-wrap form {
            flex: 1;
            max-width: 500px;
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .newsletter-wrap form input {
            flex: 1;
            min-width: 190px;
            height: 46px;
            padding: 0 16px;
            border: 1px solid rgba(255,255,255,.16);
            border-radius: 10px;
            outline: 0;
            background: rgba(255,255,255,.1);
            color: #fff;
            font-size: 13px;
        }

        .newsletter-wrap form input::placeholder { color: rgba(255,255,255,.52); }
        .newsletter-wrap form input:focus { border-color: rgba(255,255,255,.6); background: rgba(255,255,255,.14); }
        .newsletter-wrap form .btn { height: 46px; background: var(--accent); color: #fff; }
        .newsletter-wrap form .btn:hover { background: var(--accent-dark); }
        #newsletterMsg { width: 100%; margin-top: 5px; font-size: 12px; }

        /* Footer */
        footer {
            margin-top: 20px;
            padding: 48px 0 24px;
            border-top: 1px solid #eaecf0;
            background: #fff;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr repeat(3, 1fr);
            gap: 36px;
            margin-bottom: 30px;
        }

        .footer-grid .brand-col .brand { margin-bottom: 9px; font-size: 19px; }
        .footer-grid .brand-col p { max-width: 310px; color: var(--muted); font-size: 13px; line-height: 1.7; }

        .footer-grid .brand-col .socials { display: flex; gap: 7px; margin-top: 15px; }

        .footer-grid .brand-col .socials a {
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 10px;
            background: var(--surface);
            color: var(--muted);
            transition: var(--transition);
        }

        .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
        .footer-grid .col h5 { margin-bottom: 12px; font-size: 13px; }
        .footer-grid .col ul { display: grid; gap: 7px; list-style: none; }
        .footer-grid .col ul li a { color: var(--muted); font-size: 13px; }
        .footer-grid .col ul li a:hover { color: var(--accent); }

        .footer-bottom {
            padding-top: 18px;
            border-top: 1px solid #eaecf0;
            color: var(--muted-light);
            text-align: center;
            font-size: 11px;
        }

        /* Responsive */
        @media (max-width: 1180px) {
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; }
        }

        @media (max-width: 900px) {
            .hero { min-height: 420px; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { min-height: 280px; flex-basis: 280px; }
            .deal-wrap .deal-content { padding: 32px; }
            .newsletter-wrap { align-items: stretch; flex-direction: column; padding: 32px; }
            .newsletter-wrap form { max-width: none; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }

        @media (max-width: 680px) {
            .container { width: min(100% - 24px, var(--container)); }
            .header-inner { min-height: 64px; }
            .header-inner > div:last-child { min-width: 0; }
            .search-wrap { width: 42px; padding: 0 11px; }
            .search-wrap input { display: none; }
            .search-wrap button { width: 100%; padding: 0; }
            .header-actions .icon-btn { width: 38px; height: 38px; }
            .hero {
                width: calc(100% - 20px);
                min-height: 390px;
                margin-top: 10px;
                padding: 38px 0;
                border-radius: 18px;
            }
            .hero h1 { font-size: 34px; letter-spacing: -1px; }
            .hero p { font-size: 14px; }
            .hero .actions .btn { flex: 1; min-width: 140px; }
            .section { padding: 44px 0; }
            .section-header { align-items: flex-start; }
            .section-header .view-all { margin-top: 5px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 10px; }
            .products-grid { grid-template-columns: repeat(2, minmax(0,1fr)); gap: 10px; }
            .product-card .body { padding: 12px; }
            .product-card .footer { padding: 0 12px 12px; }
            .product-card .body h5 { font-size: 13px; }
            .product-card .body .price { font-size: 16px; }
            .deal-wrap .deal-img { min-height: 210px; flex-basis: 210px; }
            .deal-wrap .deal-content { padding: 24px 20px; }
            .deal-wrap .deal-content h3 { font-size: 23px; }
            .deal-wrap .deal-content .price-big { font-size: 27px; }
            .timer-box { min-width: 55px; }
            .testimonial-card { flex-basis: 285px; }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 25px 18px; }
            .footer-grid .brand-col { grid-column: 1 / -1; }
        }

        @media (max-width: 420px) {
            .brand { font-size: 18px; }
            .brand i { font-size: 20px; }
            .mobile-toggle { width: 38px; height: 38px; }
            .hero h1 { font-size: 29px; }
            .hero .actions { flex-direction: column; }
            .hero .actions .btn { width: 100%; }
            .categories-grid { gap: 8px; }
            .cat-card { min-height: 132px; padding: 14px 8px; }
            .cat-card .icon-wrap { width: 45px; height: 45px; font-size: 18px; }
            .cat-card h4 { font-size: 12px; }
            .cat-card .count { font-size: 11px; }
            .newsletter-wrap { padding: 25px 18px; }
            .newsletter-wrap form { flex-direction: column; }
            .newsletter-wrap form input,
            .newsletter-wrap form .btn { width: 100%; }
        }

        @media (prefers-reduced-motion: reduce) {
            *, *::before, *::after {
                scroll-behavior: auto !important;
                transition-duration: .01ms !important;
                animation-duration: .01ms !important;
                animation-iteration-count: 1 !important;
            }
        }

    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-store-alt"></i>
                    <span>Aravindh Sai Mummoju<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
                <h1>Discover Premium <br>Essentials</h1>
                <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Browse Categories</h2>
                        <p>Find exactly what you're looking for</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Trending Now</h2>
                        <p>What's hot — popular picks from our community</p>
                    </div>
                    <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">⚡ Flash Deal</h2>
                        <p>Grab it before it's gone — limited stock</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">What Our Customers Say</h2>
                        <p>Real reviews from real people</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Stay in the Loop</h3>
                        <p>Get exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-store-alt"></i>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </div>
                    <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and excellent support. The product exceeded my expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and smooth checkout. Will definitely shop again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Add to cart listeners
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            // animate
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            // subtle feedback
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // Close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart button click feedback
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year in footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        // Close mobile menu on resize to desktop
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
    </script>

</body>
</html>
