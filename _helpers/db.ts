import { Pool } from "pg";
import * as dotenv from "dotenv";

dotenv.config();
/**
 * 
 */
// local database
const credentials = {
    user: process.env.DB_user,
    host: process.env.DB_host,
    database: process.env.DB_database,
    password: process.env.DB_pass,
    port: 5432,
};
const connectionString= process.env.DB_URI; //URI for remote server

const pool = new Pool({connectionString,});

module.exports=pool;

