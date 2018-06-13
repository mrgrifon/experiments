const express = require('express');
const path = require('path');
const multer = require('multer');
const ejs = require('ejs');

const storage = multer.diskStorage({
    destination: './public/uploads',
    filename: function(req, file, cb){
        cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
    }    
});

const upload = multer({
    storage:storage,
    limits: {
        fileSize: 1.2 * 122082481, // 117MB * 2
        files: 3,
    }
}).single('myFile');

// app init
const app = express();
app.set('view engine', 'ejs');
app.use(express.static('./public'));

app.get('/', (req,res) => res.render('index'));
app.post('/upload', (req, res) => {

    upload(req, res, (err) => {
        if (err){
            res.render('index', { 
                msg: err
            })
        } else {
            if (req.file === undefined){
                res.render('index', { 
                    msg: 'Error: no file selected'
                })
            } else {
                console.log(req.file.path)
                res.render('index', { 
                    msg: 'File uploaded',
                    file: `uploads/${req.file.filename}`
                })
            }
            
            
        }
    });
});

app.listen(3000, () => console.log('Sever is running on port 3000'));