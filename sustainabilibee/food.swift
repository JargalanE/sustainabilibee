//
//  food.swift
//  sustainabilibee
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct food: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        ZStack {
            yellowTheme.ignoresSafeArea()
        VStack {
            
            VStack(spacing: 20.0) {
                Text("Food Consumption").font(.custom("AlegreyaSansSC-Medium", size: 37))
                Text("Did you know that what you eat also affects the environment?").font(.custom("AlegreyaSansSC-Regular", size: 25)).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true)
                VStack(alignment: .leading, spacing: 15.0) {
                    Text("Decrease the environmental impact your food has by:").font(.custom("AlegreyaSansSC-Regular", size: 24)).fixedSize(horizontal: false, vertical: true)
                    HStack {
                        Text("• Making a meal plan to avoid overspending")
                            .font(.custom("OpenSans-Light", size: 20))
                        Spacer().frame(width: 100)
                    }
                    Text("• Trying to eat less meat").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                    Text("→ The meat production industry produces large amounts of water waste, pollution, and greenhouse gas emissions").font(.custom("OpenSans-Light", size: 20)).padding(.leading, 30.0).fixedSize(horizontal: false, vertical: true)
                    Text("• Buy take out less often to reduce waste from food/delivery packaging (try making more home-cooked meals!)").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
                    
                }.padding(10)
            }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
        }
    }










    }
}

struct food_Previews: PreviewProvider {
    static var previews: some View {
        food()
    }
}
