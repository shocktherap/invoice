class ProductsController < ApplicationController

  def index
    @products = user.products
  end

  def new
    product
    product.build_picture
  end

  def create
    debugger
    if product.update_attributes(product_params)
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    product
  end

  def update
    if product.update_attributes(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def show
    product
  end

  def destroy
    product.destroy
    redirect_to products_path
  end

  protected

  def user
    @user = current_user
  end

  def product
    @product ||= if params[:id]
                  user.products.find params[:id]
                else
                  user.products.new
                end
  end

  def product_params
    params.require(:product).permit :code, :category_id, :price, :name, :description, :brand, picture_attributes: [:id, :file]
  end
end
