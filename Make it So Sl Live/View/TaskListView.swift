//
//  ContentView.swift
//  Make it So Sl Live
//
//  Created by Bruno Brito on 12/05/21.
//

import SwiftUI

struct TaskListView: View {
    
    let tasks = testDataTasks
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                //MARK: - Lista de tarefas
                List(tasks){ task in
                    TaskCell(task: task)
                }
                //MARK: - Botão de adição de tarefas
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Add new task")
                    }
                })
                .padding(.horizontal)
            }
            .navigationTitle("Tasks")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}


//MARK: - estrutura do item da lista
struct TaskCell: View {
    
    let task: Task
    
    var body: some View {
        HStack{
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 30, height: 30)
            Text(task.title)
                .padding()
        }
    }
}
