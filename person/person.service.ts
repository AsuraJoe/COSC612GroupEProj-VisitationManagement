const dbPerson=require('../_helpers/db');

module.exports= {
    getPatients,
    getDoctors
};

//Funtion to get the queue
async function getPatients() {
    const {rows} = await dbPerson.query('SELECT * FROM _patient');
    return rows;
}

async function getDoctors() {
    const {rows} = await dbPerson.query('SELECT * FROM _doctor');
    return rows;
}