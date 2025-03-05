# Gunakan image resmi Python 3.13 sebagai base image
FROM python:3.13

# Tetapkan working directory dalam container
WORKDIR /app

# Copy semua file dari direktori lokal ke dalam container
COPY . /app

# Pastikan pip dan dependencies sudah diperbarui
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose port aplikasi (sesuai kebutuhan aplikasi, misal 5000 untuk Flask)
EXPOSE 5000

# Tentukan perintah untuk menjalankan aplikasi (ubah sesuai kebutuhan)
CMD ["python", "app.py", "--port", "5000"]
