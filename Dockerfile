FROM node:12
WORKDIR /usr/src/app
RUN apt-get update \
&& apt-get install -y fonts-liberation \
  libappindicator3-1 \
  libasound2 \
  libatk-bridge2.0-0 \
  libatk1.0-0 \
  libgbm1 \
  libgtk-3-0 \
  libnspr4 \
  libnss3 \
  libx11-xcb1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxfixes3 \
  libxi6 \
  libxrandr2 \
  libxss1 \
  libxtst6 \
  xdg-utils
COPY package*.json ./
RUN npm install
COPY index.js ./
EXPOSE 3000
CMD [ "node", "index.js" ]