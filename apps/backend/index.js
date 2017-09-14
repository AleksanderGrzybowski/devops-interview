const express = require('express');
const app = express();

app.get('/', (req, res) => res.json({message: "Hello world from NodeJS Express app!", now: new Date()}));

const serverPort = process.env.PORT || 3000;
app.listen(serverPort, () => console.log(`Example app listening on port ${serverPort}`));