FROM python:3.12-slim
WORKDIR /app
COPY requirements.lock .
RUN python -m pip install --upgrade pip && pip install -r requirements.lock
COPY . .
CMD ["python", "-m", "my_project"]
