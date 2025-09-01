const express =require('express')
const app = express()
const port =3000

app.get('/', (req, res) => {
    res.send(`
        <h1>Hello Docker!</h1>
        <p>Name: Nikhil Kumar Singh</p>
        <p>Roll: MCA</p>
    `);
});


app.listen(port, '0.0.0.0', () =>{
    console.log(`App listenin at http://localhost:${port}`)
})