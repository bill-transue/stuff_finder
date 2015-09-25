class ClassifiedsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @classified = Classified.new
  end

  def create
    @classified = current_user.classifieds.build safe_create_params
    @classified.category = Category.find_or_create_by_name(params[:category])

    if @classified.save
      flash[:notice] = "Classified Created Successfully"
      redirect_to classified_path(@classified)
    else
      flash.now[:alert] = @classified.errors.first
      render 'new'
    end
  end

  def show
    @classified = Classified.find params[:id]
  end

  private

  def safe_create_params
    params.require(:classified).permit(:title, :description, :price, :image)
  end
end
