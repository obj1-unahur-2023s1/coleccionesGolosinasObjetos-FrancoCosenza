import mariano.* 

object bombon {
	var peso = 15
	method precio() = 5
	method gusto() = "frutilla"
	method esLibreDeGluten() = true
	method mordisco(){
		peso = (peso * 0.8) - 1
	}
	
}

object alfajor {
	var peso = 300
	method precio() = 12
	method gusto() = "chocolate"
	method esLibreDeGluten() = false
	method mordisco(){
		peso *= 0.8
	}

}
	
object caramelo {
	var peso = 5
	method precio() = 1
	method gusto() = "frutilla"
	method esLibreDeGluten() = true
	method mordisco(){
		peso = 0.max(peso - 1)
	}
}

object chupetin{
	var peso = 7
	method precio() = 2
	method gusto() = "naranja"
	method esLibreDeGluten() = true
	method mordisco(){
		peso = 2.max(peso * 0.9)
	}	
}

object oblea{
	var peso = 250
	method precio() = 5
	method gusto() = "vainilla"
	method esLibreDeGluten() = false
	method mordisco(){
		if(peso > 70){
			peso *= 0.5
		}
		else{
			peso *= 0.75
		}
	}	
}

object chocolatin{
	var peso = 0
	method peso(unPeso){
		peso = unPeso
	}
	method precio() = 0.50 * peso
	method gusto() = "chocolate"
	method esLibreDeGluten() = false
	method mordisco(){
		peso = 0.max(peso - 2)
	}	
}

object golosinaBaniada{
	var property golosinaBase
	var precioDeBanio = 4
	method peso() = golosinaBase.peso() + precioDeBanio
	method precio() = golosinaBase.precio() + 2
	method gusto() = golosinaBase.gusto()
	method esLibreDeGluten() = golosinaBase.esLibreDeGluten()
	method mordisco(){
		golosinaBase.mordisco()
		precioDeBanio = 0.max(precioDeBanio - 2)
	}	
}

object tuttifrutti{
	var property peso = 5
	var property esLibreDeGluten = true
	const gustos = ["frutilla", "chocolate", "naranja"]
	var cantMordiscos = 0
	method precio() = if(esLibreDeGluten) 7 else 10
	method mordisco(){
		cantMordiscos ++
	}
	method gusto() = gustos.get(cantMordiscos%gustos.size())	
}
