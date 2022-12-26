//
//  FontNameManager.swift
//  EffectiveMobileTest
//
//  FontNameManager created by Brady Murphy
//

import Foundation
import SwiftUI

struct FontNameManager {
  //MARK: name of font family
  struct MarkPro {
      static let regular = "MarkPro"
      static let italic = "MarkPro-Italic"
      static let hairline = "MarkPro-Hairline"
      static let hairlineItalic = "MarkPro-HairlineItalic"
      static let thin = "MarkPro-Thin"
      static let thinItalic = "MarkPro-ThinItalic"
      static let extraLight = "MarkPro-ExtraLight"
      static let extraLightItalic = "MarkPro-ExtraLightItalic"
      static let light = "MarkPro-Light"
      static let lightItalic = "MarkPro-LightItalic"
      static let book = "MarkPro-Book"
      static let bookItalic = "MarkPro-BookItalic"
      static let medium = "MarkPro-Medium"
      static let mediumItalic = "MarkPro-MediumItalic"
      static let bold = "MarkPro-Bold"
      static let boldItalic = "MarkPro-BoldItalic"
      static let heavy = "MarkPro-Heavy"
      static let heavyItalic = "MarkPro-HeavyItalic"
      static let black = "MarkPro-Black"
      static let blackItalic = "MarkPro-BlackItalic"
  }
  
  // ... structs for other typefaces
}

func getCustomFontNames() {
    // get each of the font families
    for family in UIFont.familyNames.sorted() {
        let names = UIFont.fontNames(forFamilyName: family)
        // print array of names
        print("Family: \(family) Font names: \(names)")
    }
}
