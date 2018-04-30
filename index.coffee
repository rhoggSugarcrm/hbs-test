#!/usr/bin/env coffee

fs = require "fs"
handlebars = require "handlebars"
func = handlebars.compile(fs.readFileSync("template.hbs", "utf-8"))
obj =
	foo:
		goodbye: true
	world: "world"
# console.log(obj)
console.log(func(obj))
