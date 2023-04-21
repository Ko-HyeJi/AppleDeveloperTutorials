//
//  ContentView.swift
//  04_Organizing_with_Grids
//
//  Created by 고혜지 on 2023/04/21.
//

import SwiftUI

struct ContentView: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)
//    let columnLayout = [GridItem(), GridItem(), GridItem()]
    
    @State private var selectedColor = Color.gray
    
    let allColors: [Color] = [
        .pink,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .gray
    ]
    
    var body: some View {
        VStack {
            Text("Selected Color")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(selectedColor)
                .padding()
            
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    //Color의 description 속성은 해당 색상을 나타내는 문자열을 반환 -> id로 \.self를 써도 문제 없을 것 같은데 왜 descriotion을?
                    ForEach(allColors, id: \.description) { color in
                        Button {
                            selectedColor = color
                        } label: {
                            RoundedRectangle(cornerRadius: 4.0)
                                .aspectRatio(1.0, contentMode: .fit)
                                .foregroundColor(color)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
