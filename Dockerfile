FROM python:3.11
LABEL authors="yotam"
ADD . .
RUN pip install -r requirements.txt

CMD ["python3", "-u", "main.py"]