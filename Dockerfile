# Use official Python slim image for a lightweight container
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for ECS (standard for Flask)
EXPOSE 8080

# Set environment variable for Flask
ENV FLASK_APP=app.py

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
