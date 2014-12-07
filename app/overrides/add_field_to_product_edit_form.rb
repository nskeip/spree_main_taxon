#Deface::Override.new(virtual_path:  "backend/app/views/spree/admin/products/form",
Deface::Override.new(virtual_path:  "spree/admin/products/_form",
                     name:          "main_taxon_edit_field",
                     insert_before: "[data-hook='admin_product_form_meta']",
#                    insert_before: "#product_taxons_field",
                     text:          "<div class='twelve columns alpha omega'>редактируем здесь главный таксон</div>",
                     disabled: false)
