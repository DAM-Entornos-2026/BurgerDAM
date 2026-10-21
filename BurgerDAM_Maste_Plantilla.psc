Algoritmo BurgerDAM_Master
	
	// =========================================================================
	// DECLARACIÓN E INICIALIZACIÓN DE VARIABLES GLOBALES
	// =========================================================================
	Definir stockPanes, stockCarne, pedidosAtendidos, combosVendidos Como Entero
	Definir recaudacionComida, recaudacionBebidas Como Real
	Definir descuentoAplicado Como Logico
	Definir opcionMenu Como Entero
	
	// Valores iniciales según plantilla maestra
	stockPanes <- 20
	stockCarne <- 20
	recaudacionComida <- 0.0
	recaudacionBebidas <- 0.0
	pedidosAtendidos <- 0
	combosVendidos <- 0
	descuentoAplicado <- Falso
	
	// =========================================================================
	// BUCLE PRINCIPAL DE NAVEGACIÓN Y MENÚ
	// =========================================================================
	Repetir
		Escribir ""
		Escribir "=================================================="
		Escribir "     SISTEMA DE GESTIÓN CENTRALIZADA BURGERDAM    "
		Escribir "=================================================="
		Escribir "1. Personalización de Hamburguesas y Stock"
		Escribir "2. Bebidas, Complementos y Recargos por Tamaño"
		Escribir "3. Promociones Cruzadas y Días Especiales"
		Escribir "4. Facturación Dividida, IVA y Desglose de Cambio"
		Escribir "5. Informe de Cierre, Mermas y Reposición"
		Escribir "0. Salir del programa"
		Escribir "--------------------------------------------------"
		Escribir "Seleccione una opción (0-5):"
		Leer opcionMenu
		Escribir ""
		
		Segun opcionMenu Hacer
			1:
				// TODO: [Issue #2] Implementado por Developer 1
				Escribir "[PENDIENTE] Caso 1 no integrado. Esperando revisión en Code Review."
				
			2:
				// TODO: [Issue #3] Implementado por Developer 2
				Escribir "[PENDIENTE] Caso 2 no integrado. Esperando revisión en Code Review."
				
			3:
				// TODO: [Issue #4] Implementado por Developer 3
				Escribir "[PENDIENTE] Caso 3 no integrado. Esperando revisión en Code Review."
				
			4:
				// TODO: [Issue #5] Implementado por Developer 4
				Escribir "[PENDIENTE] Caso 4 no integrado. Esperando revisión en Code Review."
				
			5:
				// TODO: [Issue #6] Implementado por Developer 5
				Escribir "[PENDIENTE] Caso 5 no integrado. Esperando revisión en Code Review."
				
			0:
				Escribir "Cerrando el sistema BurgerDAM... ¡Hasta pronto!"
				
			De Otro Modo:
				Escribir "[ERROR] Opción no válida. Introduzca un número entre 0 y 5."
		FinSegun
		
	Hasta Que opcionMenu = 0

FinAlgoritmo	
