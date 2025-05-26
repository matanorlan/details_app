# Use official Python runtime as parent image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code to container
COPY app.py /app/

# Expose port 5000
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
