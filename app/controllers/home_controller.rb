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
    flash[:sucess] = "Carro apagado com sucesso."
    redirect_to cars_path
  end

  def new
  end

  def create
    if params[:name].blank?
      flash[:error] = "O nome do carro não pode estar em branco."
      return redirect_to "/cars"
    end

    Car.create(
      name: params[:name],
      model: params[:model],
      year: params[:year],
    )
    flash[:sucess] = "Carro salvo com sucesso."
    redirect_to cars_path
  end

  def change
    @car = Car.find(params[:id])
    @car.name = params[:name]
    @car.model = params[:model]
    @car.year = params[:year]
    @car.save
    flash[:sucess] = "Carro alterado com sucesso."
    redirect_to cars_path
  end

end
