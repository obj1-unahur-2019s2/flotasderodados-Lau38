import rodados.*
import pedidos.*
class Dependencia{
	var property pedidos =[] 
	var flota =[] 
	var property empleados
method agregadoDePedidos(pedido){
	return pedidos.add(pedido)
}
method quitarPedidos(pedido){
	return pedidos.remove(pedido)	

}

method totalPasajeros(){
	return pedidos.sum{c=>c.cantpasajeros()}
}
method algunAutoPuedeSatifacer(pedido){
	 return flota.any{c => pedido.puedeSatisfacer(c)}
}
method pedidosNoSatisfechos(){
 return pedidos.filter({p =>  not self.algunAutoPuedeSatifacer(p)})
}

method esIcompatiblesParaTodos(color){
	return pedidos.all { p => p.esColorImcompatile(color)}
}


method agregarAFlota(rodado){
	flota.add(rodado)}
method quitarDeFlota(rodado){
	flota.remove(rodado)
	}
method pesoTotalFlota(){
	flota.sum({c=>c.peso()})
}
method estaBienEquipada(){
	flota.all ({c=>c > 3 and c.velocidad() > 100 }) 
}
method capacidadTotalEnColor(unColor){
	return self.rodadoEnColor(unColor).sum(c=>c.capacidad())
}
method colorDelRodadoMasRapido(){ flota.max({c=>c.esVelocidadMax()}).color()
	
}
method capacidadFaltante(){ flota.max() }
method esGrande()= empleados > 401 && flota.


