Spree::ProductsController.class_eval do
  def show
    return unless @product

    @variants = @product.variants_including_master.active(current_currency).includes([:option_values, :images])
    @product_properties = @product.product_properties.includes(:property)

    @taxon = if @product.main_taxon
      @product.main_taxon
    else
      Spree::Taxon.find(params[:taxon_id]) if params[:taxon_id]      
    end
  end
end