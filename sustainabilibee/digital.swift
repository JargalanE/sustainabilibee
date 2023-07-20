//
// transportation.swift
// ourmission
//
// Created by Scholar on 7/20/23.
//
import SwiftUI
struct digital: View {
  @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
  var body: some View {
    ZStack {
      yellowTheme.ignoresSafeArea()
      VStack {
        
        VStack(spacing: 10.0) {
          Text("Digital Carbon Footprint").font(.custom("AlegreyaSansSC-Medium", size: 37)).multilineTextAlignment(.center)
          Text("Did you know the technology you use also contributes to carbon emissions?").font(.custom("AlegreyaSansSC-Regular", size: 25)).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true)
          VStack(alignment: .leading, spacing: 10.0) {
            Text("• Production of new technology & cooling of server farms produces large amounts of carbon").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Text("• Large amounts of electricity are used to fuel the storage cloud, burning a lot of fossil fuels").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Spacer()
            Text("Take action by:").font(.custom("AlegreyaSansSC-Regular", size: 24)).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true)
            Text("• Deleting spam emails").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Text("• Unsubscribing from newsletters and promotions").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Text("• Reducing your cloud storage").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
            Text("• Reducing video streaming to decrease energy input").font(.custom("OpenSans-Light", size: 20)).fixedSize(horizontal: false, vertical: true)
          }.padding(15)
        }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
    }
    }
  }
}
    struct digital_Previews: PreviewProvider {
      static var previews: some View {
        digital()
      }
    }
