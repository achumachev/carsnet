package com.carsnet.user

import grails.test.mixin.*

@TestFor(GarageController)
class GarageControllerTests {

  void testGarage() {
    controller.index()

    assert view, '/garage/garage'
  }

  void testCarForm() {
    controller.carForm()

    assert view, '/garage/carForm'
  }

  void testShowCar() {
    controller.showCar()

    assert view, '/garage/carOverview'
  }

  void testSaveCar() {
    controller.saveCar()

    assert response.redirectedUrl, '/garage/showCar/1'
  }
}
