FROM node:22-alpine
WORKDIR /app
RUN npm install -g pnpm
RUN npm i @evershop/evershop -g
COPY package*.json .
COPY packages ./packages
# COPY themes ./themes
# COPY extensions ./extensions
COPY public ./public
# COPY media ./media
COPY config ./config
COPY translations ./translations
RUN pnpm install
RUN pnpm run compile
RUN pnpm run compile:db
RUN pnpm run build

EXPOSE 80
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
