// Para ejecutarlo: node exec-store-procedure-by-parameter.js

"use strict";

const config = require("./config");
const sqlConnection = require("./sql");
const sql = new sqlConnection(config.connectionSQL);

(async () => {
    try {
        let select = await sql.execStoreProcedureById("USP_Test_ListById", 1);
        console.log(select.recordset);
    } catch (error) {
        sql.close();
        console.log(error);
    }
})();