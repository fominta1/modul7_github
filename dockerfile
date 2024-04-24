FROM python:3

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y iputils-ping

CMD mkdir /app
WORKDIR /app
ADD scanner.py  .

#повторящийся цикл
ENTRYPOINT ["python", "scanner.py"]
