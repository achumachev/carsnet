package com.carsnet

class MainController {
  def carsService

  def index() {
    if (session.user) {
      redirect controller: 'userHome', action: 'index'
      return
    }

    render view: '/index', model: [featuredBrands: carsService.getFeaturedBrands()]
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
