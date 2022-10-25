//
//  CustomTextField.swift
//  SwiftApp
//
//  Created by Hamzeh Fatfat on 25/10/2022.
//

import SwiftUI


import Combine
struct CustomTextField: View {
    var customPlaceHolder: String
    @Binding var text: String

      var underColor: Color
      var height: CGFloat

    let characterLimit: Int
    
  var type: String = "text"
      var body: some View {
        VStack {
            if type == "text" {
            TextField(LocalizedStringKey(self.customPlaceHolder), text: $text)
                .padding(.leading,15)
                .font(.system(size: 20))
                .onReceive(Just(text)) { (newValue: String) in
                    if newValue.count >= characterLimit {
                        let startIndex = newValue.index(newValue.startIndex, offsetBy: 0)
                        let endIndex = newValue.index(newValue.startIndex, offsetBy: characterLimit-1)
                        text = String(newValue[startIndex...endIndex])
                    }
                }
                
            }
            else{
                TextField(LocalizedStringKey(self.customPlaceHolder), text: $text)
                    .padding(.leading,15)
                    .keyboardType(.numberPad)
                    .font(.system(size: 20))
                    .onReceive(Just(text)) { (newValue: String) in
                        if newValue.count >= characterLimit {
                            let startIndex = newValue.index(newValue.startIndex, offsetBy: 0)
                            let endIndex = newValue.index(newValue.startIndex, offsetBy: characterLimit-1)
                            text = String(newValue[startIndex...endIndex])
                        }
                    }
                    
            }
            Rectangle().frame(height: self.height)
                .padding(.horizontal, 15).foregroundColor(self.underColor)
        }
      }
}
