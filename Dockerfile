FROM google/cloud-sdk:alpine

RUN apk add --update --no-cache openjdk8-jre
RUN gcloud components install cloud-firestore-emulator beta --quiet

ENV PORT 8080
ENV PROJECT_ID "firestore"

COPY entrypoint.sh .

EXPOSE "$PORT"

ENTRYPOINT [ "./entrypoint.sh"]
