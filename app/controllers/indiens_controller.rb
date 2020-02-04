class IndiensController < ApplicationController
  def index
    #@indiens = Indien.all
    if params[:filters].blank?
      @indiens = Indien.all
  else 
    @indiens = Indien.all.select do |indien|
      indien[:name] == params[:filters]  || indien[:surname] == params[:filters] || indien[:ancestor] == params[:filters]
    end
  end 
  end 
  end

  def show
    @indien = Indien.find(params[:id])
  end

  def new
    @indien = Indien.new
  end

  def create
    @indien = Indien.new(indien_params)
    @indien.save

    redirect_to indien_path(@indien)
  end

  def edit
  end


  private
  # Useless les params car on permet tout
  def indien_params
    params.require(:indien).permit(:name, :surname, :birthdate, :ancestor, :longitude, :latitude)
  end



