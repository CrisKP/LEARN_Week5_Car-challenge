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

    if params.has_key?(:accelerate)
      @car.accelerate
      session[:car] = @car.to_yaml
    end

    if params.has_key?(:brake)
      if @car.speed < 7 && @car.speed >= 0
        @car.brake(@car.speed)
      else
        @car.brake
      end
      session[:car] = @car.to_yaml
    end

    if params.has_key?(:lights)
      @car.lights
      session[:car] = @car.to_yaml
    end

    if params[:e_brake] == "on"
      @car.set_e_brake
      session[:car] = @car.to_yaml
    end

    if params[:e_brake] == "off"
      @car.release_e_brake
      session[:car] = @car.to_yaml
    end

  end

end
