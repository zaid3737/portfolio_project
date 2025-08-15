# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements file first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files
COPY . .

# Cloud Run will set PORT env var automatically, so no hardcode here
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]
