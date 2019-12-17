//
//  FilterView.swift
//  OtusSwiftUI
//
//  Created by user on 16.12.2019.
//  Copyright © 2019 user. All rights reserved.
//

import SwiftUI

struct FilterView: View {
    @Binding var favesShowed: Bool
    
    @EnvironmentObject var viewModel: LanguageListViewModel
    
    var body: some View {
        Toggle(isOn: $favesShowed) {
            Text(viewModel.filterButtonName)
        }
    }
}

//struct FilterView_Previews: PreviewProvider {
//    static var previews: some View {
//        FilterView()
//    }
//}
