//
//  ContentView.swift
//  SwiftApp
//
//  Created by Hamzeh Fatfat on 24/10/2022.
//

import SwiftUI
struct ContentView: View {
    @State var selection = 1
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                HomeVIew()
                                .tabItem {
                                    VStack{
                                    Image(systemName: "house.fill")
                                    Text("Home")
                                    }
                            }.tag(1)
                ListView()
                                .tabItem {
                                    VStack{
                                    Image(systemName: "paperplane.circle.fill")
                                        Text("Table")
                                    }
                            }.tag(2)
                FormView()
                                .tabItem {
                                    VStack{
                                    Image(systemName: "paperplane.circle.fill")
                                        Text("Form")
                                    }
                            }.tag(3)
                        }
            .accentColor(.teal)

            .navigationTitle(selection == 1 ? "Home" : selection == 2 ?"Table":"Form") // << here !!
            
           
        }
        }
    }


