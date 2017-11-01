class Car
  def initialize(make, model_year, speed=0, lights=false)
    @speed = speed
    @make = make
    @model_year = model_year
    @lights = lights
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
    @speed += 10
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

end
