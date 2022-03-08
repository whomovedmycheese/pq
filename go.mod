package main
 
// connecting to a PostgreSQL database with Go's database/sql package   
import (
    "database/sql"
    "fmt"
    _ "github.com/whomovedmycheese/pq"
)
     
func main() {
     
/*
variables required for connection string: connStr
 
user= (using default user for postgres database)
dbname= (using default database that comes with postgres)
password = (password used during initial setup)
host = (hostname or IP Address of server)
sslmode = (must be set to disabled unless using SSL)
*/
     
  connStr := "user=dbmasteruser dbname=AIQ-Alpaca-backend password=&[zaff;x{U:ndwPW3Q1+Cdb$P9x!Z.%V host=ls-454b26c08c27219162d2f65e2cf5625ef0c114d8.caf2ohtlyucy.us-east-2.rds.amazonaws.com sslmode=disable"
  db, err := sql.Open("postgres", connStr)
  if err != nil {
    panic(err)
  }
  defer db.Close()
     
  err = db.Ping()
  if err != nil {
    panic(err)
  }
  fmt.Printf("\nSuccessfully connected to database!\n")
}
