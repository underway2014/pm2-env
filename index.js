var shell = require('shelljs');

module.exports = function() {
    shell.exec(Object.keys(arguments).reduce((a, b) => a + ` "${arguments[b]}"`, './helper.sh'));
}
