//
//  Task.swift
//  Make it So Sl Live
//
//  Created by Bruno Brito on 15/05/21.
//

import Foundation


struct Task: Identifiable{
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}


#if DEBUG
let testDataTasks = [
    Task(title: "implement UI", completed: true),
    Task(title: "Connect to Firebase", completed: false),
    Task(title: "??????", completed: false),
    Task(title: "Profit!!", completed: false)
]
#endif
