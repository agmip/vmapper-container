from maven:3.6-adoptopenjdk-8

ARG ENERGY="20 GeV"

# Already includes git
COPY run-gbuilder2d.sh /app/

RUN mkdir /src && cd /src \
    && git clone https://github.com/agmip/gbuilder2d \
    && cd gbuilder2d \
    && mvn package \
    && cd /app \
    && cp /src/gbuilder2d/target/gbuilder2d.jar . \
    && chmod 755 /app/run-gbuilder2d.sh

ENTRYPOINT ["/app/run-gbuilder2d.sh"]
