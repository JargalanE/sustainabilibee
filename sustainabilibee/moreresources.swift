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
        VStack(spacing:30) {
            HStack(spacing:20) {
                Text("More Resources")
                    .font(.custom("AlegreyaSansSC-Regular", size: 32))
                    .multilineTextAlignment(.center)
               
                Image("info").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit).frame(width: 40.0)
            }
            
            HStack {
                
                VStack (spacing: 15){
                    Text("• We are the Weather by John    Safran Foer")
                        .font(.custom("OpenSans-Light", size: 21))
                    Text("• Netflix Documentary:          Seaspiracy")
                        .padding(.leading, -30.0).font(.custom("OpenSans-Light", size: 21))
                    Text("• Documentary: David Attenborough: A Life on Our Planet")
                        .padding(.leading, -24.0).font(.custom("OpenSans-Light", size: 21))
                    Text("• Follow Greta Thunberg")
                        .multilineTextAlignment(.leading)
                        .padding(.leading, -68.0).font(.custom("OpenSans-Light", size: 21))
                    Text("• Calculate your personal carbon footprint to understand your starting point").padding(.leading, -2.0)
                        .font(.custom("OpenSans-Light", size: 21))
                    Link("Take the quiz here!", destination: URL(string: "https://www.theenvironmentexcuse.org/carbon/")!).tint(.black).background(Rectangle().fill(yellowTheme)).cornerRadius(5).font(.custom("OpenSans-Light", size: 21))
                }
            }
        }.padding(50)
    }
}

struct moreresources_Previews: PreviewProvider {
    static var previews: some View {
        moreresources()
    }
}
