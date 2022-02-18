import { Application } from "https://deno.land/x/oak@v10.2.0/mod.ts"
import router from "./routes/routes.ts"

const app = new Application()

app.use(router.routes())
app.use(router.allowedMethods())

const PORT = Deno.env.get("PORT") || 8081

console.log(`Server running on port ${PORT} `)

app.listen({ port: +PORT })
