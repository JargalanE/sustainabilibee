//
// transportation.swift
// ourmission
//
// Created by Scholar on 7/20/23.
//
import SwiftUI
struct transportation: View {
  @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
  var body: some View {
    ZStack {
      yellowTheme.ignoresSafeArea()
      VStack {
        
        VStack(spacing: 20.0) {
          Text("Transportation").font(.custom("AlegreyaSansSC-Medium", size: 37))
          Text("Ever notice how many times you drive in one day? ").font(.custom("AlegreyaSansSC-Regular", size: 25)).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true)
          VStack(alignment: .leading, spacing: 15.0) {
            Text("Reduce your carbon footprint through travel by:").font(.custom("AlegreyaSansSC-Regular", size: 24)).fixedSize(horizontal: false, vertical: true)
            Text("• Driving less or using public transportation").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Text("→ Taking the bus to work one day").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Text("→ Biking to the grocery store").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Text("→ Carpooling whenever you can").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            
          }.padding(15)
        }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
    }
    }
  }
}
    struct transportation_Previews: PreviewProvider {
      static var previews: some View {
        transportation()
      }
    }
