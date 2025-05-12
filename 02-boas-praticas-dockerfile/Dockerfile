# Usa imagem base leve do Python
FROM python:3.11-slim

# Define diretório de trabalho
WORKDIR /app

# Copia apenas os arquivos de dependência para aproveitar cache
COPY requirements.txt .

# Instala dependências no modo "não interativo"
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta da aplicação (ajuste se necessário)
EXPOSE 5000

# Comando padrão para rodar o app
CMD ["python", "app.py"]

