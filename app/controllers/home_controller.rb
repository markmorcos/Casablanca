class HomeController < ApplicationController
  def index
    @sliders = Slider.order("id")
    @projects = Project.all
    @clients = Client.all
  end
end
