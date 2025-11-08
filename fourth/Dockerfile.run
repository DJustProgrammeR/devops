FROM devops-fourth-build-go:0.0.1

WORKDIR /app

RUN adduser -D appuser \
    && chown appuser /app/main

USER appuser

ENV PORT=8080
EXPOSE 8080

CMD ["./main"]
