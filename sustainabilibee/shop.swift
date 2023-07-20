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
        ZStack {
            yellowTheme.ignoresSafeArea()
            VStack {
                
                VStack(spacing: 10.0) {
                    
                    Text("Shop Conciously").font(.custom("AlegreyaSansSC-Medium", size: 37))
                    
                    Text("Will you use everything you buy in the long run?").font(.custom("AlegreyaSansSC-Regular", size: 25)).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true)
                    VStack(alignment: .leading, spacing: 6.0) {
                        Text("Shop more conciously by:").font(.custom("AlegreyaSansSC-Regular", size: 25)).fixedSize(horizontal: false, vertical: true)
                        HStack {
                            Text("• avoiding fast fashion").font(.custom("OpenSans-Light", size: 20))
                            Spacer().frame(width: 100)
                        }
                        Text("• thinking long term (buying more efficient appliances)").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                        Text("• being aware of the resources used to make the product (ex. does it endanger wildlife?)").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                        Text("Reading Labels:").font(.custom("AlegreyaSansSC-Regular", size: 25)).fixedSize(horizontal: false, vertical: true)
                                   Text("• look for “shade-grown” coffee (grown while keeping forest habitats intact)").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                                   Text("• choose Fair Trade certified goods (supports companies dedicated to sustainable production & paying fair wages").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                                   Text("• buy organic food (keeps harmful pesticides out of land and water, protecting farm workers, wildlife and families)").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                    }.padding(10)
                }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
                
            }
        }
    }
}

struct shop_Previews: PreviewProvider {
    static var previews: some View {
        shop()
    }
}
