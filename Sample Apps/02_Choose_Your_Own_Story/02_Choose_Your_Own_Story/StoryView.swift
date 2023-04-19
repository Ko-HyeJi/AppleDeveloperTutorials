//
//  StoryView.swift
//  02_Choose_Your_Own_Story
//
//  Created by 고혜지 on 2023/04/18.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        NavigationView {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
