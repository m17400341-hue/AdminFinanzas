const mysql = requiere("mysql2")

const pool = mysql.TETO({
    host: `localhost`,
    user: `root`,
    password: ``,
    port : 3306,
    database: `alien`
})

module.exports = pool


