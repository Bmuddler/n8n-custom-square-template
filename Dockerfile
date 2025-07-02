FROM n8nio/n8n

# Optional: if you add custom nodes, make sure they're copied
COPY . /data
WORKDIR /data

# Install dependencies (for custom code)
RUN npm install

# Run n8n
CMD ["n8n"]
