//
//  FavoritesView.swift
//  01_About_Me
//
//  Created by 고혜지 on 2023/04/18.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle.italic())
                .fontWeight(.bold)
                .padding(.bottom, 40)

            Text("Hobbies")
                .font(.title2)

            HStack {
                ForEach(info.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                }
                .padding()
            }
            .padding()

            Text("Foods")
                .font(.title2)

            HStack(spacing: 60) {
                ForEach(info.foods, id: \.self) { food in
                    Text(food)
                        .font(.system(size: 48))
                }
            }
            .padding()

            Text("Favorite Colors")
                .font(.title2)

            HStack(spacing: 30) {
                ForEach(info.colors, id: \.self) { color in
                    color
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
