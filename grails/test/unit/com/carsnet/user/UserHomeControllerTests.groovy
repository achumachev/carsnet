package com.carsnet.user

import grails.test.mixin.*

@TestFor(UserHomeController)
class UserHomeControllerTests {

  void testUserHome() {
    controller.index()
    assert view, '/user/home'
  }
}
