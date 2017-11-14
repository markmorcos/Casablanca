class ServicesController < ApplicationController
  def index
    @services = Service.all
    @categories = ServiceCategory.all
  end
  
  def show
    @service = Service.find(params[:id])
  end
end
