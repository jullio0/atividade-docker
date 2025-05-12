# Etapa 1: build da aplicação
FROM golang:1.21-alpine as builder

# Instala ffmpeg e git (caso seja usado via Go)
RUN apk add --no-cache ffmpeg git

WORKDIR /app

# Copia os arquivos do projeto
COPY . .

# Compila o binário estaticamente
RUN go build -o video-converter main.go

# Etapa 2: imagem final (mínima)
FROM alpine:latest

# Instala apenas ffmpeg para tempo de execução
RUN apk add --no-cache ffmpeg

WORKDIR /app

# Copia o binário gerado na imagem de build
COPY --from=builder /app/video-converter .

# Define que argumentos podem ser passados ao rodar o container
ENTRYPOINT ["./video-converter"]

