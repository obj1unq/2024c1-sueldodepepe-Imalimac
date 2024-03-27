import pepe.*
import categorias.*

//BONOS POR RESULTADO:

object porcentaje{
	
	method monto(empleado){
		return 
		empleado.neto()*0.1
	}
	
}

object montoFijo {
	
	method monto(empleado){
		return 800
	}
}

object nulo {
	
	method monto(empleado){
		return 0
	}
}

//BONOS POR PRESENTISMO:

object normal{
	
	method monto(empleado){
		return 
			if (empleado.faltas()==0) {2000}
			else if (empleado.faltas()==1){1000}
			else 0
	}	
}

object ajuste{
	
	method monto(empleado){
		return 
			if (empleado.faltas()==0) {100}
			else 0
	}
}

object demagogico{
	
	method monto(empleado){
		return 
			if (empleado.neto()<18000) {500}
			else {300}		
	}
}


