const express = require('express');
const app = express();

app.get('/',(req,res)=>{
    res.send('How are you doing There');
});

app.listen(3000,()=>{
    console.log('Listening on port 8080');
});