
/*:
 - - -
 * callout(Assignment 3):
You will need to:
 - Print all your Todos (small description)
 - Print a single Todo (large description)
 - Add a Todo
 - Update a Todo
 - Delete a Todo
 
 **Constraints:**

- Model a Todo using a Class or Structure
- Create a class that will manage your Todos, no global functions
- Create methods on your manager class to:
    - Get all your Todos
    - Get a single Todo passing an id as an argument
    - Add a Todo
    - Update a Todo
    - Delete a Todo
 */

import UIKit


let myData = data()

// Add a Todo
myData.addItem(ToDo(id: 0, name: "Assignment 3", task: "ToDos assignment with classes", date: "5/2/2016", assigned: "Scott"))
myData.addItem(ToDo(id: 1, name: "Assignment 4", task: "ToDos assignment with everythings", date: "5/2/2016", assigned: "Scott"))

//Print all your Todos (small description)
myData.printAllToDos()

// Print a single Todo (large description)
myData.findByID(0)

// Update a Todo
myData.replaceAtID(1, item: ToDo(id: 1, name: "Sleep in", task: "Get plenty of rest", date: "5/7/2016", assigned: "Scott"))
myData.printAllToDos()

// Delete a Todo
myData.deleteAtID(0)
myData.printAllToDos()
