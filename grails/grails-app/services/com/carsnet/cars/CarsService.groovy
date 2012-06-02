package com.carsnet.cars

import com.carsnet.domain.car.CarBrand
import com.carsnet.domain.car.CarModel
import com.carsnet.domain.car.CarYear

class CarsService {

  def getFeaturedBrands() {
    CarBrand.findAllByFeatured(true)
  }

  def getAllBrands() {
    CarBrand.list([sort: 'name', order: 'asc'])
  }

  def getModels(brand) {
    CarModel.findAll("FROM CarModel model WHERE model.brand.name = ?", [brand])
  }

  def getModelYears(brand, model) {
    CarYear.findAll("FROM CarYear year WHERE year.model.name = ? AND year.model.brand.name = ?", [model, brand])
  }
}
