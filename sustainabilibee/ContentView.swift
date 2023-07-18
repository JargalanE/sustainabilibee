//
//  ContentView.swift
//  sustainabilibee
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        NavigationStack {
            VStack(spacing: 50.0){
                Spacer().frame(height: 50)
                VStack{
                    Image("logo")
                    Text("sustainabilibee")
                        .font(.custom("AlegreyaSansSC-Regular", size: 32))
                        .fontWeight(.semibold)
                }
                
                NavigationLink(destination: Text("Goal Tracker")) {
                    Text("Goal Tracker")
                        .font(.custom("AlegreyaSansSC-Regular", size: 32))
                        .padding(EdgeInsets(top: 10, leading: 80, bottom: 10, trailing: 80))
                        .foregroundColor(Color.black)
                        .background(yellowTheme)
                        .cornerRadius(30)
                        
                }
                NavigationLink(destination: Text("Tips")) {
                    Text("Sustainability tips")
                        .font(.largeTitle)
                        .padding(EdgeInsets(top: 10, leading: 45, bottom: 10, trailing: 45))
                        .foregroundColor(Color.black)
                        .background(yellowTheme)
                        .cornerRadius(30)

                }
                NavigationLink(destination: Text("Our Mission")) {
                    Text("Our Mission")
                        .font(.largeTitle)
                        .padding(EdgeInsets(top: 10, leading: 85, bottom: 10, trailing: 85))
                        .foregroundColor(Color.black)
                        .background(yellowTheme)
                        .cornerRadius(30)

                }
                NavigationLink(destination: Text("More resources")) {
                    Text("More resources")
                        .font(.largeTitle)
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 10, trailing: 60))
                        .foregroundColor(Color.black)
                        .background(yellowTheme)
                        .cornerRadius(30)

                }
                Spacer().frame(height: 80)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
