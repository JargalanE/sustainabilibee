//
//  sustainabilitytips.swift
//  susworkspace
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
/*struct Title: ViewModifier {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    func body(content: Content) -> some View {
        content
            
            .font(.custom("AlegreyaSansSC-Regular", size: 20))
            .foregroundColor(Color.black)
            .background(yellowTheme)
            .cornerRadius(30)
            .padding(EdgeInsets(top: 100, leading: 30, bottom: 100, trailing: 30))
    }
}
 */
struct sustainabilitytips: View {
    @State private var yellowTheme : Color = Color(red: 255/255, green: 213/250, blue: 80/250)
    var body: some View {
        NavigationStack {
            
            ScrollView (.vertical){
                
                VStack(spacing: 20.0) {
        
                    HStack {
                        Text("Sustainability Tips").font(.custom("AlegreyaSansSC-Medium", size: 37))
                        Image("tips")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50.0)
                        
                    }.padding()
                    VStack {
                        //shop sustainably
                        NavigationLink(destination: shop()) {
                            VStack(alignment: .leading, spacing: 10.0) {
                                Image("shopping")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit).cornerRadius(15)
                                
                                
                                Text("Shop Conciously").font(.custom("AlegreyaSansSC-Medium", size: 29)).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                                
                                Text("Click to learn more")
                                    .foregroundColor(Color.black).font(.custom("AlegreyaSansSC-Regular", size: 20))
                                
                                
                            }.padding().background(Rectangle() .foregroundColor(yellowTheme)).cornerRadius(15).shadow(radius : 15).padding()
                        }
                        //reduce, reuse, recycle
                    VStack {
                            //shop sustainably
                        NavigationLink(destination: rrr()) {
                            VStack(alignment: .leading, spacing: 10.0) {
                                Image("rrrr")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit).cornerRadius(15)
                                    
                                    
                                    Text("Reduce, Reuse, Recycle").font(.custom("AlegreyaSansSC-Medium", size: 29)).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                                    
                                    Text("Click to learn more")
                                        .foregroundColor(Color.black).font(.custom("AlegreyaSansSC-Regular", size: 20))
                                    
                                    
                                }.padding().background(Rectangle() .foregroundColor(yellowTheme)).cornerRadius(15).shadow(radius : 15).padding()
                            }
                            //sustainable swaps
                        VStack {
                            
                            NavigationLink(destination: swaps()) {
                                VStack(alignment: .leading, spacing: 10.0) {
                                    Image("sustainablee")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit).cornerRadius(15)
                                    
                                    
                                    Text("Sustainable Swaps").font(.custom("AlegreyaSansSC-Medium", size: 29)).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                                    
                                    Text("Click to learn more")
                                        .foregroundColor(Color.black).font(.custom("AlegreyaSansSC-Regular", size: 20))
                                    
                                    
                                }.padding().background(Rectangle() .foregroundColor(yellowTheme)).cornerRadius(15).shadow(radius : 15).padding()
                            }
                        }
                            //food consumption
                        VStack {
                            
                            NavigationLink(destination: food()) {
                                VStack(alignment: .leading, spacing: 10.0) {
                                    Image("foood")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit).cornerRadius(15)
                                    
                                    
                                    Text("Food Consumption").font(.custom("AlegreyaSansSC-Medium", size: 29)).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                                    
                                    Text("Click to learn more")
                                        .foregroundColor(Color.black).font(.custom("AlegreyaSansSC-Regular", size: 20))
                                    
                                    
                                }.padding().background(Rectangle() .foregroundColor(yellowTheme)).cornerRadius(15).shadow(radius : 15).padding()
                            }
                        }
                            //read labels
                        
                        VStack {
                                   NavigationLink(destination: water()) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                     Image("waater")
                                      .resizable(resizingMode: .stretch)
                                      .aspectRatio(contentMode: .fit).cornerRadius(15)
                                     Text("Conserving Water").font(.custom("AlegreyaSansSC-Medium", size: 29)).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                                     Text("Click to learn more")
                                      .foregroundColor(Color.black).font(.custom("AlegreyaSansSC-Regular", size: 20))
                                    }.padding().background(Rectangle() .foregroundColor(yellowTheme)).cornerRadius(15).shadow(radius : 15).padding()
                                   }
                                  }
                        
                        
                        
                        
                        
                        
                        VStack {
                                   NavigationLink(destination: transportation()) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                     Image("transport")
                                      .resizable(resizingMode: .stretch)
                                      .aspectRatio(contentMode: .fit).cornerRadius(15)
                                     Text("Transportation").font(.custom("AlegreyaSansSC-Medium", size: 29)).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                                     Text("Click to learn more")
                                      .foregroundColor(Color.black).font(.custom("AlegreyaSansSC-Regular", size: 20))
                                    }.padding().background(Rectangle() .foregroundColor(yellowTheme)).cornerRadius(15).shadow(radius : 15).padding()
                                   }
                                  }
                            
                        VStack {
                                   NavigationLink(destination: digital()) {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                     Image("cfoot")
                                      .resizable(resizingMode: .stretch)
                                      .aspectRatio(contentMode: .fit).cornerRadius(15)
                                     Text("Digital Carbon Footprint").font(.custom("AlegreyaSansSC-Medium", size: 29)).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                                     Text("Click to learn more")
                                      .foregroundColor(Color.black).font(.custom("AlegreyaSansSC-Regular", size: 20))
                                    }.padding().background(Rectangle() .foregroundColor(yellowTheme)).cornerRadius(15).shadow(radius : 15).padding()
                                   }
                                  }
                        
                        }
                    }
                    
                }
            }
            
        }
    }
}

struct sustainabilitytips_Previews: PreviewProvider {
    static var previews: some View {
        sustainabilitytips()
    }
}
