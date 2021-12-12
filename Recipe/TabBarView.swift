//
//  TabBarView.swift
//  Recipe
//
//  Created by Alfie Downing on 12/12/2021.
//

import SwiftUI



struct TabBarView: View {
    @State var selectedIndex = 0
    @State var recipe: String = ""
    @State var currrentRecipe: Int = 0
    @State var showTabBar: Bool = true
    let images = [
        "house",
        "heart",
        "list.bullet",
        "cart",
    ]
    var body: some View {
        NavigationView {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.07))
            
            switch selectedIndex {
            case 0:
                HomeView()
            case 1:
                Text("Favourites")
            case 2:
                Text("All recipes")
            case 3:
                Text("Cart")
            default:
                HomeView()
            }
            
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
            
            
            
                
            // Tab Bar
            if recipe=="" && showTabBar == true {
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
    
        .navigationBarHidden(true)
        }
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

