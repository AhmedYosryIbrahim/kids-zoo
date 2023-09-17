//
//  LoginPage.swift
//  kids zoo
//
//  Created by ahmed yosry on 16/09/2023.
//

import SwiftUI

struct LoginPage: View {
    //property
   @State  var userName:String = ""
    @State  var password:String = ""
    
    @AppStorage("paging") var paging = 0
    
    
    @AppStorage("userName") var accountUserName : String = ""
    
    @AppStorage("password") var accountPassword : String = ""
    
    
    
    
    
    // ui
    var body: some View {
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFill()
            
            VStack{
                Spacer()
                
                TextField("user name", text: $userName)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(16)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                
                TextField("Password", text: $password)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(16)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                
                HStack{
                    Spacer()

                    Text("Forget password ?")
                        .padding(.trailing,26)
                        
                }
                
                Button(
                    action:{
                        if userName == accountUserName && password == accountPassword{
                            paging = 2
                        }
                    
                }, label: {
                    Text("GO")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(minWidth: 250,minHeight: 50,alignment: .center)
                        .background(Color("4thColor"))
                        .cornerRadius(16)
                        .padding(.top,20)
                })
                
                HStack{
                    Text("Do you have account yet ?")
                        .fontWeight(.semibold)
                        
                    
                    Button(action: {
                        paging = 1
                    }, label: {
                        Text("Sign up")
                            .font(.title3)
                            .fontWeight(.semibold)
                    })
                }.padding(.top,20)
                
                Image("background2")
                    .resizable()
                    .scaledToFit()

            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
