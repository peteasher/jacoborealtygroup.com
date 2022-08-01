<?php if ( !is_home() && !is_page_template( 'template-fullwidth.php' ) && !is_page_template( 'template-homepage.php' ) ) : ?>
<div class="clearfix"></div>
</div><!-- end of #inner-page-wrapper .inner -->
</div><!-- end of #inner-page-wrapper -->
<?php endif ?>
</main>

<footer class="footer">
	<section class="hp-contact">
		<div class="region-contact-container">
			<div class="site-title-primary">
				<h4>05</h4>
				<h3>Send Us A</h3>
				<h2>Message</h2>
			</div>
			<div class="contact-form">
				<?php echo do_shortcode('[contact-form-7 html_class="use-floating-validation-tip" id="35" title="hp template form 3"]')?>
			</div>
		</div>
		<span class="bg-pink"></span>
	</section>
	<div class="footer-container">

		<?php wp_nav_menu( array( 'sort_column' => 'menu_order', 'menu_class' => 'footernav', 'theme_location' => 'primary-menu','depth'=>1 ) ); ?>
		<div class="copyright">
			&copy;
			<?php echo date('Y') ?> Agent Image.
			<!-- aios shortcode here -->
		</div>
	</div>
</footer>

<?php do_action('aios_neighborhoods_footer')?>
<?php do_action('aios_landing_page_footer')?>

</div><!-- end of #main-wrapper -->


<?php wp_footer(); ?>
</body>

</html>