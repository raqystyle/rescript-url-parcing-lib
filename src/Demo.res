let inputs = [
  "localhost",
  "localhost:8080",
  "http://localhost:8080",
  "{{prot}}://user:pwd@localhost:8080#test-hash",
  "{{prot}}://{{user}}:{{password}}@localhost:8080#test-hash",
  "http://user:pwd@localhost:8080#test-hash",
  "http://localhost:8080#test-hash",
  "http://www.test.com:8080/api/v1/",
  "http://localhost:8080/api?a=1&b=2#test-hash",
]

let start = Date.now()

inputs->Array.forEach(input => {
  Js.Console.log(`Parsing: ${input}`)
  Js.Console.log(
    Main.urlParser
    ->Parser.runParser(input)
    ->Option.map(((_, xs)) => {
      xs->List.flat->Main.toResults
    })
    ->Option.getOr(Main.initial),
  )
})

let parsingTime = Float.toString(Date.now() -. start)

Js.Console.log(`Parsing everything took ${parsingTime}ms`)
