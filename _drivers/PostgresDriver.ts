import { Pool } from "pg";
import * as dotenv from "dotenv";
//import { ServiceError, ServiceErrorReason } from '../shared/types/Errors';

dotenv.config();
/**
 * 
 */
//Code for local database
const credentials = {
    user: process.env.DB_user,
    host: process.env.DB_host,
    database: process.env.DB_database,
    password: process.env.DB_pass,
    port: 5432,
};

export class PostgresDriver {
    private static _pool: Pool;

    private constructor() {}

    /**
     * 
     */
    public static async connect(): Promise<void> {
        try {
            if (!this._pool) {
                this._pool = new Pool(
                    //process.env.DB_URI
                    credentials
                );
                await this._pool.connect();
            }
        } catch (error) {
            return Promise.reject(error);
        }
    }

    /**
     * 
     */
    public static async disconnect(): Promise<void> {
        if (this._pool) {
            this._pool.end();
        }
    }

    /**
     * 
     */
    static get pool(): Pool {
       /**
        if (!this._client) {
            throw new ServiceError("Connection to PostgresDB has not been established", ServiceErrorReason.INTERNAL);
        }
         */
        return this._pool;
    }
}
