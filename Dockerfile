FROM python:3.12

WORKDIR /app

RUN apt-get update \
 && apt-get install -y \
    git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"

COPY . .