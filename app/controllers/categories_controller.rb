class CategoriesController < ApplicationController

  def new
    category
  end

  def index
    @categories = Category.all
  end

  def create
    if category.update_attributes(category_params)
      redirect_to categories_path
    else
      render :new
    end
  end

  def destroy
    category.destroy
    redirect_to categories_path
  end

  def edit
    category
  end

  def update
    if category.update_attributes(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end

  protected

  def category
    @category ||= if params[:id]
                    Category.find params[:id]
                  else
                    Category.new
                  end
  end

  def category_params
    params.require(:category).permit :name
  end

end
