//
//  Joke.swift
//  Jokes
//
//  Created by David Li on 2023-04-20.
//

import Foundation

struct Joke: Identifiable, Codable{
    let type: String
    let setup: String
    let punchline: String
    let id: Int
}


let example_joke = Joke(type: "General", setup: "How much does a hipster weight", punchline: "An instagram", id: 146)
