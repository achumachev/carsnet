package com.carsnet.user

import grails.test.mixin.*

@TestFor(ProfileController)
class ProfileControllerTests {

  void testShowProfile() {
    controller.index()

    assert view, '/profile/settings'
  }

  void testSaveSettings() {
    controller.save()

    assert response.redirectedUrl, '/profle/index'
  }
}
