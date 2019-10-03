'use strict';
const fs = require('fs');
const path = require('path');
const util = require('util');

let name = path.parse(process.argv[2]).name;
let binary = fs.readFileSync(process.argv[2]);

process.stdout.write("\n\t.section .rodata\n");
process.stdout.write(util.format("\t.global\t%s\n", name));
process.stdout.write("\t.align\t2\n");
process.stdout.write(util.format("\n%s:\n", name));
process.stdout.write(util.format("\t.short\t%d\n", binary.readUInt16LE(0)));
process.stdout.write(util.format("\t.short\t%d\n", binary.readUInt16LE(2)));
process.stdout.write(util.format("\t.int\t%d\n", binary.readUInt32LE(4)));
process.stdout.write(util.format("\t.int\t%d\n", binary.readUInt32LE(8)));
process.stdout.write(util.format("\t.int\t%d\n\n", binary.readUInt32LE(12)));

for (let i = 16; i < binary.length; i++) {
    if (i % 8 === 0) {
        process.stdout.write("\t.byte\t");
    } else {
        process.stdout.write(",");
    }

    binary.readUInt8(i);
    process.stdout.write("0x" + binary.readUInt8(i).toString(16).toUpperCase().padStart(2, '0'));
    if (i % 8 === 7) {
        process.stdout.write("\n");
    }
}

process.stdout.write("\n\n\t.end\n");
