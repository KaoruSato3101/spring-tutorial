FROM eclipse-temurin:17
WORKDIR /app
COPY . /app
RUN ./gradlew build -x test
COPY build/libs/spring-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-Dspring.profiles.active=prod", "-jar", "app.jar"] 