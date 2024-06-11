class HomeController < ApplicationController
  def index
  end

  def about
  end

  def cars
    @cars = Cars.all
  end

  def show
    @car = Cars.find(params[:id])
  end
end
