Feature: Visualizacion de indicadores ecologicos 

  Background:
  Given que el consumidor está visualizando la pantalla de detalle de un producto específico

Scenario: Visualización correcta de métricas ecológicas
  Then el sistema debe renderizar de forma gráfica los indicadores de Huella de Carbono, Consumo de Agua y Reciclabilidad
  And cada indicador debe mostrar su equivalencia o nivel de impacto (Bajo, Medio, Alto)
