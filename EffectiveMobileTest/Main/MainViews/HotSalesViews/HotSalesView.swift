//
//  HotSalesView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 16.12.22.
//

import SwiftUI

struct HotSalesView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    @State private var backgroundOffset: CGFloat = 0
    
    var body: some View {
        let maxOffset = CGFloat(mainViewModel.mainData.hotSales.count - 1)
        VStack {
            HStack {
                Text("Hot sales")
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 24))
                    .foregroundColor(CustomColors.cetaceanBlue)
                Spacer()
                Button(action: {
                    // go to see more
                }, label: {
                    Text("See more")
                        .font(Font.custom(FontNameManager.MarkPro.regular, size: 16))
                        .foregroundColor(CustomColors.outrageousOrange)
                })
            }
            
            GeometryReader { geometry in
                HStack(spacing: 40) {
                    ForEach($mainViewModel.mainData.hotSales) { hotSalesItem in
                        HotSalesItemView(hotSalesItem: hotSalesItem)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                }
                .offset(x: -(self.backgroundOffset * (geometry.size.width + 40)))
                .animation(.default, value: backgroundOffset)
            }
            .gesture(
                DragGesture()
                    .onEnded({ value in
                        if value.translation.width > 10 {
                            if self.backgroundOffset > 0 {
                                self.backgroundOffset -= 1
                            }
                        } else if value.translation.width < -10 {
                            if self.backgroundOffset < maxOffset {
                                self.backgroundOffset += 1
                            }
                        }
                    })
            )
        }
        .frame(height: 230)
        .padding(20)
    }
}

struct HotSalesView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesView()
            .environmentObject(MainViewModel())
    }
}
