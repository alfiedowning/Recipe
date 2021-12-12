//
//  NewRecipeCardView.swift
//  Recipe
//
//  Created by Alfie Downing on 11/12/2021.
//

import SwiftUI

struct NewRecipeCardView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.white)

            .frame(height: 140)
            .overlay(content: {
                HStack {
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            Text("Vege Rice")
                            .font(.custom("Avenir-Light", size: 20))
                        .bold()
                            Spacer()
                        } .padding([.top, .leading])
                        
                        HStack {
                            ForEach(0..<3) { currentStar in
                                Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                
                            }
                        }
                        .padding(.leading)

                        
                        HStack(spacing: 30) {
                            HStack {
                                
                                Image(systemName: "clock")
                                    .foregroundColor(.gray)
                                    .frame(width: 20, height: 20)
                                
                                Text("5 min")
                                    .font(.custom("Avenir-Light", size: 12))
                                    .foregroundColor(.gray)
                                   
                
                                
                            }
                            .padding(.leading)

                            
                            HStack {
                                
                                Image(systemName: "clock")
                                    .foregroundColor(.gray)
                                    .frame(width: 20, height: 20)
                                
                                
                                Text("5 min")
                                    .font(.custom("Avenir-Light", size: 12))
                                    .foregroundColor(.gray)
                
                                
                            }
                            
                            
                            
                        }
                        
                        
                        Spacer()
                           
                    }
                    Spacer()
                    
                    Image("vege-rice")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.trailing)
                }
            })
            .cornerRadius(20)
            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.2), radius: 10, y: 10)
            .padding(.horizontal)

    }
}

struct NewRecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeCardView()
    }
}
