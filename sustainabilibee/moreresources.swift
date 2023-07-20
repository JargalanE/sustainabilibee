//
//  moreresources.swift
//  sustainabilibee
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct moreresources: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)

    var body: some View {
        NavigationStack{
            VStack(spacing:30) {
                HStack(spacing:20) {
                    Text("More Resources")
                        .font(.custom("AlegreyaSansSC-Regular", size: 32))
                        .multilineTextAlignment(.center)
                    
                    Image("info").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit).frame(width: 40.0)
                }
                
                HStack {
                    
                    VStack (alignment: .center, spacing: 15){
                        Text("• Support and vote for environmental protection policies")
                            .multilineTextAlignment(.leading)
                            .font(.custom("OpenSans-Light", size: 21))
                        Link("• We are the Weather by Jonathan Safran Foer", destination: URL(string: "https://wearetheweatherbook.com")!).tint(.black).background(Rectangle().fill(yellowTheme)).cornerRadius(5).font(.custom("OpenSans-Light", size: 21)).frame(maxWidth:.infinity)
                        Link("• Netflix Documentary: Seaspiracy", destination: URL(string: "https://www.seaspiracy.org")!).tint(.black).background(Rectangle().fill(yellowTheme)).cornerRadius(5).font(.custom("OpenSans-Light", size: 21))
                        Link("• Documentary: David Attenborough: A Life on Our Planet", destination: URL(string: "https://www.netflix.com/title/80216393")!).tint(.black).background(Rectangle().fill(yellowTheme)).cornerRadius(5).font(.custom("OpenSans-Light", size: 21))
                        
                        Text("• Take a quiz and calculate your personal carbon footprint to understand your starting point")
                            .font(.custom("OpenSans-Light", size: 21))
                        Link("Take the quiz here!", destination: URL(string: "https://www.theenvironmentexcuse.org/carbon/")!).tint(.black).background(Rectangle().fill(yellowTheme)).cornerRadius(5).font(.custom("OpenSans-Light", size: 21))
                    }
                }
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
                                NavigationLink(destination: ourmission().navigationBarBackButtonHidden(true)) {
                                    Image("target")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }
                                //                more infoLink
                                Image("info")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 28)
                            }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        }
                    }
                        
                    }
        }
    }
}

struct moreresources_Previews: PreviewProvider {
    static var previews: some View {
        moreresources()
    }
}
