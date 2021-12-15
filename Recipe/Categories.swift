//
//  test.swift
//  Recipe
//
//  Created by Alfie Downing on 12/12/2021.
//

import SwiftUI

struct Categories: View {
    @State var show = false
    private var categories = [
        "american",
        "italian",
        "chinese"
    ]
    private var threeColumnGrid = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        
        
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.1))
            
            VStack(alignment: .leading) {
                
                Text("Categories")
                    .font(.custom("Avenir-Light", size: 24))
                    .bold()
                    .padding([.top, .leading, .trailing])
        
                ScrollView(showsIndicators: false) {
            
            VStack(alignment: .leading, spacing: 0) {
                
                
            
            Spacer().fullScreenCover(isPresented: $show) {
               // CardDetailView(show: $show)
                CardDetailView()
            }
            
            LazyVGrid(columns: threeColumnGrid, spacing: 0) {
                ForEach(0..<21) { i in
                    Button {
                        
                        show.toggle()
    
                        
                    } label: {
                        
                        Image(categories[0])
                            .resizable()
                            .scaledToFill()

                            .frame(minHeight: 100, idealHeight: 100)
                            .overlay {
                                
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.4))
                                        .cornerRadius(20)
                                        .frame(width: 150, height: 50)
                                    Text("American")
                                        .font(.custom("Avenir-Light", size: 20))
                                        .foregroundColor(.white)
                                    .bold()
                                }
                            }
                    }

                    
                    
                }
            }
                }
            }
            
            }
            
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
