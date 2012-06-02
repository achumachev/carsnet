package com.carsnet.domain.car

class CarYear {
  int year

  static belongsTo = [model: CarModel]

  static mapping = {
    table('car_model_years')
    version(false)
  }

  static constraints = {
    year(range: 1900..2100)
    model(nullable: false)
  }
}
