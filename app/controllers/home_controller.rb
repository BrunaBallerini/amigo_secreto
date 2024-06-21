class HomeController < ApplicationController
  def index
  end

  def about
  end

  def cars
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def delete
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  def new
  end

  def create
    Car.create(
      name: params[:name],
      model: params[:model],
      year: params[:year],
    )
    redirect_to cars_path
  end

  def change
    @car = Car.find(params[:id])
    @car.name = params[:name]
    @car.model = params[:model]
    @car.year = params[:year]
    @car.save
    redirect_to cars_path
  end

end
