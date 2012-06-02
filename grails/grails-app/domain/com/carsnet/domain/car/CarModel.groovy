package com.carsnet.domain.car

class CarModel {
  String name;

  static hasMany = [yearModels: CarYear]
  static belongsTo = [brand: CarBrand]

  static mapping = {
    version(false)
    table('car_models')
  }

  static constraints = {
    name(blank: false)
    brand(nullable: false)
  }
}
