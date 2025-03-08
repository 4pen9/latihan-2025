FROM python:3.13

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose necessary ports
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
