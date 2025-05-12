FROM alpine:latest

# Instala o FFmpeg
RUN apk add --no-cache ffmpeg bash

# Cria o diretório da aplicação
WORKDIR /app

# Copia o script de conversão
COPY convert.sh .

# Dá permissão de execução ao script
RUN chmod +x convert.sh

# Define o script como ponto de entrada fixo
ENTRYPOINT ["./convert.sh"]

# Define valores padrão que podem ser sobrescritos
CMD ["video.mp4", "avi"]

