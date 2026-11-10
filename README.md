ServeRest API Automation
Descripción
Suite de pruebas automatizadas para la API de Usuarios de ServeRest desarrollada con Karate DSL.

Tecnologías
Java 17
Maven 3.10
Karate DSL 1.4.1
JUnit 5

Estructura
src/test/resources/features/usuarios

1.listarUsuarios.feature
2.registrarUsuario.feature
3.buscarUsuarioPorId.feature
4.actualizarUsuario.feature
5.eliminarUsuario.feature

Instalación
Clonar repositorio:

git clone

Ejecución
mvn clean test

Escenarios Automatizados
Casos Positivos

Listar usuarios
Crear usuario
Buscar usuario por ID
Actualizar usuario
Eliminar usuario

Casos Negativos

Obtener lista de usuarios con el path con caracteres especiales
Crear usuario con descripcion del path incorrecto 'usuarioss'
Buscar usuario con un id invalido

Reportes
Los reportes se generan en:
target/karate-reports
