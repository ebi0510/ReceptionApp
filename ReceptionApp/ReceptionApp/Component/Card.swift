//
//  Card.swift
//  ReceptionApp
//
//  Created by 岡野春菜 on 2026/02/25.
//

import SwiftUI

struct Card: View {
    enum CardSize{
        case small, medium, large, custom(width: CGFloat, height: CGFloat)
        
        var sizeValues: (w: CGFloat, h: CGFloat) {
            switch self {
            case .small: return (200, 100)
            case .medium: return (300, 200)
            case .large: return (400, 300)
            case .custom(width: let w, height: let h): return (w, h)
            }
        }
    }
    
    let text: String
    let size: CardSize
    let action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(text)
                .frame(width: size.sizeValues.w, height: size.sizeValues.h)
        })
            .background(Color.white)
            .font(.system(size: 30)).bold()
            .foregroundStyle(Color.buttonText)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(RoundedRectangle(cornerRadius:  20).stroke(.gray, lineWidth: 1))
            .shadow(radius: 5, x: 5,y: 5)
    }
}

#Preview { Card(text: "Test", size: .small, action: {}) }
