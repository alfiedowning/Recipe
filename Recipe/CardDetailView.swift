//
//  CardDetailView.swift
//  Recipe
//
//  Created by Alfie Downing on 12/12/2021.
//

import SwiftUI

struct BackButton: View {
    //@Binding var show: Bool
    var body: some View {
        Button {
            //show.toggle()
        } label: {
            Image(systemName: "chevron.backward")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 30)
        }
        .padding(.leading)
    }
    
}

struct CardDetailView: View {
    //@Binding var show: Bool
    @State private var liked = false
    var body: some View {
            
            
            ZStack {
                
                Rectangle()
                    .foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.06))
                    .ignoresSafeArea()
                
                GeometryReader { geo in

                
                        ZStack {
                            VStack {
                                Image("avocado-toast-d")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                
                                .ignoresSafeArea()
                            .frame(height: geo.size.height/2.6)
                                Spacer()
                            }
                            .overlay {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .shadow(radius: 10)
                                    .cornerRadius(20)
                                    .frame(width: 280, height: 160)
                                    .overlay(content: {
                                        VStack {
                                            
                                            HStack {
                                                Text("Avocado Toast")
                                                    .bold()
                                                    .padding([.top, .leading])
                                                Spacer()
                                            }
                                            
                                            HStack {
                                                HStack {
                                                    ForEach(0..<3) { i in
                                                        VStack {
                                                            Image(systemName: "star.fill")
                                                                .foregroundColor(.yellow)
                                                        }
                                                        
                                                    }
                                                    Spacer()
                                                }
                                                .padding(.leading)
                                            .padding(.top, 0.2)
                                                
                                                HStack(spacing:2) {
                                                Text("4.8")
                                                
                                                Text("|")
                                                Text("357")
                                                Text("reviews")
                                                }
                                                .font(.custom("Avenir-Light", size: 12))
                                                .foregroundColor(.black)
                                                .padding(.trailing)
                                                
                                                Spacer()
                                            }
                                            
                                            Divider()
                                                .padding(.top)
                                            
                                            HStack(spacing: 19) {
                                                Spacer()
                                            VStack {

                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                    .frame(width: 20, height: 20)

                                                Text("5 min")
                                                    .font(.custom("Avenir-Light", size: 12))
                                                    .foregroundColor(.black)
                                                    .bold()


                                            }
                                                Spacer()

                                            VStack {

                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                    .frame(width: 20, height: 20)

                                                Text("5 min")
                                                    .font(.custom("Avenir-Light", size: 12))
                                                    .foregroundColor(.black)
                                                    .bold()


                                            }
                                            Spacer()
                                            VStack {

                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                    .frame(width: 20, height: 20)

                                                Text("5 min")
                                                    .font(.custom("Avenir-Light", size: 12))
                                                    .foregroundColor(.black)
                                                    .bold()

                                            }
                                            
                                                
                                                
                                                Spacer()
                                            }

                                            
                                            Spacer()
                                        }
                                    })
                                    .offset(y: -120)
                                
                            }
                       
                            
                           VStack {
                                HStack {
                                    
                                    Button {
                                        
                                    } label: {
                                        ZStack {
                                            Circle()
                                                .frame(width: 40, height: 40)
                                                .foregroundColor(.white)
                                            Image(systemName: "chevron.backward")
                                                .foregroundColor(.gray)
                                        }
                                        
                                            
                                    }
                                    .padding(.leading, 23)
                                    

                                    Spacer()
                                    
                                    Button {
                                        liked.toggle()
                                        
                                    } label: {
                                        ZStack {
                                            Circle()
                                                .frame(width: 40, height: 40)
                                                .foregroundColor(.white)
                                            
                                            if liked {
                                            Image(systemName: "heart.fill")
                                                .foregroundColor(.red)
                                            } else {
                                                Image(systemName: "heart")
                                                    .foregroundColor(.gray)
                                            }
                                        }
                                        
                                            
                                    }
                                    .padding(.trailing, 23)
                                    
                                    
                                }
                                .frame(width: geo.size.width)
                               
                                Spacer()
                               
                            
                            }
                            
                        }
                        .frame(width: geo.size.width)
                        
                    
                
                
                
                
            }
            }
            
            
        
        
                
                
            }
            
            
            
           
        
        
    
}


struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
    }
}
