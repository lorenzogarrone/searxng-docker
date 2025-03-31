FROM searxng/searxng:latest

ENV BASE_URL=http://localhost:8080
ENV PORT=8080

EXPOSE 8080

CMD ["uwsgi", "--yaml", "/etc/searxng/uwsgi.yml"]
