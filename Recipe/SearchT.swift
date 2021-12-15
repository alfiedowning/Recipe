//
//  SearchT.swift
//  Recipe
//
//  Created by Alfie Downing on 12/12/2021.
//

import SwiftUI

struct SearchT: View {
    @State var recipeEntered: String = ""
    @State var showTabBar = true
    @State var isEdited = false
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.1))
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .frame(height: 40)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading,30)
                    TextField("Find recipe", text: $recipeEntered)
                        .onTapGesture {
                            isEdited = true
                        }
                          
                        
                    
                    Spacer().fullScreenCover(isPresented: $isEdited) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.1))
                                    .cornerRadius(30)
                                    .padding(.horizontal)
                                    .frame(height: 40)
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .padding(.leading,30)
                                    TextField("Find recipe", text: $recipeEntered)
                                        .onTapGesture {
                                            showTabBar.toggle()
                                            isEdited = true
                                        }
                                }
                            }
                            Spacer()
                        }
                    
                }
            }
            
        }
            Spacer()
    }
}

struct SearchT_Previews: PreviewProvider {
    static var previews: some View {
        SearchT()
    }
}
}
