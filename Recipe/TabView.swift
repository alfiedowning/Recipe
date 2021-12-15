//
//  TabView.swift
//  Recipe
//
//  Created by Alfie Downing on 12/12/2021.
//

import SwiftUI

struct TabView: View {
    @State var recipe = ""
    @State var showTabBar = true
    @State var selectedIndex = 0
    let images = [
        "house",
        "heart",
        "list.bullet",
        "cart",
    ]
    var body: some View {
        
        ZStack {
            switch selectedIndex {
            case 0:
                HomeView(showTabBar: $showTabBar)
            case 1:
                Text("Favourite")
            case 2:
               Categories()
            case 3:
                Text("Cart")
            default:
                HomeView(showTabBar: $showTabBar)
            }
          
            
            
            
            if showTabBar == true && recipe == "" {
        
            VStack {
                Spacer()
                Rectangle()
                    .frame(width: 300, height: 80)
                    .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3))
                    .overlay {
                        HStack {
                            ForEach(0..<4) { i in
                                
                                Button {
                                    selectedIndex = i
                                } label: {
                                    Spacer()
                                    if selectedIndex == i {
                                        Image(systemName: images[i])
                                           .font(.system(size: 25))
                                           .foregroundColor(selectedIndex == i ? .blue : .white)
                                        
                                    }
                                    
                                    else {
                                     Image(systemName: images[i])
                                        .font(.system(size: 25))
                                        .foregroundColor(.white)
                                    }
                                    
                                    
                                    Spacer()
                                }


                            }
      
                        }
                    }
                .cornerRadius(20)
            }
        
            }
        
        }
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
