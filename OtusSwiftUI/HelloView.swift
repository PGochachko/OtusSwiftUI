//
//  HelloView.swift
//  OtusSwiftUI
//
//  Created by user on 16.12.2019.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct HelloView: View {
    @Binding private (set) var showLink: Bool
    @Binding private (set) var selection: Int
    
    var body: some View {
        Button(action: {
            self.showLink = true
            self.selection = 1
        }) {
            Text("Go to happy!")
        }
    }
}

//TODO: 
//struct HelloView_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloView()
//    }
//}
