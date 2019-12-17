//
//  AboutView.swift
//  OtusSwiftUI
//
//  Created by user on 16.12.2019.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    @State private var showModul: Bool = false
    
    var body: some View {
        Button(action: {
            self.showModul = true
        }) {
            Text("About Page")
        }.betterSheet(isPresented: self.$showModul,
            onDismiss: {
                print("AboutModalView closed")
            },
            content: {
                AboutModalView()
            }
        )
    }
}

struct AboutModalView: View {

    var body: some View {
        Text("Hello from dialog")
            .font(.largeTitle)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
