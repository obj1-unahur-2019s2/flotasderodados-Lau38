import dependencias.*
import rodados.*

class Pedidos{
 	const property rodado
 	const property distancia
 	const property tiempoMax
	const property cantpasajeros
	const property coloresImcompatibles
 
 
 method velocidadRequerida(){
  	return distancia / tiempoMax
  
  }
  method puedeSatisfacer(auto){	
  	return self.satisfaceVelocidad(auto) 
  	and self.satisfaceCapacidad(auto) 
  	and self.satisfaceColor(auto)
  }
  
  method satisfacerVelocidad(auto){
  	return auto.velocidadMaxima() >= self.velocidadRequerida() + 10
  }
  
  method satisfaceCapacidad(auto){
  	return auto.capacidad() >= cantpasajeros
  }
  method satisfaceColor(auto){
  	return not coloresImcompatibles.any { c => c == auto.color() }
  
  }
  method esColorImcompatible(color){
	return coloresImcompatibles.contains(color)
}
  
  method acelerar(){
  	tiempoMax-= 1
  }
  method relajar(){
  		
 	}
 
 }