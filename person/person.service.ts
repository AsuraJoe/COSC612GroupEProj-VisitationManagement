const dbPerson=require('../_helpers/db');

module.exports= {
    getPatients,
    getPatient,
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

async function getPatient(id) {
    const {rows} = await dbPerson.query(`SELECT * FROM _patient WHERE patientid= \'${id}\'`);
    return rows;
}