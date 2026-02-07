//
//  ContentView.swift
//  Count
//
//  Created by Aoi Ueno on 2026/02/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    @State var result = ""
    
    var body: some View {
        VStack {
            Text("\(result)")
                .frame(width: 300, height: 90)
                .font(.system(size: 32))
            Text("\(count)")
                .frame(width: 300, height: 100)
                .font(.system(size: 48))
                .foregroundColor(count > 0 ? .red :(count < 0 ? .blue : .black))
            HStack{
                Button{
                    count = count + 1
                    if count >= 10 {
                        result = "プラスの勝ち！"
                    } else if count >= 5 {
                        result = "プラスの優勢！"
                    } else if count <= -10 {
                        result = "マイナスの勝ち！"
                    } else if count <= -5 {
                        result = "マイナスの優勢！"
                
                    } else {
                        result = ""
                    }
                }label: {
                    Text("+")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(.red)
                }
                Button{
                    count = count - 1
                    if count >= 10 {
                        result = "プラスの勝ち！"
                    } else if count >= 5 {
                        result = "プラスの優勢！"
                    } else if count <= -10 {
                        result = "マイナスの勝ち！"
                    } else if count <= -5 {
                        result = "マイナスの優勢！"
                    } else {
                        result = ""
                    }
                }label: {
                    Text("-")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(.blue)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
