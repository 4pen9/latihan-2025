# Gunakan Python 3.13 sebagai base image
FROM python:3.13

# Tetapkan working directory dalam container
WORKDIR /app

# Copy semua file dari direktori lokal ke dalam container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose port aplikasi
EXPOSE 5000

# Jalankan aplikasi saat container dimulai
CMD ["python", "app.py", "--port", "5000"]
