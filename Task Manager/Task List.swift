//
//  Task List.swift
//  Task Manager
//
//  Created by Cody Dubree on 9/24/18.
//  Copyright © 2018 Cody Dubree. All rights reserved.
//

import Foundation
class Task {
    
    let name: String
    var completed: Bool = false
    var dueDate: Date?
    
    init(name: String){
        self.name = name
    }
    
}
