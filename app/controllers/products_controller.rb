class ProductsController < ApplicationController
  def index
    @products = if params[:category].present?
                  Product.where(category: params[:category])
                else
                  Product.all
                end
  end

  def show
    @product = Product.find(params[:id])
    if request.headers["Turbo-Frame"].present?
      render partial: "products/product_detail",
            locals: { product: @product },
            formats: [:html]
    else
      render :show
    end
  end
end
