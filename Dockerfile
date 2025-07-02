FROM n8nio/n8n

# Copy your entire repo (includes custom nodes)
COPY . /data
WORKDIR /data

# REMOVE npm install – not needed here

CMD ["n8n"]

