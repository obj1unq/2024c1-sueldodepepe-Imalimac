import pepe.*


object gerente{
	
	method neto(){
		return 15000
	}
	
}

object cadete {
	
	method neto(){
		return 20000
	}
}

object vendedor {
	var aumentoPorVentas = false
	
	method neto(){
		return 
			if (aumentoPorVentas){16000*1.25}
			else {16000}
	}
	
	method activarAumentoPorMuchasVentas(){
		aumentoPorVentas = true
	}
	method desactivarAumentoPorMuchasVentas(){
		aumentoPorVentas = false
	}
}

object medioTiempo {
	var categoriaBase = cadete
	
	method neto(){
		return categoriaBase.neto()/2
	}
	
	method categoriaBase(categoria){
		categoriaBase = categoria
	}
}