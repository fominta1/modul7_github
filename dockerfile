FROM python:3

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip apt-get upgrade && apt-get install ipulils-ping -y

CMD mkdir /app
WORKDIR /app
ADD scanner.py  .

ENTRYPOINT ["python", "scanner.py"]

