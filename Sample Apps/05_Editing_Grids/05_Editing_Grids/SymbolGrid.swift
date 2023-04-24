//
//  SymbolGrid.swift
//  05_Editing_Grids
//
//  Created by 고혜지 on 2023/04/24.
//

import SwiftUI

struct SymbolGrid: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)
    let numberArr = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "*", "0", "#"]
    
    var body: some View {
    ScrollView {
            LazyVGrid(columns: columnLayout) {
                ForEach(numberArr, id: \.self) { num in
                    Text(num)
                }
                .padding()
            }
        }
    }
}

struct SymbolGrid_Previews: PreviewProvider {
    static var previews: some View {
        SymbolGrid()
    }
}
