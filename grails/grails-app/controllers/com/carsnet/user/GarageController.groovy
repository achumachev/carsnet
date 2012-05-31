package com.carsnet.user

class GarageController {

    def index() {
        render(view: '/garage/garage')
    }

    def carForm() {
        render(view: '/garage/carForm')
    }

    def saveCar() {
        redirect(controller: 'garage', action: 'showCar', id: '1')
    }

    def showCar() {
        render(view: '/garage/carOverview')
    }
}
