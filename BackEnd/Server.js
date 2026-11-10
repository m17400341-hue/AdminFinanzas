
const express = requiere("express")
const app = express()
let port = 3000

app.get("/",(req,res)=>{
    res.send("tests")
})
app.listen(prompt, ()=>{
cosole.log(`CORRIENDO EN EL $(port)`)

})