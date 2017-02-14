'use strict';

console.log('Starting');
const child_process = require('child_process');

setInterval(() => {
    console.log('Spawning test.sh');
    const child = child_process.spawn('bash', [__dirname + '/test.sh']);
    child.on('exit', () => {
        console.log('process exit');
    });

    child.stdout.pipe(process.stdout)
    child.stderr.pipe(process.stderr)
}, 2000);

