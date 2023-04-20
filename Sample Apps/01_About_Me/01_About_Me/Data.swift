//
//  Data.swift
//  01_About_Me
//
//  Created by 고혜지 on 2023/04/18.
//

import Foundation
import SwiftUI

let lightGray:Color = Color(
    red: 220/255,
    green: 220/255,
    blue: 220/255)

struct Info {
    let image: String
    let profile: String
    let name: String
    let story: String
    let hobbies: [(String, String)]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let info = Info(
    image: "hazzy",
    profile: "profile",
    name: "Hazzy",
    story:
"""
고혜지
KO HYEJI

1997. 10. 13.

42 Seoul
Cadet "hyko"

Apple Developer Academy
Junior Learner "Hazzy"
""",
    hobbies: [("Swimming", "figure.pool.swim"), ("Camping", "tent.fill"), ("Reading", "book.fill")],
    foods: ["🥐", "🌮", "🍣"],
    colors: [Color.blue, Color.green, Color.gray],
    funFacts: [
        "The femur is the longest and largest bone in the human body.",
        "The moon is 238,900 miles away.",
        "Prince’s last name was Nelson.",
        "503 new species were discovered in 2020.",
        "Ice is 9 percent less dense than liquid water.",
        "You can spell every number up to 1,000 without using the letter A.\n\n...one, two, three, four...ninety-nine...nine hundred ninety-nine 🧐",
        "A collection of hippos is called a bloat.",
        "White sand beaches are made of parrotfish poop.",
    ]
)

