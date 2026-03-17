//
//  TopView.swift
//  ReceptionApp
//
//  Created by 岡野春菜 on 2026/02/25.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        ZStack {
            Color.backGround.ignoresSafeArea()
            
            VStack(spacing: 40) {
                Image(.brandLogo)
                
                Text("ご用件をお選びください")
                    .font(.title)
                    .padding(20)
                HStack(spacing: 50) {
                    Card(text: "担当者呼び出し", size: .medium){
                        print("ボタンが押されました")
                    }
                    Card(text: "配達受付", size: .medium){
                        print("ボタンが押されました")
                    }
                }
            }
            .padding(100)
        }
    }
}

#Preview {
    TopView()
}
