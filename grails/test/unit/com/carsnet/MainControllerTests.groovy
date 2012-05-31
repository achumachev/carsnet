package com.carsnet

import grails.test.mixin.*

@TestFor(MainController)
class MainControllerTests {

  void testIndex() {
    controller.index()
    assert view, '/index'
  }

  void testStatus() {
    controller.status()
    assert view, '/status'
  }

  void testNopage() {
    controller.nopage()
    assert view, '/nopage'
  }

  void testError() {
    controller.error()
    assert view, '/error'
  }
}
