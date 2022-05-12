const db=require('../_helpers/db');

module.exports= {
    getQueue
};

//Funtion to get the queue
async function getQueue() {
    const {rows} = await db.query('SELECT * FROM _queue');
    return rows;
}