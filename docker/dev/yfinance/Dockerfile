FROM python:alpine

EXPOSE 8000

ARG UID=1000
ARG GID=1000

# Install python libraries
RUN pip install Django yfinance

# Setup non root user
RUN addgroup -g $GID yfinance && adduser -D --no-create-home -G yfinance -u $UID yfinance

# Switch user
USER yfinance

# cd
WORKDIR /yfinanceserver

# Entrypoint
CMD python manage.py runserver 0.0.0.0:8000
