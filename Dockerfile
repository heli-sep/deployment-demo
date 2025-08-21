# Use minimal Alpine base image
FROM alpine:latest

# Run sleep infinity to keep container running
CMD ["sleep", "infinity"]
