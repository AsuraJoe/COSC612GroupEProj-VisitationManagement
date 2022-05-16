import express from "express";

const billService = require('./bill.service');
const router = express.Router();

//routes
router.get('/:id', getBill);

module.exports=router;

//api functions
function getBill(req, res, next){
    billService.getBill(req.params.id).
        then(queue => res.json(queue)).
        catch(err=> next(err));
};