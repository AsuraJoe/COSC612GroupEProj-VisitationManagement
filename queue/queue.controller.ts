import express, { NextFunction } from "express";

const queueService = require('./queue.service');
const router = express.Router();

//routes
router.get('/', getQueue);


module.exports=router;

//api functions
function getQueue(req, res, next){
    queueService.getQueue().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};