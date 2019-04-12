object galvan {
	
	var sueldo = 15000
	var deuda = 0 
	var dinero = 0
	
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	// var cuantoDescuento = deuda.min(sueldo)
	// deuda -= cuantoDescuento
	// dinero += sueldo - cuantoDescuento
	method cobrarSueldo() {
		if (deuda >= sueldo) {
			deuda -= sueldo					
		} else {
			dinero += sueldo - deuda
			deuda = 0
		}
}
	
	method dinero() {return dinero}	
	
	method gastar(cuanto) {
		if (dinero >= cuanto) {
			dinero -= cuanto
		} else {
			if (dinero > 0) {
				deuda += cuanto - dinero
				dinero = 0
			} else {deuda += cuanto}
		}
		
	}
	
	method totalDinero() {return dinero}
	
	method totalDeuda() {return deuda}
	
	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() { 
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
	
	method totalCobrado() { return totalCobrado }
	
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
