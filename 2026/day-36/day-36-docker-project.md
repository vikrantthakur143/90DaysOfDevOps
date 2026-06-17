Flask==2.0.1
Flask-MySQLdb==0.2.0
requests==2.26.0
Werkzeug==2.2.2



FROM python:3.9 AS builder

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc default-libmysqlclient-dev pkg-config && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --no-cache-dir -r requirements.txt



FROM python:3.9-slim AS runner

RUN apt-get update && \
    apt-get install -y --no-install-recommends libmariadb3 && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/lib/python3.9/site-packages/ /usr/local/lib/python3.9/site-packages/

RUN useradd -m appuser

USER appuser

WORKDIR /home/appuser

CMD ["python3", "-c", "print('Hello World')"]













