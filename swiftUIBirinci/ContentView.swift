//
//  ContentView.swift
//  swiftUIBirinci
//
//  Created by kerem on 24.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var placeHolder = "I'm placeholder"
    var body: some View {
        VStack{
            Text("\(self.placeHolder)")
            DogView(placeHolder: self.$placeHolder)
            CatView(placeHolder: self.$placeHolder)
        }
    }
}

struct DogView: View{
    @Binding var placeHolder: String
    var body: some View{
        Button("Dog Says"){
            self.placeHolder = "hav hav"
        }
    }
    
}

struct CatView: View{
    @Binding var placeHolder: String
    var body: some View{
        Button("Cat Says"){
            self.placeHolder = "meow meow"
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
