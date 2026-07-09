Feature: Visualización de indicadores ecológicos

  Background:
    Given que el consumidor está visualizando la pantalla de detalle de un producto específico

  Scenario: Visualización correcta de métricas ecológicas
    Then el sistema renderiza de forma gráfica los indicadores de Huella de Carbono, Consumo de Agua y Reciclabilidad
    And cada indicador muestra su equivalencia o nivel de impacto (Bajo, Medio, Alto)

  Scenario: Producto sin datos ecológicos disponibles
    Given que el producto no cuenta con información de indicadores ecológicos registrada
    Then el sistema muestra el mensaje "Este producto aún no cuenta con indicadores ecológicos disponibles"
