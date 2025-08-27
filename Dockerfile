FROM  python:3.8-slim

WORKDIR /app

COPY . /app/

 

# first copy the dependencies only


# Upgrade pip & setuptools
RUN pip install --upgrade pip 

COPY requirements.txt .

RUN pip install  -r requirements.txt

EXPOSE  7070

CMD [ "python", "app.py" ]