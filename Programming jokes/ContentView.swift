//
//  ContentView.swift
//  Programming jokes
//
//  Created by Student on 2/25/21.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                        .padding(),
                    label: {
                        Text(joke.setup)
                    })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
    }
    func getJokes() {
        let apiKey = "?rapidapi-key=ba1b549956msha6fa1902ee76913p1104c9jsncc2a41204a3d"
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
