//
//  FunFactsView.swift
//  01_About_Me
//
//  Created by 고혜지 on 2023/04/18.
//

import SwiftUI

struct FunFactsView: View {

    @Binding var funFact:String
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle.italic())
                .fontWeight(.bold)
                        
            ZStack {
                if (funFact == "") {
                    Text("Click the Button")
                        .foregroundColor(.gray)
                }

                Text(funFact)
                    .padding()
                    .font(.title)
                    .frame(maxWidth: 350, maxHeight: 300)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 1))
                    .padding([.top, .bottom], 60)

            }
            
            Button("Show Random Fact") {
                funFact = info.funFacts.randomElement()!
            }
            .padding()
            .foregroundColor(.black)
            .background(lightGray)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 1))
        }
        .padding()
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView(funFact: .constant(""))
    }
}
