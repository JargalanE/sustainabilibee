//
//  swaps.swift
//  susworkspace
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct swaps: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        VStack {
               Spacer().frame(height:30)
               VStack(spacing: 10.0) {
                Text("Sustainable Swaps").font(.custom("AlegreyaSansSC-Medium", size: 37))
                Text("Need somewhere to start? We got some simple swaps for you!").font(.custom("AlegreyaSansSC-Regular", size: 25)).fixedSize(horizontal: false, vertical: true)
                VStack(alignment: .leading, spacing: 8.0) {
                 Text("Replace everyday items like...").font(.custom("AlegreyaSansSC-Regular", size: 24)).fixedSize(horizontal: false, vertical: true)
                 
                  Text("- Straws → metal straws")
                     .font(.custom("OpenSans-Light", size: 20))
                 
                 
                 Text("- Plastic bottles → metal/reusable bottles").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                 Text("- Plastic bags → paper, cloth, or any reusable bags").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                  Text("- Cling film → biodegradable wrappers, reusable containers").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                  Text("- Single use tissues/towels → cloth tissues & towels").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                  Spacer()
                }.padding(10)
               }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
              }.background(Rectangle() .foregroundColor(yellowTheme).ignoresSafeArea())
    }
}

struct swaps_Previews: PreviewProvider {
    static var previews: some View {
        swaps()
    }
}
