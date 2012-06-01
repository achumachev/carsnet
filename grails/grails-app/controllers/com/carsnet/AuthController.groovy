package com.carsnet

class AuthController {

  def loginForm() {
    render(view: '/auth/loginForm')
  }

  def registerForm() {
    render(view: '/auth/registerForm')
  }

  def login() {
    log.debug "Try to login with ${params.email}:${params.password}"

    if (params.email == 'test@host.com' && params.password == 'password') {
      redirect(controller: 'userHome', action: 'index')
      session.user = {
        email: params.email
        password: params.password
      }
    } else {
      render(view: '/auth/loginForm', model: [error: 'incorrect'])
    }
  }

  def register() {
    redirect(controller: 'auth', action: 'loginForm')
  }

  def logout() {
    def model = [:]

    if (session.user) {
      model['state'] = 'logout'
      session.removeAttribute('user')
    }

    redirect(uri: '/', model: model)
  }
}
