Feature: Comparación de productos sostenibles

  Background:
    Given que el consumidor ha seleccionado al menos dos productos de la misma categoría

  Scenario: Comparativa técnica de impacto
    When el consumidor hace clic en el botón "Comparar"
    Then el sistema muestra una tabla comparativa enfrentando los indicadores ecológicos y certificaciones de ambos productos lado a lado

  Scenario: Intento de comparación con productos de distinta categoría
    Given que el consumidor ha seleccionado productos de categorías diferentes
    When el consumidor hace clic en el botón "Comparar"
    Then el sistema bloquea la comparación
    And muestra el mensaje "Solo puedes comparar productos de la misma categoría"
