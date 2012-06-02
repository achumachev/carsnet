package com.carsnet.domain.car

class CarBrand {
  String name;
  String image;
  boolean featured

  static hasMany = [models: CarModel]

  static mapping = {
    version(false)
    table('car_brands')
  }

  static constraints = {
    name(blank: false)
    image(nullable: true)
  }

  boolean equals(o) {
    if (this.is(o)) {
      return true
    }

    if (getClass() != o?.class) {
      return false
    }

    CarBrand carBrand = (CarBrand) o

    return (name == carBrand.name)
  }

  int hashCode() {
    return name.hashCode()
  }
}
