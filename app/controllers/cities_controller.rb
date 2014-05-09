class CitiesController < ApplicationController

  def index
@cities = City.all
  end

 def new
 end

  def create
    create_city = City.new
    create_city.city = params[:city]
    create_city.state = params[:state]
    create_city.save
    redirect_to '/'
  end

def show
  @city = City.find(params[:id])
end


  def update
    update_city = City.find(params[:id])
    update_city.city = params[:city]
    update_city.state = params[:state]
    update_city.save
    redirect_to '/'
  end

end