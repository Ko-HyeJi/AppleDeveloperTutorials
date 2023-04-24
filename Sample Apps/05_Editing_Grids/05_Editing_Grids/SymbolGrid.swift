//
//  SymbolGrid.swift
//  05_Editing_Grids
//
//  Created by 고혜지 on 2023/04/24.
//

import SwiftUI

struct SymbolGrid: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct SymbolGrid_Previews: PreviewProvider {
    static var previews: some View {
        SymbolGrid()
    }
}
