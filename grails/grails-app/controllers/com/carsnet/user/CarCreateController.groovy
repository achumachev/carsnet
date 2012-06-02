package com.carsnet.user

import grails.converters.JSON

class CarCreateController {
  static allowedMethods = [getModels: 'POST', getModelYears: 'POST']

  def carsService

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

  def saveCar() {
    redirect(controller: 'garage', action: 'showCar', id: '1')
  }
}
