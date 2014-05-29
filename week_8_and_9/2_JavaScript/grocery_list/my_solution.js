// U3.W8-9: 


// I worked on this challenge [by myself, with: ].

// 2. Pseudocode



// 3. Initial Solution
var prompt = require('prompt');
prompt.start();

var groceryList = {
  list: [],
  
  addItem: function(item) {
  list.push(item);
  },
  
  removeItem: function(item) {
    var index = list.indexOf(item);
    list.splice(index,1);
  },
  
  printList: function () {
    console.log(list);
  }
  
}


var userInput = {
  
  start: function () {
    var command = "";
    while (true) {
      
    prompt.get(['enterCommand'], function (err, result) {
    console.log('Command-line input received:');
    console.log('  command: ' + result.enterCommand);
    command = result.enterCommand;
  });
      
      if (command === "add") {
        add();
      }
      else if (command === "remove") {
        remove();
      }
      else if (command === "display") {
        printList();
      }
      else if (command === "exit"){
        console.log("Exiting...");
        break;
      }
    }
  },
  
  add: function () {
    var itemToAdd = prompt("Enter an item to add to the grocery list");
    groceryList.addItem (itemToAdd);
  },
  
  remove: function () {
    var itemToRemove = prompt("Enter an item to remove from the grocery list");
    groceryList.removeItem (itemToRemove);
  },
  
  printList: function () {
    groceryList.printList();
  }

}

userInput.start();


//  Reflection 
// Jeff and I put a good two hours into this and couldn't get the prompt to work. We installed 
// a seperate library to handle command-line prompts and had some issues setting it up. We were
// botha little rusty with our Javascript and this excercise was really helpful in refreshing
// all the syntactical niceities of JVS.
