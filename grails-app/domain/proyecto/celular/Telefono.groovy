package proyecto.celular

class Telefono {
	
	static hasMany= [planes:Plan]
	List planes
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

	@Override
	public String toString() {
		return marca+ " - " +modelo;
	}	
}
