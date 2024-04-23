// const student = {
//     fullName : "Jay",
//     CPI : "3.86",
//     isPass : true

// };

// console.log(student["CPI"]);

// let str = "Jay";
// console.log(str[3]);

// let sentence = `Hello World`;
// console.log(sentence);

// let output = `The student ${str} is topper`;
// console.log(output);

// let fullName = prompt("Enter Name:");
// fullName = fullName.toLowerCase();
// fullName = fullName.trim();

// let len = fullName.length;

// let userName = fullName + len;
// console.log(userName);

let marks = [85, 97, 44, 37, 76, 60];
let sum = 0;
for(let mark of marks) {
    sum = sum + mark; 
}

console.log(`average = ${sum/marks.length}`);