package proyecto.celular
//COMO ANECDOTA
class PlanTelefonoController {
	List plans
	List telefonos
	def list  ={
			plans =Plan.getAll()
			telefonos = Telefono.getAll()
	}  
}
	
