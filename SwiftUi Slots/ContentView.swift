//
//  ContentView.swift
//  SwiftUi Slots
//
//  Created by Carmen Lucas on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("SwiftUI Slots!")
                .font(.system(size: 35))
                .padding(.top, 35)
            Spacer()
            Text("Credits:")
            Spacer()
            HStack{
                Spacer()
                Image("cherry")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
                Image("star")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
                .padding(.all)
                
            Spacer()
            Button(action: {}, label: {
                Text("Spin")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
            })
                .padding(.vertical, 10)
                .padding(.horizontal, 30)
                .foregroundColor(Color.white)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.pink/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.pink/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(25)
                
                
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
