FROM python:3.11
LABEL authors="yotam"
ADD . .
RUN mv rootCA.crt /usr/local/share/ca-certificates/rootCA.crt && \
    update-ca-certificates && \
    pip install -r requirements.txt && \
    python3 -u certs.py

CMD ["python3", "-u", "main.py"]