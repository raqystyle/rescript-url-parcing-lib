# UrlParser (ReScript version)

This is an experiment to write a URL parser with ReScript.

The trick is, the URL may contain variables. For example, `http://{{host}}/api/{{endpoint}}?query={{param}}`

First run

```sh
npm install
```

After that, reload the VSCode and all the plugins should get configured. How you can build the project and run some demos

```sh
npm run res:build
npm run res:demo
```