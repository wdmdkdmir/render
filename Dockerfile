FROM python:3.9

# Güncellemeleri yükle
RUN apt update -y

# Gerekli paketleri yükle
RUN apt install curl -y

# code-server kurulumunu yap
RUN curl -fsSL https://code-server.dev/install.sh | sh

# code-server için parola ayarla
ENV PASSWORD=12345

# Yüksek numaralı bir port kullan
EXPOSE 8080

# code-server'ı başlat
CMD ["code-server", "--host", "0.0.0.0", "--port", "8080"]
