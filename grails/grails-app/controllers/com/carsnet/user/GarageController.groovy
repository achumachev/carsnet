package com.carsnet.user

import com.carsnet.domain.car.CarBrand
import grails.converters.JSON
import com.carsnet.domain.car.CarModel

class GarageController {

  def index() {
    render(view: '/garage/garage')
  }

  def carForm() {
    render(view: '/garage/carForm', model: [selectedMark: params.mark, brands: CarBrand.findAll()])
  }

  def saveCar() {
    redirect(controller: 'garage', action: 'showCar', id: '1')
  }

  def showCar() {
    render(view: '/garage/carOverview')
  }

  def getModels() {
    def brand = CarBrand.findByName(params.brand);

    render(
        CarModel.findAllByBrand(brand).collect { it ->
          it.name
        }
     as JSON)
  }
}
