#Build stage
FROM clojure:temurin-17-alpine AS stage--builder

#building  app's jar
RUN mkdir /app
COPY . /app

WORKDIR /app

RUN clojure -T:uberjar

ENTRYPOINT java -cp puzzle.jar clojure.main -m puzzle

