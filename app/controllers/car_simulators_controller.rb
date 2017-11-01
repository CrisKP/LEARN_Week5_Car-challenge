class CarSimulatorsController < ApplicationController

  def create
    if params.has_key?(:make) && params.has_key?(:model_year)
      cookies[:make] = params[:make]
      cookies[:model_year] = params[:model_year]
      @car = Car.new(cookies[:make], cookies[:model_year])
      session[:car] = @car.to_yaml
      redirect_to '/status'
    end
  end


  def show
    @car = YAML.load(session[:car])
    @car.speed

    if params.has_key?(:accelerate)
      @car.accelerate
      session[:car] = @car.to_yaml
    end

    if params.has_key?(:brake)
      @car.brake unless @car.speed == 0
      session[:car] = @car.to_yaml
    end




  end



end
