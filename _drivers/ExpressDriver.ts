import cors from "cors";
const helmet = require('helmet');
import express from "express";
// import cookieParser from"cookie-parser";

const version = require('../package.json').version
const errorHandler = require('../_helpers/error-handler');
export class ExpressDriver{
    public static app = express();
    
    public static build() {
        return this.buildDriver();
    }

    private static buildDriver() {
        this.app.use(helmet());
        this.app.use(express.json());
        this.app.use(cors({ origin: true, credentials: true }))
        // this.app.use(cookieParser());
        
        this.app.use('/queue', require('../queue/queue.controller'));
        this.app.use('/visit', require('../visit/visit.controller'));
        this.app.use('/vitals', require('../vitals/vitals.controller'));
        this.initServer();
        return this.app;

        //error handler
        this.app.use(errorHandler);
    }

    private static initServer() {
        this.app.get("/", (req, res) => {
            res.json({ message: `Welcome to the Employee-Patient-Management-Service Version ${version}`});
        });
    }
}