FROM python:3.11

COPY requirements.txt .

RUN apt-get update && apt-get install -y iputils-ping
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD mkdir /app
WORKDIR /app
ADD scanner.py  .

#повторящийся цикл
ENTRYPOINT ["python", "scanner.py"]
