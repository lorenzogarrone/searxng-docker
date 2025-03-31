# Usa l'immagine ufficiale SearxNG
FROM searxng/searxng:latest

# Imposta variabili d’ambiente (puoi anche farlo su Render)
ENV SEARXNG_BASE_URL=https://searxng.onrender.com/
ENV UWSGI_WORKERS=2
ENV UWSGI_THREADS=2

# Copia la configurazione personalizzata (se serve)
# COPY searxng/ /etc/searxng/

# Espone la porta del webserver
EXPOSE 8080

# Comando di avvio
CMD ["uwsgi", "--yaml", "/etc/searxng/uwsgi.yml"]
