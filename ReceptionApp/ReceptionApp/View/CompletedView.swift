//
//  CompletedView.swift
//  ReceptionApp
//
//  Created by 岡野春菜 on 2026/03/18.
//

import SwiftUI

struct CompletedView: View {
    var body: some View {
        ZStack {
            Color.backGround.ignoresSafeArea()
            
            VStack {
                Image(.check)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .padding(50)
                VStack(spacing: 30){
                    Text("受付が完了しました")
                        .font(.largeTitle).bold()
                    Text("今しばらくお待ちください")
                        .font(.title)
                    NavigationLink(destination: TopView()) {
                        Text("ホームへ戻る")
                            .font(.title)
                            .frame(width: 250, height: 50)
                            .background(Capsule().fill(Color.black))
                            .foregroundStyle(.white)
                            .padding(.top, 50)
                    }
                }
            }
        }
    }
}

#Preview {
    CompletedView()
}
