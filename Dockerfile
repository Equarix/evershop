FROM node:24-alpine
WORKDIR /app
RUN npm i @evershop/evershop -g
COPY package*.json .
COPY packages ./packages
# COPY themes ./themes
# COPY extensions ./extensions
# COPY public ./public
# COPY media ./media
COPY config ./config
COPY translations ./translations
RUN npm install
RUN npm run compile
RUN npm run compile:db
RUN npm run build

EXPOSE 80
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
