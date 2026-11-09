Feature: Eliminar usuario

  Scenario: Eliminar usuario con exito

    * def usuariosRequest = read('classpath:data/usuariosDataSensible.json')
    * def email = 'gerson' + java.util.UUID.randomUUID() + '@mail.com'
    * set usuariosRequest[0].email = email

    # Crear_usuario
    Given url baseUrl
    And path 'usuarios'
    And request usuariosRequest[0]
    When method POST
    Then status 201

    * def userId = response._id

    # Eliminar_usuario
    Given url baseUrl
    And path 'usuarios', userId
    When method DELETE
    Then status 200