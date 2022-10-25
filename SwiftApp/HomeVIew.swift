//
//  HomeVIew.swift
//  SwiftApp
//
//  Created by Hamzeh Fatfat on 24/10/2022.
//

import SwiftUI

struct HomeVIew: View {
    let gradient = Gradient(colors: [Color(red: 0.95, green: 0.95, blue: 0.95)

       , .white])

    var body: some View {
        VStack(spacing:0){
       HStack(
        alignment: .top        ){
            Spacer()
            Text("Total Balance").padding(.top,40)
            Spacer()
            VStack{
            Image("logo").resizable()
                .frame(width: 150, height: 150);
                Text("Hello!, John Doe")
            }
            Spacer()
            Text("1000 PTS").padding(.top,40)
            Spacer()
            
        }   .background(.linearGradient(gradient, startPoint: .top, endPoint: .bottom))
            ScrollView(.horizontal){
                HStack(spacing: 20) {
                    Spacer()
                    VStack(alignment: .leading){
                        Image("img1").resizable()
                            .frame(width: 250, height: 150);
                        Text("Website.com")
                            .foregroundColor(.gray)
                        Text("Item description below the image and the title").frame( height: 50)
                        
                    }.padding() .background(Color(red: 0.9, green: 0.9, blue: 0.9)).frame(width: 250, height: 250)
                    VStack(alignment: .leading){
                        Image("img2").resizable()
                            .frame(width: 250, height: 150);
                        Text("Website.com")
                            .foregroundColor(.gray)
                        Text("Item description below the image and the title").frame(height: 50)
                        
                    }.frame(width: 250, height: 250).padding()
                    VStack(alignment: .leading){
                        Image("img1").resizable()
                            .frame(width: 250, height: 150);
                        Text("Website.com")
                            .foregroundColor(.gray)
                        Text("Item description below the image and the title").frame(height: 50)
                        
                    }.frame(width: 250, height: 250).padding()
                }
            }
            .frame(height: 350)
        HStack(spacing: 30){
            Button {
                print("Edit button was tapped")
            } label: {
                VStack{
                Image("img3").resizable()
                .frame(width: 75, height: 75);
                Text("Item1").foregroundColor(.black)
                }
                }
            Button {
                print("Edit button was tapped")
            } label: {
                VStack{
                    Image("img4").resizable()
                .frame(width: 75, height: 75);
                    Text("Item2") .foregroundColor(.black)               }
                }
            Button {
                print("Edit button was tapped")
            } label: {
                VStack{
                    Image("img5").resizable()
                    .frame(width: 75, height: 75);
                    Text("Item3").foregroundColor(.black)
                    
                }      }
            
            Button {
                print("Edit button was tapped")
            } label: {
                VStack{
                    
                
                    Image("img6").resizable()
                    .frame(width: 75, height: 75);
                    Text("Item4").foregroundColor(.black)
                }        }        }
        }}
}

struct HomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        HomeVIew()
    }
}
