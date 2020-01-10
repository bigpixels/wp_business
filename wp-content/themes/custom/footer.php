<footer class="footer">
    <div class="container footer_border-t_pad max-w-991_pos-relative">
        <?php
            wp_nav_menu( [
                'menu'            => 'main', 
                'container'       => 'nav', 
                'container_class' => 'navigation__footer', 
                'menu_class'      => 'navigation__list', 
            ] );
        ?>
        <!-- <div class="navigation__footer margin_mb-30 wow fadeInUp">
            <ul class="navigation__list">
                <li>
                    <a href="#" class="navigation__link">
                        home
                    </a>
                </li>
                <li>
                    <a href="#" class="navigation__link">
                        service
                    </a>
                </li>
                <li>
                    <a href="#" class="navigation__link">
                        about us
                    </a>
                </li>
                <li>
                    <a href="#" class="navigation__link">
                        pricing table
                    </a>
                </li>
                <li>
                    <a href="#" class="navigation__link">
                        how it work
                    </a>
                </li>
                <li>
                    <a href="#" class="navigation__link">
                        happy clients
                    </a>
                </li>
                <li>
                    <a href="#" class="navigation__link">
                        contact us
                    </a>
                </li>
            </ul>
        </div> -->
        <div class="footer__links wow flipInX" data-wow-delay='0.4s'>
            <a class="footer__phone-number" href="tel:<?php echo get_theme_mod('phone-1') ?>">
                <i class="footer__phone-icon fas fa-phone fa-flip-horizontal"></i>
                <?php echo get_theme_mod('phone-1') ?>
            </a>
            <a class="footer__phone-number" href="tel:<?php echo get_theme_mod('phone-2') ?>">
                <i class="footer__phone-icon fas fa-phone fa-flip-horizontal"></i>
                <?php echo get_theme_mod('phone-2') ?>
            </a>
            <a class="footer__phone-number" href="tel:<?php echo get_theme_mod('phone-3') ?>">
                <i class="footer__phone-icon fas fa-phone fa-flip-horizontal"></i>
                <?php echo get_theme_mod('phone-3') ?>
            </a>
            <a class="footer__phone-number" href="tel:<?php echo get_theme_mod('phone-4') ?>">
                <i class="footer__phone-icon fas fa-phone fa-flip-horizontal"></i>
                <?php echo get_theme_mod('phone-4') ?>
            </a>
            <div class="footer__social wow fadeInUp" data-wow-delay='0.9s'>
                <a href="#" class="footer__social-link fab fa-twitter"></a>
                <a href="#" class="footer__social-link fab fa-facebook-f"></a>
                <a href="#" class="footer__social-link fab fa-google-plus-g"></a>
                <a href="#" class="footer__social-link fab fa-linkedin-in"></a>
            </div>
        </div>
    </div>
    <div class="copyright">
        <p class="wow flipInX">All contents © copyright 2014 Business Theme. All rights reserved Designed by : akhilwebfolio</p>
    </div>
</footer>

<script src="https://kit.fontawesome.com/8f9f683e9f.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="scripts/wow.min.js"></script>
<script src="scripts/script.js"></script>
    
<div class="white-popup mfp-hide zoom-anim-dialog" id="pop">
    <p class="section__title section__title_small">Заполните Вашу контактную информацию</p>
    <form class="form__body callback">
        <input type="hidden" name="project_name" value="Заявка">
        <input type="hidden" name="admin_email" value="mobios.dev@gmail.com">
        <input type="hidden" name="form_subject" value="Новая заявка с сайта">

        <input class="form__input" name="Имя" required id="name" type="text" placeholder="Ваше имя *">
        <input class="form__input" name="Почта" required type="email" placeholder="Email *">
        <input class="form__input" name="Телефон" required type="tel" placeholder="Ваш номер телефона *">

        <div class="form__btn-wrap">
            <button class="form__btn banner__btn banner__btn_small" type="submit">Записаться</button>
        </div>
    </form>
</div>

<div id="return-to-top"></div>

	<?php wp_footer(); ?> 
</body>
</html>