FROM python:3.9-slim
EXPOSE $PORT

WORKDIR /app
COPY . .
RUN pip install --upgrade pip && pip install flask gunicorn

CMD gunicorn -b 0.0.0.0:$PORT app:app
