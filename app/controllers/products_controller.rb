class ProductsController < ApplicationController

  before_action :ensure_logged_in, except: [:show, :index]



  def index

    @products = Product.all

  end

  def new

    @product = Product.new


  end

  def edit

    load_product
    # @product = Product.find(params[:id])

  end

  def show

    # we find the instance of thhe product using params[:id] store it in a variable to be used in the view
    load_product
    # @product = Product.find(params[:id])
    @review = Review.new

  end

  def update

    load_product
    # @product = Product.find(params[:id])

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to product_url(@product.id)
    else
      redirect_to product_path
    end

  end

  def create

    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to product_url(@product.id)
    else
      render :new
    end

  end

  def destroy

    # @product = Product.find(params[:id])

    load_product

    @product.destroy

    redirect_to root_path

  end


  def load_product
  @product = Product.find(params[:id])
  end
end
