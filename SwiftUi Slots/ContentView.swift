//
//  ContentView.swift
//  SwiftUi Slots
//
//  Created by Carmen Lucas on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var points = 500
    @State var firstSlot = 0
    @State var secondSlot = 0
    @State var thirdSlot = 0
    
    let imageArray = ["cherry", "apple", "star"]

    var body: some View {
        VStack{
            Text("SwiftUI Slots!")
                .font(.system(size: 35))
                .padding(.top, 35)
            Spacer()
            Text("Credits: " + String(points))
            Spacer()
            HStack{
                Spacer()
                Image(imageArray[firstSlot])
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
                Image(imageArray[secondSlot])
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
                Image(imageArray[thirdSlot])
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
                .padding(.all)
                
            Spacer()
            Button(action: {
                firstSlot = Int.random(in: 0...2)
                secondSlot = Int.random(in: 0...2)
                thirdSlot = Int.random(in: 0...2)
                
                if (firstSlot == secondSlot && secondSlot == thirdSlot && firstSlot == 2) {
                    points += 100
                    
                }else if (firstSlot == secondSlot && secondSlot == thirdSlot && firstSlot == 1){
                    points += 10
                }else if (firstSlot == secondSlot && secondSlot == thirdSlot && firstSlot == 0){
                    points += 25
                }
                else {
                    points -= 5
                }
            }, label: {
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
