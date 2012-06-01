package com.carsnet.user

import grails.test.mixin.*

@TestFor(GarageController)
class GarageControllerTests {

  void testGarage() {
    controller.index()

    assert view, '/garage/garage'
  }

  void testCarFormWithValue() {
    params.mark = 'toyota'
    controller.carForm()

    assert view, '/garage/carForm'
    assert model['selectedMark'], 'toyota'
  }

  void testCarFormEmpty() {
    controller.carForm()

    assert view, '/garage/carForm'
    assert model['selectedMark'] == null
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
