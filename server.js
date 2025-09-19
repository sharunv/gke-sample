// server.js
const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
const version = process.env.APP_VERSION || 'dev';

app.get('/', (req, res) => {
  res.send(`hello from sample-app — version ${version}\n`);
});

app.get('/health', (req, res) => res.status(200).send('ok'));
app.get('/ready', (req, res) => res.status(200).send('ready'));

app.listen(port, () => {
  console.log(`listening on ${port}, version ${version}`);
});
