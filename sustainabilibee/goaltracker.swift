//
//  ContentView.swift
//  goal_tracker_h
//
//  Created by Jargalan Enkh-Otgon on 2023.07.19.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
 
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(lineWidth: 2)
                .frame(width: 25, height: 25)
                .cornerRadius(5.0)
                .overlay {
                    Image(systemName: configuration.isOn ? "checkmark" : "")
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
 
            configuration.label
 
        }
    }
}

struct goaltracker: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults<ToDo>
    @State private var isChecked = false
    @State private var isDisabled = true
    @State private var showNewTask = false
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/255, blue: 80/255)
    @State private var streak = 0
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Goal Tracker")
                            .font(.custom("AlegreyaSansSC-Regular", size: 32))
                        Image("honey")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25)
                    }
                    ZStack{
                        VStack{
                            List {
                                ForEach (toDoItems) { toDoItem in
                                    Toggle(isOn: $isChecked) {
                                        Text(toDoItem.title ?? "No title")
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(yellowTheme)
                                            .cornerRadius(25)
                                        
                                    }
                                    .toggleStyle(CheckboxToggleStyle())
                                    
                                }.onDelete(perform: deleteTask)
                            }.frame(height: 500)
                                .scrollContentBackground(.hidden)
                                .background(.white)
                            
                            Spacer()
                            Button(action: {
                                showNewTask = true
                            }) {
                                Text("+")
                                    .font(.title)
                                    .padding()
                                    .foregroundColor(Color.black)
                                    .background(yellowTheme)
                                    .clipShape(Circle())
                            }.position(x: 325, y: 50)
                        }
                        if showNewTask {
                            addToDo(showNewTask: $showNewTask, title: "")
                        }
                    }
                }
            }.toolbar{
                ToolbarItem(placement: .bottomBar){
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(yellowTheme)
                        HStack(spacing: 20.0){
                            //                homeLink
                            NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                                Image("home")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                            }
                            //                GoalLink
                            HStack(spacing: 2.0){
                                Text("1")
                                
                                Image("honey")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 29)
                            }
                            //                tipsLink
                            NavigationLink(destination: sustainabilitytips().navigationBarBackButtonHidden(true)) {
                                Image("tips")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    
                            }
                            //                aboutUsLink
                            NavigationLink(destination: ourmission().navigationBarBackButtonHidden(true)) {
                                Image("target")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                            }
                            //                more infoLink
                            NavigationLink(destination: moreresources().navigationBarBackButtonHidden(true)) {
                                Image("info")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                            }
                        }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                    }
                }
                    
            }.accentColor(.black)
        }
    }
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)

            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
}

struct goaltracker_Previews: PreviewProvider {
    static var previews: some View {
        goaltracker()
    }
}
