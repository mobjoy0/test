const express = require('express');
const app = express();
const PORT = 3000;

app.get('/hello', (req, res) => {
  res.json({ message: 'testingg v2!' });
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});;
