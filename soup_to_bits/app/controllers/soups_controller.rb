class SoupsController < ApplicationController
  before_action :fetch_soup , only: [:show,:edit,:update,:toggle_featured]


  def show
    respond_to do |format|
      format.html
      format.json {render json: @soup }
    end
  end


  def index
    @soups = Soup.all


    respond_to do |format|
      format.html
      format.json { render json: @soups }
    end
  end

  def toggle_featured
    @soup.toggle!(:featured)
    flash[:notice] = "Successfully changed"
    redirect_to @soup
  end

  private
  def fetch_soup 
     @soup = Soup.find(params[:id])
  end

end
