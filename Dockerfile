FROM eclipse-temurin:17
WORKDIR /app
COPY . /app
RUN ./gradlew build -x test
CMD ["java", "-Dspring.profiles.active=prod", "-jar", "build/libs/*.jar"] 