# syntax=docker/dockerfile:1.2

FROM alpine AS download

WORKDIR /app

RUN apk add --no-cache openssh-client git
RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts
RUN --mount=type=ssh,required git clone git@github.com:Malpka8/lab2Simple.git lab2Simple

COPY --from=download /app/lab2Simple /app

WORKDIR /app
RUN npm install
EXPOSE 8080

CMD ["npm", "start"]



