//
//  shop.swift
//  susworkspace
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct shop: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        VStack {
            Spacer().frame(height:30)
            VStack(spacing: 10.0) {
                
                Text("Shop Conciously").font(.custom("AlegreyaSansSC-Medium", size: 37))
                
                Text("Will you use everything you buy in the long run?").font(.custom("AlegreyaSansSC-Regular", size: 25)).fixedSize(horizontal: false, vertical: true)
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("Shop more conciously by:").font(.custom("AlegreyaSansSC-Regular", size: 25)).fixedSize(horizontal: false, vertical: true)
                    HStack {
                        Text("- avoiding fast fashion").font(.custom("AlegreyaSansSC-Regular", size: 20))
                        Spacer().frame(width: 100)
                    }
                    Text("- thinking long term (buying more efficient appliances)").font(.custom("AlegreyaSansSC-Regular", size: 20)).fixedSize(horizontal: false, vertical: true)
                    Text("- being aware of the resources used to make the product (ex. does it endanger wildlife?)").font(.custom("AlegreyaSansSC-Regular", size: 20)).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
            
        }.background(Rectangle() .foregroundColor(yellowTheme).ignoresSafeArea())
    }
}

struct shop_Previews: PreviewProvider {
    static var previews: some View {
        shop()
    }
}
