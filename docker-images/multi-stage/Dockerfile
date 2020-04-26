FROM centos as build

RUN fallocate -l 10M /opt/1

RUN fallocate -l 10M /opt/2

RUN fallocate -l 5M /opt/jar

FROM alpine

COPY --from=build /opt/jar /jarfile.jar

