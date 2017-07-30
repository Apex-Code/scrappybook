class ScrapsController < ApplicationController

  before_action :find_scrap, except: [:new, :create, :index]


  def index
    @scraps = Scrap.all.order("created_at DESC")
  end

  def new
    @scrap = Scrap.new
  end

  def create
    @scrap = Scrap.new(scrap_params)
    
    if @scrap.save 
      redirect_to @scrap, notice: "Sucessfully added this Scrap!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    @scrap.destroy
  end

private
  
  def scrap_params
    params.require(:scrap).permit(:title, :description)
  end

  def find_scrap
    @scrap = Scrap.find(params[:id])
  end

end
