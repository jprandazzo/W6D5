class CatsController < ApplicationController

  def index
    @cats = Cat.all.order(:id)
    render :index
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages, status: :unprocessable_entity
    end
  end

  def new
    render :new
  end

  def edit
    
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def update
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :color, :sex, :birth_date, :description)
  end

end
