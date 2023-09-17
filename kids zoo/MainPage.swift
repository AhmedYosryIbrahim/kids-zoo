//
//  MainPage.swift
//  kids zoo
//
//  Created by ahmed yosry on 16/09/2023.
//

import SwiftUI

struct MainPage: View {
    // property
    @AppStorage("paging") var paging = 0
    
    var animals : [String]  = ["cat" , "fox" , "lion" , "shark" , "tiger" ]
    var gridColumn : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    
    
    //body
    var body: some View {
        VStack {
            MainPageAppBar().padding(.top,40)
            
            LazyVGrid(columns: gridColumn, content: {
                ForEach(animals,id: \.self){ item in
                    Image(item)
                        .resizable()
                        .frame(width: 50,height: 50,alignment: .center)
                        .padding()
                        .background(Color("AccentColor"))
                        .cornerRadius(50)
                }
            }).padding(.top, 80 )
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}
struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
