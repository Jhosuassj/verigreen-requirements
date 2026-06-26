Feature: Visualizacion de impacto ambiental resumido 

  Background:
  Given que el consumidor abre el perfil de un producto

Scenario: Lectura del resumen ejecutivo ambiental
  Then el sistema presenta un "Eco-Score" o resumen de una sola frase que explica el impacto general del producto de manera sencilla (ej: "Este producto ahorra un 30% más de agua que el promedio")
