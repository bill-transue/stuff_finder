class CategoriesController < ApplicationController
  def show
    @category = Category.where(id: params[:id]).includes(:classifieds).first
  end
end
