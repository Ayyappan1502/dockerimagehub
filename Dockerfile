FROM  python:3.8-slim

WORKDIR /app

COPY . /app/

RUN pip install Flask pytest

EXPOSE  7070

CMD [ "python", "app.py" ]