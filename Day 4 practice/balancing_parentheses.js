
// the problem: For a parantheses to be balanced, they need to have
// a parentheses on both the left and right. The input string has a minimum of 1.
// output string provides the amount needed  
// 
// sudo code:
// step 1:


// my attempt:
// 0 = '()'
// 0 = '(())'
// 0 = '((()))'
// 1 = '())'
// 1 = '(()'
// 2 = '()))'
// 2 = '((()' 
// 2 = '(()('

// "0 array" = ['()', '(())', '((()))']
// "1 array" = ['(()', ]

// function testParentheses(input){
//     if "0 array" === input 
//         return (0)
//     else if "1 array" === input 
//         return (1) 
//     else 
//         return (3)
//     }
// }

// if string.length = 1 
//     return 1 
// else 





// phil's solution: 
// 
const balanceParentheses = (str) => {
    // 1. iterate over the str 
    // 2. use counters
    // 3. for each loop: 
        // make a condition for opening 
        //      increase our openings count
        // make a condition for closing
        //      if we have an opening already, 
        //          reduce count by 1
        //      if not 
        //          we need to add our missing parts

    let counter = 0
    let missing = 0

    for (let i = 0; i < str.length, i++){
        if (str[i] === '('){
            counter+=1 
        } 
        if (str[i] === ')')
            if (counter > 0){
                counter -= 1
            } else {
                missing += 1
            }
        }
    console.log({i, current: str[i], counter, missing})
}

const str1 = "(()())"
const str2 = "()))"
const str3 = ")"
const str4 = ")("

console.clear()

console.log("TESTING...")
console.log("2:", balanceParentheses(str2))
console.log("3:", balanceParentheses(str3))
console.log("4:", balanceParentheses(str4))