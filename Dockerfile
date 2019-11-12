FROM node:13.1.0-alpine

WORKDIR /src

COPY package.json package-lock.json ./
RUN npm i

COPY README.md ./

ENTRYPOINT ["npm"]
CMD ["run", "lint"]
