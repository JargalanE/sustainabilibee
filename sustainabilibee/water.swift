//
//  water.swift
//  sustainabilibee
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct water: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        ZStack {
            yellowTheme.ignoresSafeArea()
        VStack {
            
            VStack(spacing: 20.0) {
                Text("Conserving Water").font(.custom("AlegreyaSansSC-Medium", size: 37))
                Text("Did you know that the average person wastes 30 gallons of water/day?").font(.custom("AlegreyaSansSC-Regular", size: 25)).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true)
                VStack(alignment: .leading, spacing: 15.0) {
                    Text("Conserve water by:").font(.custom("AlegreyaSansSC-Regular", size: 24)).fixedSize(horizontal: false, vertical: true)
                    
                    Text("• taking shorter showers")
                        .font(.custom("OpenSans-Light", size: 20))
                    
                    
                    Text("• turning off the faucet while you brush your teeth").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                    Text("• keeping track of how long your sprinklers run").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                    Text("• fixing leaking faucets early").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                    
                    
                }.padding(10)
            }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
        }
    }
    }
}

struct water_Previews: PreviewProvider {
    static var previews: some View {
        water()
    }
}
