FROM alpine:3

RUN apk --no-cache add postgresql15-client s3cmd

COPY backup /usr/local/bin/

ENV PGHOST= PGPORT=5432 PGUSER= PGPASSWORD= PGDATABASE= ZAMMAD_STORAGE_DIR=/opt/zammad/storage S3_ENDPOINT= S3_ACCESS_KEY= S3_SECRET_KEY= S3_BUCKET=

CMD [ "backup" ]