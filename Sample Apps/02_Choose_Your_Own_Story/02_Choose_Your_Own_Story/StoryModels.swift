//
//  StoryModels.swift
//  02_Choose_Your_Own_Story
//
//  Created by 고혜지 on 2023/04/18.
//

import Foundation

struct Story {
    
    let pages: [StoryPage]
    
    subscript(_ pageIndex: Int) -> StoryPage { //Story 구조체의 프로퍼티 'pages'는 배열로 이루어져 있는데 배열에 내부에 인덱스로 접근을 가능하게 해줌!
        return pages[pageIndex]
    }
}

struct StoryPage {
    let text: String
    
    let choices: [Choice]
    
    //사용자 정의 init()메서드 (사용자가 정의하지 않으면 Swift는 모든 프로퍼티를 기본 값으로 초기화하는 init()메서드를 자동으로 생성함)
    init(_ text: String, choices: [Choice]) { // init(_:choices:)
        self.text = text
        self.choices = choices
    }
    //    init(text: String, choices: [Choice]) -> StoryPage 인스턴스 생성시 매개변수 이름 생략 불가( init(text:choices:) )
    //    init(_ text: String, _ choices: [Choice]) -> StoryPage 인스턴스 생성시 매개변수 이름 생략 가능( init(_:_:) )
}

struct Choice {
    let text: String
    let destination: Int
}
