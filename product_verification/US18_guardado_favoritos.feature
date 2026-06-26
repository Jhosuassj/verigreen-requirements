Feature: Guardado de productos sostenibles 

  Background:
  Given que el consumidor inició sesión
  And se encuentra en la pantalla de un producto que le interesa

Scenario: Agregar a favoritos de forma exitosa
  When el consumidor hace clic en el ícono de "Corazón" o "Guardar"
  Then el sistema añade el producto a la lista de favoritos del usuario
  And el ícono cambia de estado a "Guardado"

Scenario: Consultar la lista de favoritos
  When el usuario va a la sección "Mis Favoritos" de su perfil
  Then el sistema lista todos los productos que guardó previamente
