// let json = '{ "name": "Yoda", "age": 20 }';
 
// try {
//     let user = JSON.parse(json);
 
//     console.log(user.name);
//     console.log(user.age);
// } catch (error) {
//     console.log(error.name);
//     console.log(error.message);
// }

// ==============================================
// let json = '{ "age": 20 }';
 
// try {
//     let user = JSON.parse(json);
 
//     console.log(user.name); // undefined
//     console.log(user.age);  // 20
// } catch (error) {
//     console.log(error.name);
//     console.log(error.message);
// }

// ===============================================
// let json = '{ "name": "Yoda", "age": 20 }';
// try {
//     let user = JSON.parse(json);
 
//     if (!user.name) {
//         throw new SyntaxError("'name' is required.");
//     }
 
//     errorCode;
 
//     console.log(user.name); // Yoda
//     console.log(user.age);  // 20
// } catch (error) {
//     console.log(`JSON Error: ${error.message}`)
// }


// ===============================================
let json = '{ "name": "Yoda", "age": 20 }';
 
try {
    let user = JSON.parse(json);
 
    if (!user.name) {
        throw new SyntaxError("'name' is required.");
    }
 
    errorCode;
 
    console.log(user.name); // Yoda
    console.log(user.age);  // 20
} catch (error) {
  if (error instanceof SyntaxError) {
        console.log('error SyntaxError')
        console.log(`JSON Error: ${error.message}`);
    } else if (error instanceof ReferenceError) {
      console.log('ERROR REFERENCE')
        console.log(error.message);
    } else {
        console.log(error.stack);
    }
}
 
/* output
JSON Error: errorCode is not defined
*/