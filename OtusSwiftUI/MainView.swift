//
//  ContentView.swift
//  OtusSwiftUI
//
//  Created by user on 04.12.2019.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var selection = 0
    
    @State var showLink = false
    @State var selectedLink = 1
    
    var body: some View {
        TabView(selection: $selection) {
            HelloView(showLink: $showLink, selection: $selection)
            .tabItem {
                VStack {
                    Image(systemName: "flag.fill")
                    Text("Hello")
                }
            }
            .tag(0)
            LanguageListView(selectedLink: $selectedLink, showLink: $showLink)
            .tabItem {
                VStack {
                    Image(systemName: "flag.fill")
                    Text("Language")
                }
            }
            .tag(1)
            AboutView()
            .tabItem{
                VStack {
                    Image(systemName: "heart.circle")
                    Text("About")
                }
            }
            .tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
