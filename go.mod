package main
  
import (
    "database/sql"
    "fmt"
    _ "github.com/whomovedmycheese/pq"
)

func main() {      
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
