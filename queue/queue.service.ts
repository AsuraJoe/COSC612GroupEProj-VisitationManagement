const dbQueue=require('../_helpers/db');

module.exports= {
    getQueue
};

//Funtion to get the queue
async function getQueue() {
    const {rows} = await dbQueue.query('SELECT * FROM _queue');
    return rows;
}