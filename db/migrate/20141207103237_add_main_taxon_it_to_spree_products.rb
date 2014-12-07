class AddMainTaxonItToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :main_taxon_id, :integer, index: true
  end
end
