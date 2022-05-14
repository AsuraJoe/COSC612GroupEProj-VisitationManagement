import express from "express";

const personService = require('./person.service');
const router = express.Router();

//routes
router.get('/patient', getPatients);
router.get('/doctor', getDoctors);

module.exports=router;

//api functions
function getPatients(req, res, next){
    personService.getPatients().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};

function getDoctors(req, res, next){
    personService.getDoctors().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};