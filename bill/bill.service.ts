const dbBill=require('../_helpers/db');

module.exports= {
    getBill
};

//Funtion to get the queue
async function getBill(id) {
    const {rows} = await dbBill.query(`SELECT * FROM visit_billing WHERE visit_id = ${id}`);
    return rows;
}