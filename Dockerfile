FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependencies file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt
# Copy application code
COPY . .

# Expose port 5000
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
