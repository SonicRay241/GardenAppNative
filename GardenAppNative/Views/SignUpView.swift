//
//  SignUpView.swift
//  Garden App
//
//  Created by Rayhan Permana on 12/01/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var passsword: String = ""
    
    @State private var login: Bool = false
    var body: some View {
        if !login{
            VStack{
                HStack{
                    Image("logo2")
                    VStack{
                        Text("Green Garden")
                            .font(.title3.bold()).padding(.horizontal,10).padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Go Green")
                            .font(.title3.bold()).padding(.horizontal, 10).padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Sidoarjo")
                            .font(.title3.bold()).padding(.horizontal, 10).padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.frame(maxWidth: 150)
                }.frame(maxWidth: .infinity,
                        maxHeight: 170,
                        alignment: .top)
                
                Text("Masuk ke akun anda").font(.title2).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 30).padding(.bottom, 20)
                
                Text("Username").font(.title3.bold()).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 30)
                
                TextField("Your Username...", text: $username)
                    .padding(15)
                    .padding(.horizontal, 10)
                    .background(Color(.systemGray6))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color("AccentColor"), lineWidth: 3)
                    ).padding(.horizontal, 30).padding(.bottom, 10)
                
                Text("Email").font(.title3.bold()).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 30)
                
                TextField("Your Email...", text: $email)
                    .padding(15)
                    .padding(.horizontal, 10)
                    .background(Color(.systemGray6))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color("AccentColor"), lineWidth: 3)
                    ).padding(.horizontal, 30).padding(.bottom, 10)
                
                Text("Password").font(.title3.bold()).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 30)
                
                SecureField("Your Password...", text: $passsword)
                    .padding(15)
                    .padding(.horizontal, 10)
                    .background(Color(.systemGray6))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color("AccentColor"), lineWidth: 3)
                    ).padding(.horizontal, 30).padding(.bottom, 40)
                
                
                
                Button(action: {
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 27).frame(width: .infinity, height: 54)
                        Text("Daftar").font(.title2.bold()).foregroundColor(.white)
                    }
                }.foregroundColor(Color("AccentColor")).padding(.horizontal, 30)
                
                HStack{
                    Text("Sudah memiliki akun?")
                    Button(action:{
                        withAnimation{
                            login = true
                        }
                    }){
                        Text("Masuk")
                    }
                }
                
                
            }.frame(maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .top)
            .ignoresSafeArea(.keyboard)
        } else {
            LoginView()
        }
        }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
