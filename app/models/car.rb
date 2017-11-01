class Car
  def initialize(make, model_year, speed=0)
    @speed = speed
    @make = make
    @model_year = model_year
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

  def brake
    @speed -= 7
  end

end
