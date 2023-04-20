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
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
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
