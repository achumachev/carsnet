package com.carsnet

class MainController {

  def index() {
    render view: '/index'
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
