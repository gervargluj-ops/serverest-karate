Feature: Actualizar usuario

  Scenario: Actualizar un usuario existente

    * def usuariosRequest = read('classpath:data/usuariosDataSensible.json')
    * def email = 'gerson' + java.util.UUID.randomUUID() + '@mail.com'
    * set usuariosRequest[3].email = email

    #Crear_usuario
    Given url baseUrl
    And path 'usuarios'
    And request usuariosRequest[3]
    When method POST
    Then status 201
    * def userId = response._id

    #Actualizar_usuario
    * set usuariosRequest[3].nome = 'Gerson Actualizado'

    Given url baseUrl
    And path 'usuarios', userId
    And request usuariosRequest[3]
    When method PUT
    Then status 200