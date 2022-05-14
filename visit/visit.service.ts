const db = require('../_helpers/db');
const visit = process.env.NODE_ENV==='production'? require('yesql')('/app/SqlScripts/', {type: 'pg', useNullForMissing: true}): require('yesql')('/COSC612GroupEProj-VisitationManagement/SqlScripts/', {type: 'pg', useNullForMissing: true});
//The visit module help load sql queries from folder SqlScript as the path suggested into functions

module.exports= {
    getALL,
    create,
    delete: _delete
};

//Function to get all the visits
async function getALL() {
    const {rows} = await db.query('SELECT * FROM visit');
    return rows;
};
//Function to add a visit
async function create(visitParam) {
    if(visitParam.visit_date==null){ // if statement to set date to now if date is not entered
        const date = new Date();
        visitParam.visit_date = date.toISOString();
    }
    await db.query(visit.addVisit(visitParam));
};
//Function to delete a visit
async function _delete (visitParam) {
    await db.query(`DELETE FROM visit WHERE visit_id =${visitParam.visit_id}`);
}