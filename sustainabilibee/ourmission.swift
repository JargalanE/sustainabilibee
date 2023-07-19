//
//  ourmission.swift
//  sustainabilibee
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ourmission: View {
    var body: some View {
        VStack {
            
            HStack(spacing:20) {
                Text("Our Mission")
                    .font(.title)
                    .multilineTextAlignment(.center)
               
                Image("target").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit).frame(width: 50.0)

            }
            
            Spacer().frame(height:30)
            
            Text("The efforts of 1 single bee may not be world-changing, but thousands of bees together can support a whole ecosystem. However, without each individual bee, it’s impossible to make anything happen.")
                .font(.title3)
            
            Spacer().frame(height:30)
            
            Image("logo")
            
        }.padding(50)
    }
}

struct ourmission_Previews: PreviewProvider {
    static var previews: some View {
        ourmission()
    }
}
