//
//  feedmodels.swift
//  camilyo-roman-test
//
//  Created by Roman Sukner on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import Foundation


enum FeedElement {
    case apple(Apple)
    case google(Google)
    case yahoo(Yahoo)
}

struct Apple {
    let text: String
}

struct Yahoo {
    let text: String
}

struct Google {
    let text: String
}
