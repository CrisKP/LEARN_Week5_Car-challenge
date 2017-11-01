class Car
  def initialize(make, model_year, speed=0, lights=false)
    @speed = speed
    @make = make
    @model_year = model_year
    @lights = lights
    @e_brake = "on"
  end

  def make
    @make
  end

  def model_year
    @model_year
  end

  def speed
    @speed
  end

  def accelerate
    if @e_brake == "off"
      @speed += 10
    end
  end

  def brake(num=7)
    @speed -= num
  end

  def lights
    @lights = !@lights
  end

  def show_lights
    if @lights == false
      @result = "off"
    else
      @result = "on"
    end
    @result
  end

  def set_e_brake
    @e_brake = "on"
  end

  def release_e_brake
    @e_brake = "off"
  end

  def e_brake
    @e_brake
  end



end
