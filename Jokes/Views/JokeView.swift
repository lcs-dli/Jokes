//
//  JokeView.swift
//  Jokes
//
//  Created by David Li on 2023-04-20.
//

import SwiftUI

struct JokeView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("You see, Mountains are not funny")
                    .font(.title)
                    .multilineTextAlignment(.center)
            }
        }
        .navigationTitle("Random Jokes")
       
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            JokeView()
        }
    }
}
