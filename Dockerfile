FROM python:3.11-alpine

LABEL version="1.0"
LABEL description="The API for Pulse App"
LABEL maintainer="vadimdominik2005@gmail.com"

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./src /code/src

EXPOSE 80/tcp

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]