//
//  ContentView.swift
//  wearables_exercise_JonathanK Watch App
//
//  Created by Jonathan Kearns on 2/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var titleText = Text("Flip the Coin")
            


    var body: some View {
        VStack {
           
            
            titleText
//                .font(.largeTitle)
                .foregroundColor(Color.gray)
                .accessibilityLabel("flipTheCoin")
                .multilineTextAlignment(.center)
                .font(.system(size: 35))
            
            Spacer()
            Button {
                
                
                titleText = Text("Flipping.")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    titleText = Text("Flipping..")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        titleText = Text("Flipping...")
                    }
                    
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            
                            let randomFlip = Bool.random()
                            
                            if randomFlip == true{
                                titleText = Text(Image(systemName: "brain.head.profile"))
                                
                            } else{
                                
                                titleText = Text(Image(systemName:"building.columns"))
                                
            
                            }
                        
                        }
                }
                //do something
                
                
            } label: {
                Text("Flip")
                    .foregroundColor(.white)
                    
            }
            .background(Color.blue)
            .cornerRadius(20)
            .accessibilityIdentifier("flipTheCoin")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
