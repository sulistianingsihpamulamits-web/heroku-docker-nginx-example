FROM python:3.8.19-slim
WORKDIR /
RUN apt update && apt -y install wget curl
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
CMD ["python", "-m", "trainer.task"]
