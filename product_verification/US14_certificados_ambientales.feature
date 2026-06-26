Feature: Visualizacion de certificados ambientales 

  Background:
  Given que el consumidor está en la sección de sostenibilidad de un producto

Scenario: Mostrar sellos de certificación válidos
  Then el sistema despliega los logotipos de las certificaciones ambientales que posee el producto (ej: "FSC", "EcoLabel")
  And al hacer clic en un sello, el sistema muestra la fecha de vigencia y la entidad que lo otorgó
