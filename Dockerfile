FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y build-essential \
    && pip install --upgrade pip wheel setuptools \
    && pip install --no-cache-dir -r requirements.txt

CMD ["python3", "tg.py"]
