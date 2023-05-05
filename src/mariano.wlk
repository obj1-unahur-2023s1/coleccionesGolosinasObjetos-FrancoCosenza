import golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = golosinas.size()
	
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	
	method probarGolosinas(){
		golosinas.forEach{e=>e.mordisco()}
	}
	
	method hayGolosinaSinTACC() = golosinas.any{e=>e.esLibreDeGluten()}
	
	method preciosCuidados() = golosinas.all{e=>e.precio() <= 10}
	
	method golosinaDeSabor(unSabor) = golosinas.find{e=>e.gusto() == unSabor}
	
	method golosinasDeSabor(unSabor) = golosinas.filter{e=> e.gusto() == unSabor}
	
	method sabores() = golosinas.map{e=>e.gusto()}.asSet()
	
	method golosinaMasCara() = golosinas.max{e=>e.precio()}
	
	method pesoGolosinas() = golosinas.sum{e=> e.peso()}
	
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.asSet().difference(golosinas.asSet())
	
	method gustosFaltantes(gustosDeseados) = gustosDeseados.asSet().difference(self.sabores())
	
}