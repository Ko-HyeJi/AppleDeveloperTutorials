//
//  ContentView.swift
//  01_About_Me
//
//  Created by 고혜지 on 2023/04/18.
//

/*
 tabItem 수정자는 Label, Text, Image만 사용 가능!
 */

import SwiftUI

struct ContentView: View {

    @State private var funFact = ""

    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "person") }

            StoryView()
                .tabItem { Label("Story", systemImage: "book") }

            FavoritesView()
                .tabItem { Label("Favorites", systemImage: "star") }
                .onAppear { funFact = "" }

            FunFactsView(funFact: $funFact)
                .tabItem { Label("Fun Facts", systemImage: "hand.thumbsup") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
