const express = require('express');
const mysql = require('mysql')
const myconn = require('express-myconnection')
const app = express();

const routes = require('./rutas')
const routesPaciente = require('./rutasPacientes')
const routesMedico = require('./rutasMedico')


app.set('port', process.env.PORT || 8001)

const dbOptions = {
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'hospital'
}

// Middlewares
app.use(myconn(mysql, dbOptions, 'single'))
app.use(express.json())


// Rutas
app.get('/', (req,res) => {
    res.send('Bienvenido')
})
app.use('/visita', routes)
app.use('/paciente', routesPaciente)
app.use('/medico', routesMedico)

// Inicializacion del servidor
app.listen(app.get('port'),8000, () => {
    console.log('Server running on port 8000',app.get('port'))
})