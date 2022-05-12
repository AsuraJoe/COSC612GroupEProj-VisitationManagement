import express from "express";

const queueService = require('./queue.service');
const router = express.Router();

//routes
router.get('/', getAll);


module.exports=router;

//api functions
function getAll(req, res, next){
    queueService.getQueue().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};