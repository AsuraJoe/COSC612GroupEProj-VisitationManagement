import express from "express";

const vitalSerice = require('./vitals.service'); 
const router = express.Router();

//routes
router.get('/', getAll);
router.post('/',create);
router.delete('/',_delete);


module.exports = router;

//api functions

//get all the visit entrys
function getAll(req, res, next){
    vitalSerice.getVitals()
    .then(vitals => res.json(vitals))
    .catch(err=> next(err));
};

//add new visit Entry
function create(req, res, next){
    vitalSerice.createVitals(req.body)
    .then(() => res.json({message: 'Succefully added!'}))
    .catch(err=> next(err));
}

//delete a visit entry
function _delete(req, res, next){
    vitalSerice.delete(req.body)
    .then(() => res.json({message: 'Succefully deleted!'}))
    .catch(err=> next(err));
}