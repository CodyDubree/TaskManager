//
//  Tasks.swift
//  Task Manager
//
//  Created by Cody Dubree on 9/24/18.
//  Copyright © 2018 Cody Dubree. All rights reserved.
//

import Foundation
class Tasks {
    var toDo : [Task] = []
    func addTasks() {
        print("Please enter the name of the task you would like to add: ")
        var newTask = readLine()
        while newTask == nil || newTask == "" {
            print("Invalid task. Please enter task")
            newTask = readLine()
        }
        let taskToDo = Task(name: newTask!)
        
        toDo.append(taskToDo)
    }
    func listTasks(){
        for task in toDo {
            print(task.name)
            }
        }
    
    func removeTask() {
        for index in 0..<toDo.count {
            print("\(index). \(toDo[index].name)")
        }
        print("Please emter the number of the task you want to remove: ")
        var userInput = Int(readLine()!)
        let validTaskIndex = Array(0..<toDo.count)
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid Input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        toDo.remove(at: userInput!)
    }
    func markCompleted() {
        
        for index in 0..<toDo.count {
            if toDo[index].completed == false {
                print("\(index). \(toDo[index].name)")
            }
        }
        print("please enter the index of the task you wish to have complete: ")
        var userInput = Int(readLine()!)
        while userInput == nil {
            print("Invalid Input. Please enter a usuable index.")
            userInput = Int(readLine()!)
        }
        toDo[userInput!].completed = false
        
    }
    func ListCompleteTasks () {
        for task in toDo {
            if !task.completed {
                print(task.name)
            }
        }
    }
    func listUnfinishedTasks() {
        for task in toDo {
            if task.completed {
                print(task.name)
                
            }
        }
    }
    func uncompletedTasks() {
        
        for index in 1..<toDo.count {
            
            if toDo[index].completed  {
                
                print("\(index). \(toDo[index].name)")
                
            }
            
        }
        
        print("Please enter the index of the game you want uncpmplete:")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            
            print("Invalid input ")
            
            userInput = Int(readLine()!)
            
            
            
        }
        
    }
    
    
}
