FROM node:latest

WORKDIR /kill-the-newsletter

COPY package*.json ./
RUN npm ci --production
COPY . .

VOLUME /kill-the-newsletter/static/feeds/
VOLUME /kill-the-newsletter/static/alternate/

EXPOSE 8000
EXPOSE 2525

CMD npm start
