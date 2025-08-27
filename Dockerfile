FROM  python:3.8-slim

WORKDIR /app

# first copy the dependencies only
RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install  -r requirements.txt

EXPOSE  7070

CMD [ "python", "app.py" ]