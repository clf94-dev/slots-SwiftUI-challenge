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
            Spacer()
            Text("SwiftUI Slots!")
            Spacer()
            Text("Credits:")
            Spacer()
            HStack{
                Spacer()
                Image("cherry").resizable().frame(width: 100, height: 100)
                Spacer()
                Image("apple").resizable().frame(width: 100, height: 100)
                Spacer()
                Image("star").resizable().frame(width: 100, height: 100)
                Spacer()
            }
                .padding(.all)
                
            Spacer()
            Button(action: {}, label: { Text("spin") })
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
