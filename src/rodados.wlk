import dependencias.*

 // Primera parte //
 object blanco{}
 object rojo{}
 object azul{}
 
class Corsa {
 	var property color
 	method velocidad() = 1500
 	method peso()=1300
 	method capacidad()=4
 }
 
 class Kwid{
 	var property tanqueAdicional = false
 	method color() = "Azul"
 	method capacidad() { if(not tanqueAdicional){ return 4 } else{ return 3}}
 	method velocidadMaxima() { if (tanqueAdicional ) {return 120} else {return 110 }}
 	method peso() = if (tanqueAdicional ) { 1200+500} else {1200}
 }
 
 object interiorComodo {
	method capacidad()=5
	method peso()=700
}

object interiorPopular{
	method capacidad()=12
	method peso()=1000
}
object motorPulenta{
	method peso()=800
	method velocidad()=130
}
object motorBataton{
	method peso()=500
	method velocidad()=80
}

object traffic{
	var property interior 
	var property motor 
	method capacidad()= interior.capacidad()
	method velocidad()= motor.velocidad()
	method peso()= 4000+ interior.peso() + motor.peso()
	method color()= "blanco"
}


class Especial{
	var property capacidad
	var property velocidad
	var property peso
	var property color
// var al = new Especial(color="blanco",peso="",capacidad="",velocidad="")//
}

