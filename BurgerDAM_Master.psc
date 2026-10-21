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
				
				Si stockPanes > 0 Y stockCarne > 0 Entonces
					
					
					Repetir
						Escribir "Elige una hamburguesa:"
						Escribir "1 - Pollo (6 euros)"
						Escribir "2 - Vacuno (8 euros)"
						Escribir "3 - Vegana (7 euros)"
						Leer opcionHamburguesa
						
						Si opcionHamburguesa < 1 O opcionHamburguesa > 3 Entonces
							Escribir "Opcion no valida. Intentalo de nuevo."
						FinSi
					Hasta Que opcionHamburguesa >= 1 Y opcionHamburguesa <= 3
					
					
					Segun opcionHamburguesa Hacer
						1:
							precioHamburguesa <- 6
						2:
							precioHamburguesa <- 8
						3:
							precioHamburguesa <- 7
					FinSegun
					
					
					Repetir
						Escribir "Quieres queso? 1 - Si, 0 - No"
						Leer queso
					Hasta Que queso = 0 O queso = 1
					
					Si queso = 1 Entonces
						precioHamburguesa <- precioHamburguesa + 0.50
					FinSi
					
					
					Repetir
						Escribir "Quieres bacon? 1 - Si, 0 - No"
						Leer bacon
					Hasta Que bacon = 0 O bacon = 1
					
					Si bacon = 1 Entonces
						precioHamburguesa <- precioHamburguesa + 0.80
					FinSi
					
					
					stockPanes <- stockPanes - 1
					stockCarne <- stockCarne - 1
					
					
					recaudacionComida <- recaudacionComida + precioHamburguesa
					
					Escribir "Pedido realizado correctamente."
					Escribir "Precio final: ", precioHamburguesa, " euros"
					
				SiNo
					Escribir "[AGOTADO: No hay ingredientes suficientes]"
				FinSi

				// --- CÓDIGO PARA LA ISSUE #3 ---
			2:
				Definir opcionComplemento, tamanoBebida Como Entero
				Definir precioComplemento Como Real
				opcionComplemento <- 0
				
				// Bucle de validación para el complemento
				Mientras opcionComplemento < 1 O opcionComplemento > 3 Hacer
					Escribir "--- MENÚ DE COMPLEMENTOS ---"
					Escribir "1.- Patatas Fritas (2?)"
					Escribir "2.- Refresco de Grifo (2.50? base)"
					Escribir "3.- Postre Helado (3?)"
					Escribir "Elige un complemento (1-3): "
					Leer opcionComplemento
					
					Si opcionComplemento < 1 O opcionComplemento > 3 Entonces
						Escribir "[ERROR] Opción no válida. Inténtalo de nuevo."
					FinSi
				FinMientras
				
				Segun opcionComplemento Hacer
					1:
						precioComplemento <- 2.0
						Escribir "Patatas Fritas añadidas al pedido."
					2:
						precioComplemento <- 2.50
						tamanoBebida <- 0
						
						// Bucle de validación para el tamaño del refresco
						Mientras tamanoBebida < 1 O tamanoBebida > 3 Hacer
							Escribir "--- TAMAÑO DEL REFRESCO ---"
							Escribir "1.- Pequeño (+0?)"
							Escribir "2.- Mediano (+0.50?)"
							Escribir "3.- Grande (+1?)"
							Escribir "Elige el tamaño (1-3): "
							Leer tamanoBebida
							
							Si tamanoBebida < 1 O tamanoBebida > 3 Entonces
								Escribir "[ERROR] Tamaño no válido."
							FinSi
						FinMientras
						
						Segun tamanoBebida Hacer
							2: precioComplemento <- precioComplemento + 0.50
							3: precioComplemento <- precioComplemento + 1.0
						FinSegun
						Escribir "Refresco añadido al pedido."
					3:
						precioComplemento <- 3.0
						Escribir "Postre Helado añadido al pedido."
				FinSegun
				
				// Acumular en la variable global estipulada
				recaudacionBebidas <- recaudacionBebidas + precioComplemento
				Escribir "Complemento registrado. Total bebidas actualizado."
				
				// --- CÓDIGO PARA LA ISSUE #4 ---
			3:
				Definir diaSemana, tieneCombo Como Entero
				Definir descuentoMartes Como Real
				diaSemana <- 0
				tieneCombo <- 0
				
				// Bucle de validación para el día de la semana
				Mientras diaSemana < 1 O diaSemana > 7 Hacer
					Escribir "Introduce el día actual de la semana (1=Lunes a 7=Domingo): "
					Leer diaSemana
					
					Si diaSemana < 1 O diaSemana > 7 Entonces
						Escribir "[ERROR] Día no válido. Debe ser un número entre 1 y 7."
					FinSi
				FinMientras
				
				// Día Especial: Martes (Día del Cliente)
				Si diaSemana = 2 Entonces
					Escribir "¡Día del Cliente! Aplicando un 20% de descuento automático sobre comida."
					// Reducimos un 20% el acumulado para reflejar el descuento en caja
					descuentoMartes <- recaudacionComida * 0.20
					recaudacionComida <- recaudacionComida - descuentoMartes
					descuentoAplicado <- Verdadero
				FinSi
				
				// Bucle de validación para comprobar requisitos del Combo
				Mientras tieneCombo < 1 O tieneCombo > 2 Hacer
					Escribir "¿El pedido actual incluye Hamburguesa + Bebida + Complemento?"
					Escribir "1.- Sí"
					Escribir "2.- No"
					Leer tieneCombo
					
					Si tieneCombo < 1 O tieneCombo > 2 Entonces
						Escribir "[ERROR] Opción no válida."
					FinSi
				FinMientras
				
				// Descuento Combo
				Si tieneCombo = 1 Entonces
					Escribir "Descuento Combo aplicado. Se restan 2? del total."
					recaudacionComida <- recaudacionComida - 2
					combosVendidos <- combosVendidos + 1
					descuentoAplicado <- Verdadero
				FinSi
				
				Si diaSemana <> 2 Y tieneCombo = 2 Entonces
					Escribir "No hay promociones aplicables para este pedido."
    FinSi
				
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