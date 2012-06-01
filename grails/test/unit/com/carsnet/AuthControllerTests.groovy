package com.carsnet

import grails.test.mixin.*

@TestFor(AuthController)
class AuthControllerTests {

  void testLoginForm() {
    controller.loginForm()
    assert view, '/auth/loginForm'
  }

  void testRegistrationForm() {
    controller.registerForm()
    assert view, '/auth/registerForm'
  }

  void testRegister() {
    controller.register()

    assert response.redirectedUrl, '/auth/loginForm'
  }

  void testLogoutOk() {
    session.setAttribute('user', [login: 'test', password: 'password'])

    controller.logout()
    assert session.getAttribute('user') == null
    assert response.redirectedUrl, '/'
    //TODO uncomment
    //assert controller.redirectArgs['model'], [state: 'logout']
  }

  void testLogoutNotLoggedIn() {
    session.setAttribute('user', null)

    controller.logout()
    assert session.getAttribute('user') == null
    assert response.redirectedUrl, '/'
    //TODO uncomment
    //assert controller.redirectArgs['model'], null
  }

  void testLoginNoParams() {
    controller.login()

    assert view, '/auth/loginForm'
    assert model, [error: 'incorrect']
  }

  void testLoginIncorrect() {
    params.email = 'abbubua'
    params.password = 'parol'
    controller.login()

    assert view, '/auth/loginForm'
    assert model, [error: 'incorrect']
  }

  void testLoginOk() {
    params.email = 'test@host.com'
    params.password = 'password'
    controller.login()

    assert response.redirectedUrl, '/userHome/index'
    assert session.user, [email: 'test@host.com', password: 'password']
  }
}
