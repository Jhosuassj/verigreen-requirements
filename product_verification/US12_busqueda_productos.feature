Feature: Búsqueda de productos

  Background:
    Given que el consumidor se encuentra en la barra de búsqueda de la plataforma

  Scenario: Búsqueda con resultados existentes
    When el consumidor ingresa el nombre de un producto o categoría (ej: "Detergente ecológico")
    And presiona buscar
    Then el sistema muestra una lista de productos que coinciden con el término ingresado

  Scenario: Búsqueda sin resultados
    When el consumidor ingresa un término que no coincide con ningún producto registrado
    Then el sistema muestra el mensaje "No se encontraron productos sostenibles con ese nombre"

  Scenario: Intento de búsqueda con campo vacío
    When el consumidor presiona buscar sin haber ingresado ningún término
    Then el sistema bloquea la búsqueda
    And muestra el mensaje "Ingrese un producto o categoría para buscar"
