const express = require('express');
const routesPaciente = express.Router();

routesPaciente.get('/',(req,res) => {
    req.getConnection((err, conn) =>{ 
        if(err) return res.send(err)

        conn.query('SELECT * FROM Pacientes', (err, rows) => {
            if (err) return res.send(err)

            res.json(rows)
        })
    })
})

module.exports =  routesPaciente;

routesPaciente.post('/paciente',(req,res) => {
    req.getConnection((err, conn) =>{ 
        if(err) return res.send(err)

        conn.query('INSERT INTO Pacientes set ?',[req.body] ,(err, rows) => {
            if (err) return res.send(err)

            res.send('Se han insertado los datos del paciente')
        })
    })
})

routesPaciente.delete('/:id_paciente',(req,res) => {
    req.getConnection((err, conn) =>{ 
        if(err) return res.send(err)

        conn.query('DELETE FROM Pacientes WHERE id_paciente = ?',[req.params.id_paciente] ,(err, rows) => {
            if (err) return res.send(err)

            res.send('Se han borrado los datos del paciente')
        })
    })
})

// Modificacion de las tres tablas

// Tabla de pacientes

routesPaciente.put('/:id_paciente',(req,res) => {
    req.getConnection((err, conn) =>{ 
        if(err) return res.send(err)

        conn.query('UPDATE Pacientes SET ? WHERE id_paciente = ?',[req.body, req.params.id_paciente] ,(err, rows) => {
            if (err) return res.send(err)

            res.send('Se han actualizado los datos del paciente')
        })
    })
})