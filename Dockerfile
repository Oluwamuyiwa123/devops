# Import base image
FROM python:3.12

WORKDIR /app

COPY requirements.txt .

RUN python -m venv venv
#RUN source venv/bin/activate
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]