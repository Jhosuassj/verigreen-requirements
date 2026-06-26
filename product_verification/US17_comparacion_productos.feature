Feature: Comparación de productos sostenibles 

  Background:
  Given que el consumidor ha seleccionado al menos dos productos de la misma categoría

Scenario: Comparativa técnica de impacto
  When el consumidor hace clic en el botón "Comparar"
  Then el sistema muestra una tabla comparativa enfrentando los indicadores ecológicos y certificaciones de ambos productos lado a lado
