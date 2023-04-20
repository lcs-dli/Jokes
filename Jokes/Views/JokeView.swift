//
//  JokeView.swift
//  Jokes
//
//  Created by David Li on 2023-04-20.
//

import SwiftUI

struct JokeView: View {
    @State var punchlineOpacity = 0.0
    
    @State var currentJokes: Joke?
    
    var body: some View {
        NavigationView{
            VStack{
                if let currentJokes = currentJokes{
                    Text(currentJokes.setup)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        withAnimation(.easeIn(duration: 1.0)){
                            punchlineOpacity = 1.0
                        }
                    }, label: {
                        Image(systemName: "arrow.down.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .tint(.black)
                    })
                    
                    Text(currentJokes.punchline)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .opacity(punchlineOpacity)

                }else{
                    ProgressView()
                }
            }
        }
        .navigationTitle("Random Jokes")
        .task {
            currentJokes = await NetworkService.fetch()
        }
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            JokeView()
        }
    }
}
