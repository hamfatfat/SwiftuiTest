//
//  FormView.swift
//  SwiftApp
//
//  Created by Hamzeh Fatfat on 24/10/2022.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {

    func makeBody(configuration: Self.Configuration) -> some View {

        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .teal : .gray)
                                .font(.system(size: 20, weight: .regular, design: .default))
                configuration.label
        }
        .onTapGesture { configuration.isOn.toggle() }

    }
}
struct FormView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var mobileNumber: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var company: String = ""

    @State var isPrivate: Bool = true
    @State var personalInfo: Bool = true
    @State var brands: Bool = false
    let gradient = Gradient(colors: [Color(red: 0.95, green: 0.95, blue: 0.95)

       , Color(red: 0.95, green: 0.95, blue: 0.95)])
    var body: some View {
        Form {
            HStack{
                // Example usage in a SwiftUI view
                Toggle(isOn: $personalInfo) {
                    Text("Personal Info").foregroundColor(personalInfo ? .teal : .gray)                }
                .toggleStyle(CheckboxStyle())
                // Example usage in a SwiftUI view
                Toggle(isOn: $brands) {
                    Text("Brands").foregroundColor(brands ? .teal : .gray)                 }
                .toggleStyle(CheckboxStyle())
            }
            VStack {
                                  CustomTextField(customPlaceHolder: "First Name", text: $firstName, underColor: .black, height: 1, characterLimit:20)
            }.padding([.top,.bottom],10)
                              VStack {
                                  CustomTextField(customPlaceHolder: "Last Name", text: $lastName, underColor: .black, height: 1, characterLimit:20)
                              }.padding([.top,.bottom],10)
                              VStack {
                                  CustomTextField(customPlaceHolder: "Phone Number", text: $mobileNumber, underColor: .black, height: 1, characterLimit:20)
                              }.padding([.top,.bottom],10)
            VStack {
                CustomTextField(customPlaceHolder: "Email", text: $email, underColor: .black, height: 1, characterLimit:20)
            }.padding([.top,.bottom],10)
            VStack {
                CustomTextField(customPlaceHolder: "Password", text: $password, underColor: .black, height: 1, characterLimit:20)
            }.padding([.top,.bottom],10)
            VStack {
                CustomTextField(customPlaceHolder: "Company", text: $company, underColor: .black, height: 1, characterLimit:20)
            }.padding([.top,.bottom],10)
            Text("If your company is not registred and or you have an issue registering please send us a not Click here")
               
        Toggle(isOn: $isPrivate) {
            Text("Close windows when quitting an app").foregroundColor(isPrivate ? .teal : .gray)                }
        .toggleStyle(CheckboxStyle())
        }}
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
