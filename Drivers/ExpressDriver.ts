import cors from "cors";
import helmet from "helmet";
import express from "express";
import cookieParser from"cookie-parser";

const version = require('../../package.json').version

export class ExpressDriver{
    public static app = express();
    
    public static build() {
        return this.buildDriver();
    }

    private static buildDriver() {
        this.app.use(helmet());
        this.app.use(express.json());
        this.app.use(cors({ origin: true, credentials: true }))
        this.app.use(cookieParser());
        
        this.initServer();
        return this.app;
    }

    private static initServer() {
        this.app.get("/", (req, res) => {
            res.json({ message: `Welcome to the Employee-Patient-Management-Service Version ${version}`});
        });
    }
}