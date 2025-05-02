object tom {
    var energia = 50 
    method velocidadMax() = 5 + (energia / 10)
    method correr(metros) {
        energia = energia - (metros / 2)
    } 
    method comer(raton) {
        energia = energia + 12 + raton.peso()
    } 
    method energia() = energia
    method puedeCazar(distancia) = (distancia / 2) < energia 
    method cazarRaton(distancia, raton) {
      if (self.puedeCazar(distancia)){
        self.correr(distancia)
        self.comer(raton)
      }
    }
    method reset() {
        energia = 50
    }
}

object jerry {
  var edad = 2
  method peso() = edad * 20 
  method cumplirAños(cantidad){
  edad = edad + cantidad
  }  

}

object nibbles {
  const peso = 35
  method peso() = peso  
}

object rata {
  const peso = 60
  method peso() = peso 
}