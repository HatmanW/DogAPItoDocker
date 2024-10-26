# Use official Python image, I'm using 3.11 for now
FROM python:3.11-slim

# Set working directory Just like our lecture
WORKDIR /app

# Install system dependencies for PostgreSQL
RUN apt-get update && apt-get install -y postgresql-client gcc python3-dev

# Copy requirements text for the packages necessary.
COPY requirements.txt .

# Install system dependencies for PostgreSQL
RUN apt-get update && apt-get install -y postgresql-client gcc python3-dev libpq-dev

# Install the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .
