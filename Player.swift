//
//  Player.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/26.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import Foundation

struct Player {
    
    var name: String
    var highScore: Int = 0
    var history: [Int] = []
    
    init(_ name: String) {
        self.name = name
    }

}
