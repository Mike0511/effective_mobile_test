//
//  MyCartView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 25.12.22.
//

import SwiftUI

struct MyCartView: View {
    @EnvironmentObject var myCartViewModel: MyCartViewModel
    
    var body: some View {
        NavigationStack{
    
            VStack(alignment: .leading) {
                Spacer()
                Text("My Cart")
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 30))
                    .foregroundColor(CustomColors.cetaceanBlue)
                    .padding(.horizontal, 40)
                Spacer()
                CartDetailsView(myCart: $myCartViewModel.myCart)
                    .ignoresSafeArea(edges: .bottom)
            }
            .ignoresSafeArea(edges: .bottom)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // go back
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(CustomColors.cetaceanBlue)
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                        }
                    })
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Text("Add address")
                            .font(Font.custom(FontNameManager.MarkPro.regular, size: 16))
                            .foregroundColor(CustomColors.cetaceanBlue)
                        
                        Button(action: {
                            // add address
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(CustomColors.outrageousOrange)
                                Image("location")
                                    .scaleEffect(0.5)
                            }
                        })
                    }
                }
            }
        }
        .onAppear {
            myCartViewModel.myCart.total = 0
        }
    }
}

struct MyCartView_Previews: PreviewProvider {
    static var previews: some View {
        MyCartView()
            .environmentObject(MyCartViewModel())
    }
}
