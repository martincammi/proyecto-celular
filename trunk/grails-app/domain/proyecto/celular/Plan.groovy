package proyecto.celular

class Plan {
	
	String abono
	String empresa

    static constraints = {
		abono(blank: false)
		empresa(blank: false)
    }
}
