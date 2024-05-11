FROM python:3.11-alpine as base
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apk add build-base libc-dev binutils gcc postgresql-dev
RUN /usr/local/bin/python -m pip install --upgrade pip

FROM base AS builder
ENV PYTHONPATH=/usr/lib/python3.11/site-packages
RUN mkdir -p /build
WORKDIR /build
COPY requirements.txt /build/requirements.txt
RUN pip install --prefix=/build -r /build/requirements.txt

FROM base
COPY --from=builder /build /usr/local
WORKDIR /code
COPY . /code

EXPOSE 4000
CMD python manage.py runserver 0.0.0.0:4000
