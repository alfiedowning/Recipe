//
//  ReccommendedCardView.swift
//  Recipe
//
//  Created by Alfie Downing on 11/12/2021.
//

import SwiftUI

struct ReccommendedCardView: View {
    @State var show: Bool = false
    var body: some View {
        VStack {
        Spacer().fullScreenCover(isPresented: $show) {
            //CardDetailView(show: $show)
            CardDetailView()
        }

        
            
        Button {
            show.toggle()
        } label: {
            Image("avocado-toast-m")
                        .resizable()
                        .frame(width: 280, height: 450)
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Spacer()

                            Rectangle()
                                .overlay(content: {
                                    VStack(alignment: .leading, spacing: 25) {
                                        HStack {
                                            Text("Avocado Toast")
                                                .foregroundColor(.white)
                                            .font(.custom("Avenir-Light", size: 20))
                                            .padding([.top, .leading])

                                            Spacer()
                                        }

                                        HStack {
                                            ForEach(0..<4) { currentStar in
                                                Image(systemName: "star.fill")
                                                .foregroundColor(.yellow)

                                            }
                                        }
                                        .padding(.leading)

                                        HStack(spacing: 30) {
                                            HStack {

                                                Image(systemName: "clock")
                                                    .foregroundColor(.white)
                                                    .frame(width: 20, height: 20)

                                                Text("5 min")
                                                    .font(.custom("Avenir-Light", size: 12))
                                                    .foregroundColor(.white)


                                            }

                                            HStack {

                                                Image(systemName: "clock")
                                                    .foregroundColor(.white)
                                                    .frame(width: 20, height: 20)

                                                Text("5 min")
                                                    .font(.custom("Avenir-Light", size: 12))
                                                    .foregroundColor(.white)


                                            }






                                        }
                                        .padding(.leading)

                                        Spacer()

                                    }
                                })
                                .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5))
                                .frame(width: 280, height: 180)
                        }
                    }
                    
                    .cornerRadius(20)
        }
        }
         
                    
              
        }
                    
                    
                
    
           
            
        
    
}

struct ReccommendedCardView_Previews: PreviewProvider {
    static var previews: some View {
        ReccommendedCardView()
    }
}
