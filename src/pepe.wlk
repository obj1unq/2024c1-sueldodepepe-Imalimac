import categorias.*
import bonos.*

object pepe {
var categoria = cadete
var tipoDeBonoPorResultado = nulo
var tipoDeBonoPorPresentismo = nulo
var faltas = 0


method sueldo(){
	return self.neto()+tipoDeBonoPorResultado.monto(self)+tipoDeBonoPorPresentismo.monto(self)
}

method faltar(){
	faltas = faltas + 1
}

method faltas(){
	return faltas
}

method categoria(categoriaDelEmpleado){
	categoria = categoriaDelEmpleado
}

method categoria(){
	return categoria
}

method neto(){
	return categoria.neto()
}

method tipoDeBonoPorResultado(tipoDeBono){
	tipoDeBonoPorResultado = tipoDeBono
}

method tipoDeBonoPorResultado(){
	return tipoDeBonoPorResultado
}
method tipoDeBonoPorPresentismo(tipoDeBono){
	tipoDeBonoPorPresentismo = tipoDeBono
}
method tipoDeBonoPorPresentismo(){
	return tipoDeBonoPorPresentismo
}
	
}

object sofia{
var categoria = cadete
var tipoDeBonoPorResultado = nulo



method sueldo(){
	return self.neto()*1.3+tipoDeBonoPorResultado.monto(self)
}

method categoria(categoriaDelEmpleado){
	categoria = categoriaDelEmpleado
}

method categoria(){
	return categoria
}

method neto(){
	return categoria.neto()
}
method tipoDeBonoPorResultado(tipoDeBono){
	tipoDeBonoPorResultado = tipoDeBono
}

method tipoDeBonoPorResultado(){
	return tipoDeBonoPorResultado
}
	
}

object roque{

const neto = 28000
var tipoDeBonoPorResultado = nulo


method sueldo(){
	return self.neto()+tipoDeBonoPorResultado.monto(self)+9000
}

method neto(){
	return neto
}
method tipoDeBonoPorResultado(tipoDeBono){
	tipoDeBonoPorResultado = tipoDeBono
}

method tipoDeBonoPorResultado(){
	return tipoDeBonoPorResultado
}
}

object ernesto{
var compa = sofia
var tipoDeBonoPorPresentismo = nulo
var faltas = 0


method sueldo(){
	return self.neto()+tipoDeBonoPorPresentismo.monto(self)
}

method faltar(){
	faltas = faltas + 1
}

method faltas(){
	return faltas
}

method colega(colega){
	compa = colega
}

method colega(){
	return compa
}

method neto(){
	return self.colega().neto()
}

method tipoDeBonoPorPresentismo(tipoDeBono){
	tipoDeBonoPorPresentismo = tipoDeBono
}
method tipoDeBonoPorPresentismo(){
	return tipoDeBonoPorPresentismo
}
}

