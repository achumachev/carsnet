package com.carsnet.user

import grails.converters.JSON

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

  def saveCar() {
    redirect(controller: 'garage', action: 'showCar', id: '1')
  }

  def showCar() {
    render(view: '/garage/carOverview')
  }

  def getModels() {
    render(
        carsService.getModels(params.brand).collect { it ->
          it.name
        } as JSON
    )
  }

  def getModelYears() {
    render(
        carsService.getModelYears(params.brand, params.model).collect { it ->
          it.year
        } as JSON
    )
  }
}
