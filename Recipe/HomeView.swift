//
//  HomeView.swift
//  Recipe
//
//  Created by Alfie Downing on 11/12/2021.
//

import SwiftUI

struct HomeView: View {
    @State var selectedIndex = 0
    @State var recipe: String = ""
    @State var currrentRecipe: Int = 0
    @Binding var showTabBar: Bool
    let images = [
        "house",
        "heart",
        "list.bullet",
        "cart",
    ]
    var body: some View {
        VStack {
            
            ProfileView(recipe: $recipe, showTabBar: $showTabBar)
                .frame(height: 150)
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                HStack {
                    Text("Reccommended")
                        .font(.custom("Avenir-Light", size: 18))
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                    ForEach(0..<6) { i in
                        
                        ReccommendedCardView()
                            
                            
                            .tag(i)
                        
                    }
                    
                }
                    .padding(.leading)
                
                }
                
                    Text("New Recipes")
                        .font(.custom("Avenir-Light", size: 18))
                        .bold()
                        .padding([.top, .leading])
                    
                 
                        ForEach(0..<4) {i in
                    NewRecipeCardView()
                                .edgesIgnoringSafeArea(.all)
                        
                    }
                
                
                }
                
               
            
            }
        }
    }}
