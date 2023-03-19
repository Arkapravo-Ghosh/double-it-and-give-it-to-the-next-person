const prompt=require("prompt-sync")({sigint:true});
var n1 = prompt("Enter a number: ");
console.log("Double it and give it to the next person: " + n1 * 2);
