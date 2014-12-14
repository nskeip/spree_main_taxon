inserting_field =
"""
<div class='twelve columns alpha omega'>
    <label>Главный таксон:</label>
    <%= collection_select(:product, :main_taxon_id, Spree::Taxon.order(:name), :id, :name, {include_blank: true}) %>
</div>
"""
Deface::Override.new(virtual_path:  "spree/admin/products/_form",
                     name:          "main_taxon_edit_field",
                     insert_before: "[data-hook='admin_product_form_meta']",
                     erb:      inserting_field,
                     disabled: false)
