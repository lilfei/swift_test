//
//  ContentView.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/25.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import SwiftUI

/*
 布局组件
    ZStack
    VStack
    HStack
 */
struct ContentView: View {
    var player = Player("Tomas");
    var body: some View {
        VStack{
            Text("Hello World!")
                .font(.largeTitle)
                .padding()
            Text(player.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
