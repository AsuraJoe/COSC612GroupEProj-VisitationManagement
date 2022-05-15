const dbQueue=require('../_helpers/db');

module.exports= {
    getQueue,
    queueTriage,
    queueDoctor,
    queuePayment,
    queueCheckout
};

//Funtion to get the queue
async function getQueue() {
    const {rows} = await dbQueue.query('SELECT * FROM _queue');
    return rows;
}

async function queueTriage() {
    const {rows} = await dbQueue.query('SELECT * FROM _queue WHERE UPPER(status) = \'WAITING FOR TRIAGE\'');
    return rows;
}

async function queueDoctor() {
    const {rows} = await dbQueue.query('SELECT * FROM _queue WHERE UPPER(status) = \'WAITING FOR DOCTOR\'');
    return rows;
}

async function queuePayment() {
    const {rows} = await dbQueue.query('SELECT * FROM _queue WHERE UPPER(status) = \'WAITING FOR PAYMENT\'');
    return rows;
}

async function queueCheckout() {
    const {rows} = await dbQueue.query('SELECT * FROM _queue WHERE UPPER(status) = \'WAITING FOR CHECKOUT\'');
    return rows;
}