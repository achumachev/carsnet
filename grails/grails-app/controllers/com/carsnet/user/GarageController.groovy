package com.carsnet.user

class GarageController {
  def carsService

  def index() {
    render(view: '/garage/garage')
  }

  def carForm() {
    def model = [
        selectedBrand: params.brand,
        allBrands: carsService.getAllBrands(),
        models: carsService.getModels(params.brand)
    ]

    render(view: '/garage/carForm', model: model)
  }

  def showCar() {
    render(view: '/garage/carOverview')
  }
}
