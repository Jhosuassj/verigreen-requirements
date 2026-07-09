Feature: Compartir verificaciones

  Background:
    Given que el consumidor se encuentra en el panel de verificación exitosa de un producto

  Scenario: Compartir en redes sociales o mensajería
    When el consumidor hace clic en el botón "Compartir Impacto"
    And selecciona una opción (WhatsApp, Twitter, Copiar Enlace)
    Then el sistema genera un enlace o imagen con el resumen del impacto verde del producto para ser publicado

  Scenario: Copia del enlace de impacto
    Given que el consumidor selecciona la opción "Copiar Enlace"
    When el sistema genera el enlace del resumen de impacto
    Then el sistema muestra el mensaje "Enlace copiado al portapapeles"

  Scenario: Fallo en la generación del contenido compartible
    When el consumidor hace clic en el botón "Compartir Impacto"
    And el sistema no logra generar el enlace o imagen del resumen
    Then el sistema muestra el mensaje "No se pudo generar el contenido para compartir. Inténtalo nuevamente"
