package com.carsnet.exceptions

class CarsnetException extends RuntimeException {

  CarsnetException() {
    super()
  }

  CarsnetException(String s) {
    super(s)
  }

  CarsnetException(String s, Throwable throwable) {
    super(s, throwable)
  }

  CarsnetException(Throwable throwable) {
    super(throwable)
  }
}
