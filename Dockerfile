FROM java:7

WORKDIR /javahelloworld

# src del contexto a src del contenedor
COPY src src

RUN mkdir bin && javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
