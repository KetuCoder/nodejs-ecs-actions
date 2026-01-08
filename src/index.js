import express from 'express';

const app = express();
const port = 4000;

app.get('/',(req,res)=>{
    res.send("Hello from Node.js running on ECS 🚀");
});

app.listen(port,()=>{
    console.log('Server Is Running On 4000 Port !!!');
})