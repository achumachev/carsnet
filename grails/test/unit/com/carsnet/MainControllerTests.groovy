package com.carsnet

import grails.test.mixin.*

@TestFor(MainController)
class MainControllerTests {

  void testIndex() {
    controller.index()
    assert view, '/index'
  }

  void testIndexLoggedIn() {
    request.session.setAttribute('user', [email: 'test@host.com', password: 'password'])

    controller.index()
    assert response.redirectedUrl, '/userHome/index'
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
