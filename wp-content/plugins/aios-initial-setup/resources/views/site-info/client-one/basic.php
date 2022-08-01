<!-- BEGIN: Row Box -->
<div class="wpui-row wpui-row-box">
	<div class="wpui-col-md-3">
		<p><span class="wpui-settings-title">Name</span></p>
	</div>
	<div class="wpui-col-md-9">
		<div class="form-group">
			<input type="text" name="aiis_ci[name]" id="aiis_ci[name]"
			value="<?= $options['name'] ?? '' ?>"
			placeholder="Agent Image">
		</div>
	</div>
</div>
<!-- END: Row Box -->
<!-- BEGIN: Row Box -->
<div class="wpui-row wpui-row-box">
	<div class="wpui-col-md-3">
		<p><span class="wpui-settings-title">DRE License</span></p>
	</div>
	<div class="wpui-col-md-9">
		<div class="form-group">
			<input type="text" name="aiis_ci[license]" id="aiis_ci[license]"
			value="<?= $options['license'] ?? '' ?>"
			placeholder="Agent Image">
		</div>
	</div>
</div>
<!-- END: Row Box -->
<!-- BEGIN: Row Box -->
<div class="wpui-row wpui-row-box">
	<div class="wpui-col-md-3">
		<p><span class="wpui-settings-title">Address</span></p>
	</div>
	<div class="wpui-col-md-9">
		<div class="form-group">
			<input type="text" name="aiis_ci[address]" id="aiis_ci[address]"
			value="<?= $options['address'] ?? '' ?>"
			placeholder="1700 E. Walnut Avenue, Suite 400, El Segundo, CA 90245">
		</div>
	</div>
</div>
<!-- END: Row Box -->
<!-- BEGIN: Row Box -->
<div class="wpui-row wpui-row-box">
	<div class="wpui-col-md-3">
		<p><span class="wpui-settings-title">Email Address</span></p>
	</div>
	<div class="wpui-col-md-9">
		<div class="form-group">
			<input type="text" name="aiis_ci[email]" id="aiis_ci[email]"
			value="<?= $options['email'] ?? '' ?>"
			placeholder="info@agentimage.com">
		</div>
	</div>
</div>
<!-- END: Row Box -->
<!-- BEGIN: Row Box -->
<div class="wpui-row wpui-row-box">
	<div class="wpui-col-md-3">
		<p><span class="wpui-settings-title">Phone Number</span></p>
	</div>
	<div class="wpui-col-md-9">
		<div class="form-group form-phone">
			<div class="wpui-flex">
				<div class="wpui-col-md">
					<?=constant_select_element('aiis_ci[country-code-phone]', 'country-code-phone', $options['country-code-phone'] ?? '')?>
				</div>
				<div class="wpui-col-md flex-grow">
					<div class="form-checkbox-group">
						<div class="form-checkbox">
							<label>
								<input type="checkbox" name="aiis_ci[country-code-phone-show]" id="aiis_ci[country-code-phone-show]" class="wpuikit-country-code-show" value="yes" <?=checked($options['country-code-phone-show'] ?? '', 'yes', false)?>> Show Country Code
							</label>
						</div>
					</div>
				</div>
			</div>

			<input type="text" name="aiis_ci[phone]" id="aiis_ci[phone]" class="wpuikit-phone-number mt-3"
				value="<?php echo isset($options['phone']) ? $options['phone'] : '' ?>"
				placeholder="800.979.5799">
		</div>
	</div>
</div>
<!-- END: Row Box -->
<!-- BEGIN: Row Box -->
<div class="wpui-row wpui-row-box">
	<div class="wpui-col-md-3">
		<p><span class="wpui-settings-title">Cell Number</span></p>
	</div>
	<div class="wpui-col-md-9">
		<div class="form-group form-phone">
			<div class="wpui-flex">
				<div class="wpui-col-md">
					<?=constant_select_element('aiis_ci[country-code-cell]', 'country-code-cell', $options['country-code-cell'] ?? '')?>
				</div>
				<div class="wpui-col-md flex-grow">
					<div class="form-checkbox-group">
						<div class="form-checkbox">
							<label>
								<input type="checkbox" name="aiis_ci[country-code-cell-show]" id="aiis_ci[country-code-cell-show]" class="wpuikit-country-code-show" value="yes" <?=checked($options['country-code-cell-show'] ?? '', 'yes', false )?>> Show Country Code
							</label>
						</div>
					</div>
				</div>
			</div>

			<input type="text" name="aiis_ci[cell]" id="aiis_ci[cell]" class="wpuikit-phone-number mt-3"
				value="<?php echo isset($options['cell']) ? $options['cell'] : '' ?>"
				placeholder="800.979.5799">
		</div>

	</div>
</div>
<!-- END: Row Box -->
<!-- BEGIN: Row Box -->
<div class="wpui-row wpui-row-box">
	<div class="wpui-col-md-3">
		<p><span class="wpui-settings-title">Fax Number</span></p>
	</div>
	<div class="wpui-col-md-9">
		<div class="form-group form-phone">
			<div class="wpui-flex">
				<div class="wpui-col-md">
					<?=constant_select_element('aiis_ci[country-code-fax]', 'country-code-fax', $options['country-code-fax'] ?? '')?>
				</div>
				<div class="wpui-col-md flex-grow">
					<div class="form-checkbox-group">
						<div class="form-checkbox">
							<label>
								<input type="checkbox" name="aiis_ci[country-code-fax-show]" id="aiis_ci[country-code-fax-show]" class="wpuikit-country-code-show" value="yes" <?=checked($options['country-code-fax-show'] ?? '', 'yes', false)?>> Show Country Code
							</label>
						</div>
					</div>
				</div>
			</div>

			<input type="text" name="aiis_ci[fax]" id="aiis_ci[fax]" class="wpuikit-phone-number mt-3"
				value="<?php echo isset($options['fax']) ? $options[ 'fax' ] : '' ?>"
				placeholder="800.979.5799">
		</div>
	</div>
</div>
<!-- END: Row Box -->

<div class="wpui-row wpui-row-submit">
	<div class="wpui-col-md-12">
		<div class="form-group">
			<input type="submit" class="save-option-ajax wpui-secondary-button text-uppercase" value="Save Changes">
		</div>
	</div>
</div>
