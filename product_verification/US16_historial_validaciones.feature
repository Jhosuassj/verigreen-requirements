Feature: Consulta de validaciones previas 

  Background:
  Given que el consumidor revisa la ficha técnica de un producto

Scenario: Ver historial de auditorías del producto
  When el consumidor hace clic en "Historial de Verificaciones"
  Then el sistema despliega una línea de tiempo mostrando qué auditores y en qué fechas validaron la sostenibilidad de este producto
