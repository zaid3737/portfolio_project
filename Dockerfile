# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements file first (for caching)
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# Expose port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
