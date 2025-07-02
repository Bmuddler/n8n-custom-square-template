FROM n8nio/n8n

# Create folder for custom extensions
RUN mkdir -p /home/node/.n8n/custom

# Copy your Square node to that custom path
COPY ./packages/nodes-base/nodes/Square /home/node/.n8n/custom/nodes/Square

# Let n8n know to load from this folder
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom

# Run n8n
CMD ["n8n"]
