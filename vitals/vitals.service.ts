const dbVitals = require('../_helpers/db');
const vitals = process.env.NODE_ENV==='production'? require('yesql')('/ehrs-visit/SqlScripts/', {type: 'pg', useNullForMissing: true}): require('yesql')('/COSC612GroupEProj-VisitationManagement/SqlScripts/', {type: 'pg', useNullForMissing: true});
//The vitals module help load sql queries from folder SqlScript as the path suggested into functions

module.exports= {
    getVitals,
    createVitals,
    delete: deleteVitals
};

//Function to get all the vitals
async function getVitals() {
    const {rows} = await dbVitals.query('SELECT * FROM vitals');
    return rows;
};
//Function to add a vitals
async function createVitals(vitalsParam) {
    if(vitalsParam.createVitalsd_date==null){ // if statement to set date to now if date is not entered
        const date = new Date();
        vitalsParam.vitals_date = date.toISOString();
    }
    await dbVitals.query(vitals.addVitals(vitalsParam));
};

//Function to delete a vitals
async function deleteVitals (vitalsParam) {
    await dbVitals.query(`DELETE FROM vitals WHERE vitals_id =${vitalsParam.vitals_id}`);
}