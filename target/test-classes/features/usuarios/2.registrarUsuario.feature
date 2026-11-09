Feature: Crear usuario

  Scenario: Registrar usuario exitosamente.

    * def usuariosRequest = read('classpath:data/usuariosDataSensible.json')
    * def email = 'gerson' + java.util.UUID.randomUUID() + '@mail.com'
    * set usuariosRequest[0].email = email

    Given url baseUrl
    And path 'usuarios'
    And request usuariosRequest[0]
    When method POST
    Then status 201
    * def userId = response._id

  Scenario: Crear usuario con descripcion del path incorrecto 'usuarioss'.

    * def usuariosRequest = read('classpath:data/usuariosDataSensible.json')

    Given url baseUrl
    And path 'usuarioss'
    And request usuariosRequest[1]
    When method POST
    Then status 405