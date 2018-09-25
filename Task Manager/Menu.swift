//
//  Menu.swift
//  Task Manager
//
//  Created by Cody Dubree on 9/24/18.
//  Copyright © 2018 Cody Dubree. All rights reserved.
//

import Foundation
class Menu {
    let taskManager = Tasks()
    var shouldQuit = false
    
    func go() {
        
        while !shouldQuit{
            printMenu()
            var input = getInput()
            while validateInput(input) == false {
                
                printMenu()
                input = getInput()
            }
            handleInput(input)
            
        }
    }
    func validateInput(_ input: String) -> Bool {
        let validMenusOptions = Array(1...8)
        guard let number = Int(input) else {
            return false
        }
        return validMenusOptions.contains(number)
    }
    
    
    func printMenu() {
        print("""
        Task Menu
        1 Add Task
        2 Remove Task
        3 List Tasks
        4 Completed tasks
        5 Uncompleted Tasks
        6 list uncompleted tasks
        7 list Complete tasks
        8 Quit
""")
    }
    
    func handleInput(_ input: String) {
        switch input {
        case "1":
            taskManager.addTasks()
        case "2":
            taskManager.removeTask()
        case"3":
            taskManager.listTasks()
        case"4":
            taskManager.markCompleted()
        case"5":
            taskManager.uncompletedTasks()
        case "6":
            taskManager.listUnfinishedTasks()
        case "7":
         taskManager.ListCompleteTasks()
        case "8":
            quit()
        default:
            break
            
            
        }
        
    }
    func quit() {
        
        shouldQuit = true
        print("Thanks for Using the Application")
    }
    func getInput() -> String {
        var userInput = readLine()
        while userInput == nil || userInput == "" {
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
}
