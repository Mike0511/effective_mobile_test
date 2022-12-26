//
//  SelectCategoryView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 16.12.22.
//

import SwiftUI

struct SelectCategoryView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Select Category")
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 24))
                    .foregroundColor(CustomColors.cetaceanBlue)
                
                Spacer()
                
                Button(action: {
                    // go to all view
                }, label: {
                    Text("View all")
                        .font(Font.custom(FontNameManager.MarkPro.regular, size: 16))
                        .foregroundColor(CustomColors.outrageousOrange)
                })
            }
            
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                HStack {
                    ForEach($mainViewModel.categories) { category in
                        CategoryCircle(category: category)
                        Spacer(minLength: 20)
                    }
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

struct SelectCategoryView_Previews: PreviewProvider {
    
    static var previews: some View {
        SelectCategoryView()
            .environmentObject(MainViewModel())
    }
}
