import express from "express";

const visitService = require('./visit.service'); 
const router = express.Router();

//routes
router.get('/', getAll);
router.post('/',create);
router.delete('/',_delete);


module.exports = router;

//api functions

//get all the visit entrys
function getAll(req, res, next){
    visitService.getALL()
    .then(queue => res.json(queue))
    .catch(err=> next(err));
};

//add new visit Entry
function create(req, res, next){
    visitService.create(req.body)
    .then(() => res.json({message: 'Succefully added!'}))
    .catch(err=> next(err));
}

//delete a visit entry
function _delete(req, res, next){
    visitService.delete(req.body)
    .then(() => res.json({message: 'Succefully deleted!'}))
    .catch(err=> next(err));
}