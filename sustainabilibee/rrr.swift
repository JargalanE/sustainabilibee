//
//  rrr.swift
//  susworkspace
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct rrr: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        VStack {
            Spacer().frame(height:30)
            VStack(spacing: 10.0) {
                
                Text("Reduce, Reuse, Recycle").font(.custom("AlegreyaSansSC-Medium", size: 34))
                
                Text("Ever notice how much plastic you use?").font(.custom("AlegreyaSansSC-Regular", size: 25)).fixedSize(horizontal: false, vertical: true)
                VStack(alignment: .leading, spacing: 10.0){
                    Text("Reduce by:").font(.custom("AlegreyaSansSC-Regular", size: 25))
                    Text("- using biodegradable trash bags").fixedSize(horizontal: false, vertical: true).font(.custom("OpenSans-Light", size: 19))
                    
                    
                    Text("- selecting products that have minimal plastic packaging").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                    Text("- using shampoo and conditioner bars instead of plastic bottles").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                    
                    //reuse
                    Text("Reuse by:").font(.custom("AlegreyaSansSC-Regular", size: 25))
                    Text("- using extra plastic bags as trash bags").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                    Text("- growing plants in used containers").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                    Text("- looking for items made of recycled materials when shopping").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                    
                    //recycle
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("Recycle by:").font(.custom("AlegreyaSansSC-Regular", size: 25))
                        Text("- adding a recycling bin to household").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                        Text("- identify which materials your recycling program accepts").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                        Text("- clean items & flatten boxes before recycling").font(.custom("OpenSans-Light", size: 19)).fixedSize(horizontal: false, vertical: true)
                        
                        
                        
                    }
                    
                    
                    Spacer()
                    
                    
                }
        }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(25).shadow(radius : 15).padding()
        }.background(Rectangle() .foregroundColor(yellowTheme).ignoresSafeArea())
    }
}

struct rrr_Previews: PreviewProvider {
    static var previews: some View {
        rrr()
    }
}
