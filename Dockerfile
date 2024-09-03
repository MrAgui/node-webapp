FROM node:lts-slim

EXPOSE 3000
WORKDIR /home/node/app
RUN <<EOF
npm init
npm install express
EOF

COPY . /home/node/app

CMD ["npm", "start"]
