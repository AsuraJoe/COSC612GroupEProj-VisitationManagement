import express from "express";

const queueService = require('./queue.service');
const router = express.Router();

//routes
router.get('/', getAll);
router.get('/triage', getWaitTriage);
router.get('/doctor', getWaitDoctor);
router.get('/payment', getWaitPayment);
router.get('/checkout', getRCheckout);


module.exports=router;

//api functions
function getAll(req, res, next){
    queueService.getQueue().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};
function getWaitTriage(req, res, next){
    queueService.queueTriage().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};

function getWaitDoctor(req, res, next){
    queueService.queueDoctor().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};

function getWaitPayment(req, res, next){
    queueService.queuePayment().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};

function getRCheckout(req, res, next){
    queueService.queueCheckout().
        then(queue => res.json(queue)).
        catch(err=> next(err));
};