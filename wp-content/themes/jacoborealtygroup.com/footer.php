<?php if ( !is_home() && !is_page_template( 'template-fullwidth.php' ) && !is_page_template( 'template-homepage.php' ) ) : ?>
<div class="clearfix"></div>
</div><!-- end of #inner-page-wrapper .inner -->
</div><!-- end of #inner-page-wrapper -->
<?php endif ?>
</main>

<footer class="footer">
	<div class="site-bg site-rgba">
		<canvas class="lazyload" width="1600px" height="857px"
		data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/footer-bg.jpg"></canvas>
	</div>
  <div class="footer-region-container">
	<div class="footer-top">
		<!-- Footer Contact -->
		<div class="footer-group">
			<div class="footer-logo">
				<img alt="logo" class="img-responsive"
					src="<?php echo get_stylesheet_directory_uri() ?>/images/footer-logo-1.png" width="222"
					height="165" />
				<img alt="logo" class="img-responsive"
					src="<?php echo get_stylesheet_directory_uri() ?>/images/footer-logo-2.png" width="332"
					height="163" />
			</div>
		</div>
		<div class="footer-contact">
		<div class="footer-contact-item">
				<span class="ai-font-phone"></span>
				<?php echo do_shortcode('[ai_phone href="+1.(760) 632-8900"] (760) 632-8900[/ai_phone]')?>
			</div>

		<div class="footer-contact-item">
				<span class="ai-font-envelope-f"></span>
				<?php echo do_shortcode('[mail_to email="info@JacoboRealty.com"] info@JacoboRealty.com[/mail_to]')?>
			</div>
		<div class="footer-contact-item">
				<span class="ai-font-location-c"></span>
				<span class="location">5973 Avenida Encinas #110 Carlsbad, CA 92008</span>
			</div>
	</div>
	<div class="footer-smi">
		<div class="footer-icon">
		 <a href="[ai_client_facebook]" target="_blank" aria-label="facebook"> <span class="ai-font-facebook"></span> </a>
		 <a href="[ai_client_instagram]" target="_blank" aria-label="instagram"> <span class="ai-font-instagram"></span> </a>
		 <a href="[ai_client_zillow]" target="_blank" aria-label="zillow"> <span class="ai-font-zillow"></span> </a>
		</div>
	</div>
	<div class="footer-nav">
		<?php wp_nav_menu( array( 'sort_column' => 'menu_order', 'menu_class' => 'footernav', 'theme_location' => 'primary-menu','depth'=>1 ) ); ?>
	</div>
	<!-- Footer Bottom -->
	<p class="footer-outro">Jacobo Realty Group is committed to providing an accessible website. If you have difficulty accessing content, have difficulty viewing a file on the website, or notice any accessibility problems, please contact us at <?php echo do_shortcode('[ai_phone href="+1.760.632.8900"] 760.632.8900[/ai_phone]')?> to specify the nature of the accessibility issue and any assistive technology you use. We strive to provide the content you need in the format you require.
	</p>

	<p class="copyright">Copyright ©
		<?php echo do_shortcode('[currentYear]')?> <span class="sitename">Jacob Reality Group.</span> All rights
		reserved. <a class="sitemap" href="<?php echo do_shortcode('[blogurl]')?>/sitemap">Sitemap</a>|
		<?php echo do_shortcode('[agentimage_credits credits="Real Estate Website Design by <a target="_blank" href="https://www.agentimage.com" style="text-decoration:underline;font-weight:bold">Agent Image</a>"]'); ?>
	</p>
	<div class="mls">
		<em class="ai-font-eho" title="MLS"></em>
		<em class="ai-font-realtor-mls" title="MLS"></em>
	</div>
	</div>
</footer>



<?php do_action('aios_neighborhoods_footer')?>
<?php do_action('aios_landing_page_footer')?>

</div><!-- end of #main-wrapper -->


<?php wp_footer(); ?>
</body>

</html>