//
//  HomeView.swift
//  Garden App
//
//  Created by Rayhan Permana on 12/01/23.
//

import SwiftUI

struct HomeView: View {
    @State private var detailIndex: Int = 0
    
    @State private var pageIndex: Int = 0
    
    var body: some View {
        if (pageIndex == 0){
            VStack{
                HStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .padding(.leading, 30)
                    
                    VStack{
                        Text("Green Garden")
                            .font(.title3.bold()).padding(.horizontal,30).padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        Text("Go Green")
                            .font(.title3.bold()).padding(.horizontal, 30).padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        Text("Sidoarjo")
                            .font(.title3.bold()).padding(.horizontal, 30).padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }.frame(maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .top)
                    
                }.frame(maxWidth: .infinity,
                        maxHeight: 110,
                        alignment: .top)
                
                VStack{
                    
                    TabView(selection: $detailIndex) {
                        ForEach((0..<4), id: \.self) { index in
                            
                            if (index == 0) {
                                
                                Image("image1")
                                
                            } else if (index == 1) {
                                
                                Image("image1")
                                
                            } else if (index == 2) {
                                
                                Image("image1")
                                
                            } else if (index == 3) {
                                
                                Image("image1")
                                
                            }
                        }
                        
                    }
                    .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    
                }.frame(maxWidth: .infinity,
                        maxHeight: 220
                ).padding(.bottom, 1)
                Text("Description").font(.title2.bold()).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 30)
                ScrollView{
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum").padding(.horizontal, 30)
                    
                }.frame(maxWidth: .infinity,
                        maxHeight: 220,
                        alignment: .top)
                .padding(.bottom, 15)
                
                Button(action: {
                    withAnimation{
                        pageIndex = 1
                    }
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 27).frame(width: .infinity, height: 54)
                        Text("Masuk").font(.title2.bold()).foregroundColor(.white)
                    }
                }.foregroundColor(Color("AccentColor")).padding(.horizontal, 30)
                
                Button(action: {
                    withAnimation{
                        pageIndex = 2
                        
                    }
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 27)
                            .overlay(
                                RoundedRectangle(cornerRadius: 27)
                                    .stroke(Color("AccentColor"), lineWidth: 3)
                            )
                            .frame(width: .infinity, height: 54)
                        Text("Daftar").font(.title2.bold()).foregroundColor(.black)
                        
                    }
                }.foregroundColor(Color(.white))
                    .padding(.horizontal, 30)
                
            }.frame(maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .top)
            .ignoresSafeArea(.keyboard)
            
        } else if (pageIndex == 1){
            LoginView()
        } else if (pageIndex == 2){
            SignUpView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
