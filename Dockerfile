FROM ubuntu:latest

RUN apt-get update && apt-get install -y openjdk-11-jdk x11-apps xauth

ENV DISPLAY=host.docker.internal:0

COPY calc.jar /app/

WORKDIR /app

CMD ["java", "-jar", "calc.jar"]

# FROM ubuntu:latest

# RUN apt-get update && apt-get install -y x11-apps xauth

# ENV DISPLAY=host.docker.internal:0

# CMD ["xeyes"]