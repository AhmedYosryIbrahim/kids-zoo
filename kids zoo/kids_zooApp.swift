//
//  kids_zooApp.swift
//  kids zoo
//
//  Created by ahmed yosry on 15/09/2023.
//

import SwiftUI

@main
struct kids_zooApp: App {
    // property
    @AppStorage("paging") var paging = 0
    
    
    
    //body
    var body: some Scene {
        WindowGroup {
            if paging == 0 {
                LoginPage()
            }else if paging == 1 {
                SignupPage()
            }else{
                MainPage()
            }
        }
    }
}
