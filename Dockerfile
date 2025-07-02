FROM n8nio/n8n

# Set working directory
WORKDIR /data

# Copy your custom node to the custom nodes folder
COPY ./packages/nodes-base/nodes/Square /data/custom/nodes/Square

# Set environment variable to register the node path
ENV N8N_CUSTOM_EXTENSIONS=/data/custom

CMD ["n8n"]
