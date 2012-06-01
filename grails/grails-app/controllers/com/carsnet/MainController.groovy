package com.carsnet

class MainController {

  def index() {
    if (session.user) {
      redirect controller: 'userHome', action: 'index'
    }

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
