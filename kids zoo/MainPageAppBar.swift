//
//  MainPageAppBar.swift
//  kids zoo
//
//  Created by ahmed yosry on 16/09/2023.
//

import SwiftUI

struct MainPageAppBar: View {
    var body: some View {
        HStack{
            Image("avatar")
                .resizable()
                .frame(width:70,height: 70,alignment: .center)
                .scaledToFill()
                .clipped()
                .cornerRadius(100)
                .padding(.leading,20)
            
            Spacer()
            
            Image(systemName: "slider.horizontal.3")
                .resizable()
                .frame(width: 30,height: 30,alignment: .center)
                .foregroundColor(Color("4thColor"))
                .padding(.trailing,20)
        }.padding(.all)
        .background(Color("AccentColor"))
    }

}


struct MainPageAppBar_Previews: PreviewProvider {
    static var previews: some View {
        MainPageAppBar()
    }
}
