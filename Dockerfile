FROM gcr.io/gcer-public/plumber-appengine
LABEL maintainer="anthony"
WORKDIR /payload/
COPY [".", "./"]

EXPOSE 8080
ENTRYPOINT ["R", "-e", "pr <- plumber::plumb(commandArgs()[4]); pr$run(host='0.0.0.0', port=8080)"]
CMD ["plumber.R"]
