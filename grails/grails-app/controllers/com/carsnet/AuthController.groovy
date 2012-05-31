package com.carsnet

class AuthController {

    def loginForm() {
        render(view: '/auth/loginForm')
    }

    def registerForm() {
        render(view: '/auth/registerForm')
    }

    def login() {
        redirect(controller: 'userHome', action: 'index')
    }

    def register() {
        redirect(controller: 'auth', action: 'loginForm')
    }

    def logout() {
        redirect(uri: '/')
    }
}
