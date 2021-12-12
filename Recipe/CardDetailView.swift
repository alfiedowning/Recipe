//
//  CardDetailView.swift
//  Recipe
//
//  Created by Alfie Downing on 12/12/2021.
//

import SwiftUI

struct CardDetailView: View {
    @Binding var show: Bool
    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button {
                    show.toggle()
                } label: {
                    Circle()
                        .frame(width: 40, height: 40)
                        .overlay {
                            Text("x")
                                .font(.custom("Avenir", size: 30))
                                .foregroundColor(.white)
                                .bold()
                            
                            
                            
                        }
                        .foregroundColor(.black)
                }
                
                
                
                

                
                
           
                .padding(.trailing)
            
            }
            
            Text("Avocado Toast")

            Spacer()
        }
    }
}
