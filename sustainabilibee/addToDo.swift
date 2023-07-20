//
//  toDoItem.swift
//  goal_tracker_h
//
//  Created by Jargalan Enkh-Otgon on 2023.07.19.
//

import SwiftUI

struct addToDo: View {
    @Environment(\.managedObjectContext) var context
    @Binding var showNewTask : Bool
    @State var title: String
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/255, blue: 80/255)
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(yellowTheme)
                    .frame(width: 300, height: 450)
                VStack{
                    Text("New Goal").font(.custom("AlegreyaSansSC-Regular", size: 28))
                    TextEditor(text: $title)
                        .frame(width: 250, height: 300)
                        .cornerRadius(15)
                    Button(action: {
                        if title != ""{
                            self.addTask(title: self.title)
                        }
                        self.showNewTask = false
                    }) {
                        Text("Add")
                            .font(.custom("AlegreyaSansSC-Regular", size: 28))
                            .foregroundColor(Color.black)
                    }.buttonStyle(.borderedProminent)
                        .tint(.white)
                        .cornerRadius(30)
                }
                Button(action: {
                    self.showNewTask = false
                }) {
                    Text("X")
                        .font(.title3)
                        .foregroundColor(Color.black)
                }.position(x: 325, y: 20)
            }
            Spacer().frame(height: 200)
        }
    }
    private func addTask(title: String) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
    }
}

struct addToDo_Previews: PreviewProvider {
    static var previews: some View {
        addToDo(showNewTask: .constant(true), title: "")
    }
}

