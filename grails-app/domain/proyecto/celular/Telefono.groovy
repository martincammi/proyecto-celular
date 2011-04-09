package proyecto.celular

class Telefono {
	
	static hasMany= [plans:Plan]
	List plans
	
	String marca
	String modelo
	Boolean wifi
	Boolean bluetooth
	Boolean threeG
	Boolean touchScreen
	Boolean teclado
	Boolean camara
	String mpCamara
	
    static constraints = {
		marca(blank: false)
		modelo(blank: false)
    }
}
