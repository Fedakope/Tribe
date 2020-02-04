class IndiensController < ApplicationController
  def index
    @indiens = Indiens.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
