class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(title:       params[:category][:title],
                             description: params[:category][:description],
                             images:      params[:category][:images])
    if @category.save
      redirect_to @category
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(categories_params)
      redirect_to categories_path, method: :post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end
  private

  def categories_params
    params.require(:category).permit(:title, :description, :images)
  end
end