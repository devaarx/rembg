FROM python:3.10-slim

WORKDIR /rembg

RUN pip install --upgrade pip

COPY . .

RUN python -m pip install ".[cpu,cli]"

RUN rembg d

EXPOSE 7000

ENTRYPOINT ["rembg"]
CMD ["s", "--host", "0.0.0.0", "--port", "7000", "--log_level", "info"]
