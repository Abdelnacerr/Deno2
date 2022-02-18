import {Client} from "https://deno.land/x/postgres/mod.ts";
import "https://deno.land/x/dotenv/load.ts";

const pool = new Client({
    user: Deno.env.get('DB_USER'),
    pool: Deno.env.get('DB_NAME'),
    hostname: Deno.env.get('DB_HOSTNAME'),
    port: parseInt(Deno.env.get('DB_PORT')!)
});

await pool.connect();

export default pool;
