//
//  ProfileView.swift
//  Recipe
//
//  Created by Alfie Downing on 12/12/2021.
//

import SwiftUI

struct ProfileView: View {
    @Binding var recipe: String
    @Binding var showTabBar: Bool
    var body: some View {
        VStack(alignment:.leading) {
            
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    
                    
                    Text("Good morning")
                        .font(.custom("Avenir-Light", size: 17))
                    
                    Text("John Smith")
                        .font(.custom("Avenir-Light", size: 24))
                        .bold()
                }
                .padding(.top)
                .padding(.leading, 20)
                Spacer()
                
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 60)
            
            }
            
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
                    TextField("Find recipe", text: $recipe,onEditingChanged: { _ in
                        showTabBar.toggle()
                    }, onCommit:  {
                        print(recipe)
                        recipe=""
                    })
                    
                }
            }
            Spacer()
        }
    }
}
