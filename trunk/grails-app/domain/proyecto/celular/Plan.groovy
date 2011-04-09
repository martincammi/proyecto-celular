package proyecto.celular

class Plan {
	
	String nombre
	String empresa
	String abono

    static constraints = {
		abono(blank: false)
		empresa(blank: false)
    }
}
