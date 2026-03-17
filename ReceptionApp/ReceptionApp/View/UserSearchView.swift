//
//  UserSearchView.swift
//  ReceptionApp
//
//  Created by 岡野春菜 on 2026/02/28.
//

import SwiftUI

struct UserSearchView: View {
    @State private var searchText: String = ""
    
    let colors: [String] = ["Red", "Blue", "Yellow", "Purple", "Orange", "Green", "Pink", "White", "Gray", "Black"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredColors, id: \.self) { color in
                    Text(color)
                }
            }
            .navigationTitle("Colors")
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
    }
    
    var filteredColors: [String] {
        if searchText.isEmpty {
            // 空欄の場合は、すべての候補を表示
            return colors
        } else {
            // 条件に当てはまるアイテムがある場合は当てはまるものをすべて表示
            return colors.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }

}


#Preview {
    UserSearchView()
}

//参考：https://qiita.com/yama__0808/items/9f88a2f0a340095b073a
