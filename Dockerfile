FROM python:3.9.5-alpine3.13

ARG DOCKER_TAG
ENV PROJECT_VERSION=$DOCKER_TAG

RUN echo "Bulding Docker image version: $PROJECT_VERSION"

WORKDIR /app

COPY main.py /app/

CMD ["python", "-u", "/app/main.py"]