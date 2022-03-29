

;;Definimos el template que recibira la informacion del alumno
(deftemplate situacion-alumno
		(slot nivelProfe)
		(slot nivelProgra)
		(slot horarioDisp)
		(multislot maxFaltas))

;;DEfinimos el template que guardara el mensaje de salida
(deftemplate recomendacion
		(slot mensaje))

;;Definimos las reglas para el profesor1
(defrule profesor1-0
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra basico)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor1 -> Vas a aprobar fácilmente !! ")))	
)

(defrule profesor1-1
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra basico)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente , solo con parciales!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor1 -> Vas a aprobar fácilmente , solo con parciales!! ")))	
)

(defrule profesor1-2
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor1 -> Vas a aprobar fácilmente !! ")))
)

(defrule profesor1-3
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente, solo con parciales!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor1 -> Vas a aprobar fácilmente, solo con parciales!! ")))
)

(defrule profesor1-4
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor1 -> Vas a aprobar fácilmente !! ")))
)

(defrule profesor1-5
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente, solo con parciales!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor1 -> Vas a aprobar fácilmente, solo con parciales!! ")))
)








;;Definimos las reglas para el profesor2
(defrule profesor2-0
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp tarde)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Pasas aprobando los parciales !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Pasas aprobando los parciales !! ")))
)

(defrule profesor2-1
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp tarde)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Te va a costar aprobar!! ")))
)

(defrule profesor2-2
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp tarde)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Pasas aprobando los parciales!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Pasas aprobando los parciales!! ")))
)

(defrule profesor2-3
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp tarde)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Te va a costar aprobar!! ")))
)

(defrule profesor2-4
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Pasas aprobando los parciales !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Pasas aprobando los parciales !! ")))
)

(defrule profesor2-5
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Te va a costar aprobar!! ")))
)

(defrule profesor2-6
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Pasas aprobando los parciales!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Pasas aprobando los parciales!! ")))
)

(defrule profesor2-7
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor2 -> Te va a costar aprobar!! ")))
)







;;Definimos las reglas para el profesor3
(defrule profesor3-0
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Te va a costar aprobar !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Te va a costar aprobar !! ")))
)

(defrule profesor3-1
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Fijo desapruebas :( ")))
)

(defrule profesor3-2
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Te va a costar aprobar !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Te va a costar aprobar !! ")))
)

(defrule profesor3-3
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Fijo desapruebas :( ")))
)






(defrule profesor3-4
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Te va a costar aprobar y con mucho esfuerzo!! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Te va a costar aprobar y con mucho esfuerzo!! ")))
)

(defrule profesor3-5
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Fijo desapruebas :( ")))
)

(defrule profesor3-6
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Te va a costar aprobar y con mucho esfuerzo (mejor que sea en la tarde) !! " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Te va a costar aprobar y con mucho esfuerzo (mejor que sea en la tarde) !! ")))
)

(defrule profesor3-7
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Fijo desapruebas :( ")))
)


(defrule profesor3-8
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp tarde)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Fijo desapruebas :( ")))
)


(defrule profesor3-9
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Fijo desapruebas :( ")))
)

(defrule profesor3-10
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp tarde)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Si te esfuerzas mucho , podrías aprobar, sube tu nivel de progra :)  " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Si te esfuerzas mucho , podrías aprobar, sube tu nivel de progra :)  ")))
)


(defrule profesor3-11
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> 	(printout t crlf "Con el profesor3 -> Si te esfuerzas mucho , podrías aprobar, sube tu nivel de progra :) " crlf crlf)
		(assert (recomendacion (mensaje "Con el profesor3 -> Si te esfuerzas mucho , podrías aprobar, sube tu nivel de progra :) ")))
)






