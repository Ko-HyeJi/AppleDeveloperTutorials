//
//  StoryPageView.swift
//  02_Choose_Your_Own_Story
//
//  Created by 고혜지 on 2023/04/18.
//

import SwiftUI

struct StoryPageView: View {
    
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack {
            //스토리 영역
            ScrollView {
                Text(story[pageIndex].text) //subscript로 'Story 구조체' 내의 프로퍼티 'pages 배열'에 접근, 반환받은 'StoryPage 구조체'의 프로퍼티 'text'값을 받아옴
            }
            
            //Choice 영역
            /*
             id:\Choice.text
             SwiftUI uses the id argument to tell the choices apart from each other. Because each choice has different text, you can use the text property to identify them.
             Choice.text를 id로 사용한다 -> 'choices 배열'내에 동일한 text를 가진 Choice들이 있다면? -> 확인해보니 문제 발생함! -> ForEach 구분의 id는 반드시 중복 없음이 보장된 값을 사용해야 한다
             */
            ForEach(story[pageIndex].choices, id:\Choice.text) { choice in
                NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                    Text(choice.text)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarTitleDisplayMode(.automatic)
//        .navigationBarTitleDisplayMode(.large)
    }
}

struct StoryPageView_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0)
    }
}
