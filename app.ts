import { ExpressDriver } from './_drivers/ExpressDriver';
import * as http from 'http';
import * as dotenv from 'dotenv';
// import { PostgresDriver } from './_drivers/PostgresDriver';
dotenv.config()

const app = ExpressDriver.build();
const server = http.createServer(app);

const PORT =process.env.PORT||3000;

server.listen(PORT,async () => {
    console.log(`VisitationAPI started at http://localhost:${ PORT }`);
});

// server.on("listening", async () =>{
//     try {
//         await PostgresDriver.connect();
//         console.log("DB Connection Successful!");

//     } catch (err) {
//         console.log(`Unable to connect to database ${err}`)
//     }
// });