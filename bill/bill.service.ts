const dbBill=require('../_helpers/db');

module.exports= {
    getBill
};

//Funtion to get the queue
async function getBill(id) {
    const {rows} = await dbBill.query(`SELECT treatment, treatment_cost, quantity FROM visit_billing WHERE visit_id = ${id}`);
    return rows;
}