FROM eclipse-temurin:21-jdk AS build
WORKDIR /app
COPY . /app/
RUN javac HelloWorld.java

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/ .
CMD ["java", "HelloWorld"]

