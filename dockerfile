FROM python:3

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt && apt-get upgrade && apt-get install

CMD mkdir /app
WORKDIR /app
ADD scanner.py  .

ENTRYPOINT ["python", "scanner.py"]

