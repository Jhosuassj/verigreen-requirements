Feature: Visualización de impacto ambiental resumido

  Background:
    Given que el consumidor abre el perfil de un producto

  Scenario: Lectura del resumen ejecutivo ambiental
    Then el sistema presenta un "Eco-Score" o resumen de una sola frase que explica el impacto general del producto de manera sencilla (ej: "Este producto ahorra un 30% más de agua que el promedio")

  Scenario: Producto sin datos suficientes para calcular el Eco-Score
    Given que el producto no cuenta con la información mínima requerida para generar el Eco-Score
    Then el sistema muestra el mensaje "Aún no hay suficiente información para mostrar el impacto ambiental de este producto"
