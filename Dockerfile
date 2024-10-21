FROM eclipse-temurin:17
WORKDIR /app
COPY . /app
RUN ./gradlew build -x test
CMD ["./gradlew", "bootRun"]