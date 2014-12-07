Spree::Product.class_eval do
  belongs_to :main_taxon, class_name: "Spree::Taxon", foreign_key: "main_taxon_id"
end
