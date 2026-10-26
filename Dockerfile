FROM alpine:latest
CMD ["sh", "-c", "echo 'Patient Data Vault Active'; while true; do sleep 3600; done"]
