//
//  Home.swift
//  WrittenWach WatchKit Extension
//
//  Created by Вячеслав Квашнин on 23.07.2021.
//

import SwiftUI
import CoreData

struct Home: View {
    var body: some View {
        GeometryReader { reader in
            let rect = reader.frame(in: .global)
            VStack(spacing: 20) {
                HStack(spacing: 20) {
                    NavigationLink(destination: NewItem()) {
                    ButtonAdd(img: "plus", name: "Запись", rect: rect, color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    ButtonAdd(img: "trash.fill", name: "Удалить", rect: rect, color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                }
                .frame(width: rect.width, alignment: .center)
                
                HStack(spacing: 20) {
                    
                    NavigationLink(destination: TaskView()) {
                    ButtonAdd(img: "chart.bar.doc.horizontal", name: "Просмотр", rect: rect, color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    ButtonAdd(img: "plus", name: "Запись", rect: rect, color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                }
                .frame(width: rect.width, alignment: .center)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
