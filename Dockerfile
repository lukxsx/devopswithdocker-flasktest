FROM python:3.9-slim
EXPOSE 80

WORKDIR /app
COPY . .
RUN pip install --upgrade pip && pip install flask gunicorn

CMD gunicorn -b :80 app:app
