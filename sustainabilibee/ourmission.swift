//
//  ourmission.swift
//  sustainabilibee
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ourmission: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        NavigationStack{
            VStack {
                
                HStack(spacing:20) {
                    Text("Our Mission")
                        .multilineTextAlignment(.center).font(.custom("AlegreyaSansSC-Regular", size: 32))
                    
                    Image("target").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit).frame(width: 50.0)
                    
                }
                
                Spacer().frame(height:30)
                
                Text("The efforts of 1 single bee may not be world-changing, but thousands of bees together can support a whole ecosystem. However, without each individual bee, it’s impossible to make anything happen.")
                    .font(.custom("OpenSans-Light", size: 21))
                    .multilineTextAlignment(.center)
                
                Spacer().frame(height:30)
                
                Image("logo")
                
            }.padding(50)
                .toolbar{
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
                                HStack(spacing: -10.0){
                                    Text("1")
                                    NavigationLink(destination: goaltracker().navigationBarBackButtonHidden(true)) {
                                        Image("honey")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                    }
                                }
                                //                tipsLink
                                NavigationLink(destination: sustainabilitytips().navigationBarBackButtonHidden(true)) {
                                    Image("tips")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                //                aboutUsLink
                                Image("target")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 28)
                                //                more infoLink
                                NavigationLink(destination: moreresources().navigationBarBackButtonHidden(true)) {
                                    Image("info")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                            }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        }
                    }
                        
                    }
        }
    }
}

struct ourmission_Previews: PreviewProvider {
    static var previews: some View {
        ourmission()
    }
}
