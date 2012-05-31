package com.carsnet.user

class ProfileController {

    def index() {
        render(view: '/profile/settings')
    }

    def save() {
        redirect(controller: 'profile', action: 'index')
    }
}
