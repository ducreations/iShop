class ShoesController < ApplicationController
  before_action :authenticate_user!

  def index
    @shoes = Shoe.all
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(params.require(:shoe).permit(:name, :qty, :price))
    if @shoe.save
      redirect_to shoes_path, notice: "Shoes successfully added"
    else
      render :new
    end
  end
end
