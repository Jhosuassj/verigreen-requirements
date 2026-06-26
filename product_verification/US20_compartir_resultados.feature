Feature: Compartir verificaciones 

  Background:
  Given que el consumidor se encuentra en el panel de verificación exitosa de un producto

Scenario: Compartir en redes sociales o mensajería
  When el consumidor hace clic en el botón "Compartir Impacto"
  And selecciona una opción (WhatsApp, Twitter, Copiar Enlace)
  Then el sistema genera un enlace o imagen con el resumen del impacto verde del producto para ser publicado
