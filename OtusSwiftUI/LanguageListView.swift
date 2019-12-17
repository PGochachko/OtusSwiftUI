//
//  LanguageListView.swift
//  OtusSwiftUI
//
//  Created by user on 16.12.2019.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI
import Combine

final class LanguageListViewModel: ObservableObject {
    
    @Published private (set) var filterButtonName = "Switch Faves"
    
    @Published var languages = [
        Language(name: "C++", isFav: false),
        Language(name: "Kotlin", isFav: true),
        Language(name: "Swift", isFav: true),
        Language(name: "Java", isFav: true)
    ]
}

struct Language: Identifiable {
    let id = UUID()
    let name : String
    let isFav : Bool
}

// MARK: - Views

struct LanguageListView: View {
    
    @ObservedObject var viewModel = LanguageListViewModel()
    
    @State var favesShawed: Bool = false
    
    @Binding var selectedLink: Int
    @Binding var showLink: Bool
    
//TODO: Почему не компилируется, если раскомментировать данный код?
//    init() {
//        //Отключает разделители в List
//        UITableView.appearance().separatorStyle = .none
//    }
    
    var body: some View {
        NavigationView {
            List {
                FilterView(favesShowed: $favesShawed)
                    .environmentObject(viewModel)
                
                //TODO: Можно ли использовать инную вариацию цикла for по индексам? При этом добавлять различные view в List?
                ForEach((0..<viewModel.languages.count)) { index in
                    if !self.favesShawed || self.viewModel.languages[index].isFav {
                        if (index == self.selectedLink) {
                            NavigationLink(destination: LanguageEmojiView(), isActive: self.$showLink) {
                                Text(self.viewModel.languages[index].name)
                            }
                        } else {
                            NavigationLink(destination: LanguageEmojiView()) {
                                Text(self.viewModel.languages[index].name)
                            }
                        }
                    }
                }
            }
            .navigationBarHidden(false)
            .navigationBarTitle("Languages")
        }
    }
}

//TODO: Какой Binder указывать для Preview?
//struct LanguageListView_Previews: PreviewProvider {
//    static var previews: some View {
//        LanguageListView(showLink: false)
//    }
//}
