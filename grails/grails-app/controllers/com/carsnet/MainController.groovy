package com.carsnet

import com.carsnet.domain.car.CarBrand

class MainController {

  def index() {
    if (session.user) {
      redirect controller: 'userHome', action: 'index'
    }

    render view: '/index', model: [featuredBrands: CarBrand.findAllByFeatured(true)]
  }

  def status() {
    render view: '/status'
  }

  def error() {
    render view: '/error'
  }

  def nopage() {
    render view: '/nopage'
  }
}
