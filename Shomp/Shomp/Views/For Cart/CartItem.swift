//
//  CartItem.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct CartItem: View {
    
    var cart: Product
    
    @State private var quantity = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(spacing: 10) {
                
                WebImage(url: URL(string: cart.mainImage))
                    .resizable()
                    .frame(width: Sizes.screenWidth/3, height: Sizes.screenHeight/6)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            
                            Text(cart.title)
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.top, 10)
                                .padding(.bottom, 2)
                            
                            Text(cart.description)
                                .font(.footnote)
                                .foregroundColor(Color.black.opacity(0.8))
                                .lineLimit(2)
                                .layoutPriority(0)
                                .opacity(0.8)
                            
                            //VStack
                        }
                        
                        Spacer()
                        
                        Button(action: {}){
                            
                            Image(systemName: "trash")
                                .imageScale(.medium)
                                .foregroundColor(.black)
                                .padding(.top, 10)
                                .padding(.trailing)
                            //Button
                        }
                        //HStack
                    }
                    
                    Spacer()
                    
                    HStack(alignment: .center) {
                        
                        Text("₹ \(cart.price)")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                        
                        
                        
                        Spacer()
                        
                        
                        HStack(alignment: .center){
                            
                            Button(action: {
                                
                                if quantity > 1{
                                    quantity -= 1
                                    
                                }
                                
                            }){
                                
                                Image(systemName: "minus")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                    .frame(width: Sizes.screenWidth/14, height:  Sizes.screenHeight/30)
                                    .background(Color.black)
                                    .cornerRadius(3.5, antialiased: true)
                                
                                //Button
                            }.disabled(quantity > 1 ? false : true)
                            .opacity(quantity > 1 ? 1 : 0.5)
                            
                            
                            Text("\(quantity)")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                                .frame(width: Sizes.screenWidth/20, height:  Sizes.screenHeight/30)
                                .layoutPriority(1.0)
                            
                            Button(action: {
                                
                                quantity += 1
                                
                            }){
                                
                                Image(systemName: "plus")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                     .frame(width: Sizes.screenWidth/14, height:  Sizes.screenHeight/30)
                                    .background(Color.black)
                                    .cornerRadius(3.5, antialiased: true)
                                
                                //Button
                            }
                            //HStack
                        }
                        //HStack
                    }
                    //HStack
                }
                //HStack
            }
            //Vstack
        }
        .frame(width: Sizes.screenWidth/1.08, height: Sizes.screenHeight/6, alignment: .topLeading)
        .background(Color.background)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
        .padding(.bottom, 10)
        
    }
    
}
