//
//  HomeView.swift
//  01_About_Me
//
//  Created by 고혜지 on 2023/04/18.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle.italic())
                .fontWeight(.bold)

            ZStack {
                Circle()
                    .foregroundColor(lightGray)
                    .frame(width: 300, height: 300)
                Image(info.image)
                    .resizable()
                    .frame(maxWidth: 300, maxHeight: 300)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(1000)
                    .padding([.top, .bottom], 50)
            }

            Text(info.name)
                .font(.largeTitle.bold().italic())
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
