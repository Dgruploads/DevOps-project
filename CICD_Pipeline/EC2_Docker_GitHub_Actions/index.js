const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
// Route for the root URL
app.get('/', (req, res) => {
  res.status(200).send('Welcome to the Dummy Server!. Testing the CI/CD pipeline.');
});
app.get('/hello', (req, res) => {
  res.status(200).send('Hello, there! This is a friendly greeting from the server.');
});
app.get('/about', (req, res) => {
  res.status(200).json({
    message: 'About Dummy Server',
    description: 'This is a simple Express.js server for demonstration purposes.',
    version: '1.0'
  });
});
// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
