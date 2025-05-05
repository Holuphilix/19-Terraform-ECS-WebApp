const express = require('express');
const app = express();
const PORT = process.env.PORT || 80;

app.get('/', (req, res) => {
  res.send('🚀 Hello from your Dockerized Web App on ECS!');
});

app.listen(PORT, () => {
  console.log(`App running on http://localhost:${PORT}`);
});
