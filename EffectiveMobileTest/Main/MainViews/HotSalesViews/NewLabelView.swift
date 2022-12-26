//
//  NewLabelView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 18.12.22.
//

import SwiftUI

struct NewLabelView: View {
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(CustomColors.outrageousOrange)
                .frame(width: 30)
            Text("New")
                .foregroundColor(.white)
                .font(Font.custom(FontNameManager.MarkPro.bold, size: 12))
        }
    }
}

struct NewLabelView_Previews: PreviewProvider {
    static var previews: some View {
        NewLabelView()
    }
}
