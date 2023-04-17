//
//  StoryView.swift
//  01_About_Me
//
//  Created by 고혜지 on 2023/04/18.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle.italic())
                .fontWeight(.bold)
                .padding(.top, 50)
            
            scrollView()
        }
        .padding([.top, .bottom], 30)
    }
}

struct scrollView: View {
    
    @Namespace var topID
    @Namespace var bottomID
    
    var body: some View {
        ScrollViewReader { proxy in
            Button(
                action: { withAnimation { proxy.scrollTo(topID) } },
                label: { Image(systemName: "chevron.up").foregroundColor(Color(.systemGray2)) }
            )
            .padding([.top, .bottom], 10)

            ScrollView {
                Spacer().id(topID)

                Image(info.profile)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300, maxHeight: 300)
                    .shadow(radius: 5)

                Text(info.story)
                    .font(.body)
                    .padding()

                Spacer().id(bottomID)
            }

            Button(
                action: { withAnimation { proxy.scrollTo(bottomID) } },
                label: { Image(systemName: "chevron.down").foregroundColor(Color(.systemGray2)) }
            )
            .padding([.top, .bottom], 10)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
