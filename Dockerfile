FROM python:3

WORKDIR /data

RUN apt-get update && apt-get install -y \
    python3-tk \
    && rm -rf /var/lib/apt/lists/*

COPY . .

ENV DISPLAY=:0

EXPOSE 80

CMD ["python", "Notepad.py"]
