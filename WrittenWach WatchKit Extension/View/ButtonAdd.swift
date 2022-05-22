//
//  ButtonAdd.swift
//  WrittenWach WatchKit Extension
//
//  Created by Вячеслав Квашнин on 23.07.2021.
//

import SwiftUI
import CoreData

struct ButtonAdd: View {
    let img: String
    let name: String
    let rect: CGRect
    let color: Color
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: img)
                .font(.title3)
                .frame(width: rect.width / 3, height: rect.height / 3, alignment: .center)
                .background(color)
                .clipShape(Circle())
            Text(name)
                .font(.system(size: 12))
                .foregroundColor(.white)
        }
    }
}
