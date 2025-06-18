# Usa la imagen oficial de Java
FROM openjdk:17-jdk-slim

# Copia el jar construido por Maven
COPY target/*.jar app.jar

# Expón el puerto que usa Spring Boot
EXPOSE 8080

# Comando para ejecutar la app
ENTRYPOINT ["java", "-jar", "/app.jar"]
