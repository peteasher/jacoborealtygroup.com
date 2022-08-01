<div id="aios-mobile-header-wrapper-<?php echo $instance_id ?>" class="<?=$args['widget_id']?> aios-mobile-header-wrapper <?php echo "aios-mobile-header-wrapper-breakpoint-" . $breakpoint ?>">

	<div class="amh-fixed-header-nav amh-area-wrap">
		<div class="amh-header-buttons amh-4a amh-clearfix">

			<div class="amh-header-right-btn">
				<?php if ( !$logo_url_hide ) : ?>
					<div class="amh-logo">
						<a href="<?php echo site_url() ?>">
							<canvas style="background-image: url('<?php echo do_shortcode( $logo_url ) ?>')" width="45" height="34">

							</canvas>
						</a>
					</div>
				<?php endif ?>
			</div>

			<div class="amh-center">
				<!-- blank area for spacer -->
			</div>

			<div class="amh-navigation-trigger"><div class="ai-font-menu"></div></div>

		</div><!-- end of buttons -->

		<div class="amh-navigation amh-nav-1">
			<?php

			wp_nav_menu( array(
				'menu'=>$menu_id,
				'menu_id'=>('amh-menu' . $instance_id),
				'menu_class'=>'amh-menu',
				'walker'=>new \AiosInitialSetup\App\Widgets\MobileHeader\Models\Menu()
			));

		?>
		</div><!-- end of navigation -->

	</div><!-- end of fixed header and anv -->

	<!-- SCRIPTS -->

	<script>

		jQuery(window).scroll(function() {

			    if( jQuery(this).scrollTop()  >= 50 ) {

			      if (!jQuery('.amh-header-buttons').hasClass('amh-fixed-header')) {
			           jQuery('.amh-header-buttons').addClass('amh-fixed-header');
			       }

			    } else {
			      if (jQuery('.amh-header-buttons').hasClass('amh-fixed-header')) {

			        	jQuery('.amh-header-buttons').removeClass('amh-fixed-header');
			    }
			}
		});

		jQuery(document).ready( function() {

			var instanceId = 'aios-mobile-header-wrapper-<?php echo $instance_id ?>';
			var header = jQuery("#" + instanceId);
			var trigger = header.find(".amh-navigation-trigger");
			var nav = header.find(".amh-navigation");
			var position = '<?php echo $behavior == '' ? 'bottom' : $behavior ?>';

			nav.aiosMobileHeaderNavigation({
				trigger: trigger,
				attachment: header,
				position: position
			});

			header.find(".amh-fixed-header-nav").aiosMobileHeader();

		});



	</script>

	<!-- END SCRIPTS -->


</div><!-- end of ampl wrapper -->
