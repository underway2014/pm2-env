const shell = require('shelljs');
const path = require('path')

module.exports = function() {
    shell.exec(Object.keys(arguments).reduce((a, b) => a + ` "${arguments[b]}"`, path.join(__dirname, './helper.sh')));
}
