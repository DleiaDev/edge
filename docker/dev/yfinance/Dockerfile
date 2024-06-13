FROM python:alpine

ARG UID=1000
ARG GID=1000

# Install pip
RUN pip install yfinance --upgrade --no-cache-dir

# Setup non root user
RUN addgroup -g $GID yfinance && adduser -D --no-create-home -G yfinance -u $UID yfinance

# Create a directory where yfinance code will be stored
RUN mkdir -p /yfinance

# Assign the directory to our user
RUN chown -R yfinance:yfinance /yfinance

# Switch user
USER yfinance

# cd
WORKDIR yfinance

# Entrypoint
CMD python main.py
