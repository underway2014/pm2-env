#!/usr/bin/env node
let se = require('./index')
let args = process.argv.slice(2);
se(...args)