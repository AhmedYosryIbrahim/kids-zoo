//
//  SignupPage.swift
//  kids zoo
//
//  Created by ahmed yosry on 16/09/2023.
//

import SwiftUI

struct SignupPage: View {
    //property
    @State var userName : String = ""
    
    @State var password : String = ""
    
    @State var country : String = ""
    
    @State var childAge : String = ""
    
    @AppStorage("paging") var paging = 0
    
    @AppStorage("userName") var accountUserName : String = ""
    
    @AppStorage("password") var accountPassword : String = ""
    
    
    
    
    //body
    var body: some View {
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFill()
            
            VStack{
                TextField("User Name", text: $userName)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(16)
                    .padding(.horizontal,30)
                    .padding(.vertical,10)
                
                TextField("Password", text: $password)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(16)
                    .padding(.horizontal,30)
                    .padding(.vertical,10)
                
                TextField("Country", text: $country)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(16)
                    .padding(.horizontal,30)
                    .padding(.vertical,10)
                
                TextField("Child Age", text: $childAge)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(16)
                    .padding(.horizontal,30)
                    .padding(.vertical,10)
                
                Button(
                    action: {
                        if !userName.isEmpty && !password.isEmpty {
                            accountUserName = userName
                            accountPassword = password
                            paging = 0
                        }
                },
                    label: {
                    Text("Sign up")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(minWidth: 250,minHeight: 50,alignment: .center)
                        .background(Color("4thColor"))
                        .cornerRadius(16)
                        .padding(.top)
                })
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}
