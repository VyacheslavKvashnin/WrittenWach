//
//  NewItem.swift
//  WrittenWach WatchKit Extension
//
//  Created by Вячеслав Квашнин on 23.07.2021.
//

import SwiftUI
import CoreData

struct NewItem: View {
    @Environment(\.managedObjectContext) var context
    @Environment(\.presentationMode) var presentation
    
    @State private var newText = ""
    
    var body: some View {
        VStack {
            TextField("Новая запись...", text: $newText)
            
            Button(action: addNew, label: {
                Text("Сохранить")
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                    .cornerRadius(10)
            })
                .padding(.top, 20)
                .buttonStyle(PlainButtonStyle())
                .disabled(newText == "")
        }
        .navigationTitle("Добавить запись")
    }
    
    func addNew() {
        let task = Rec(context: context)
        task.name = newText
        task.date = Date()
        do {
            try context.save()
            presentation.wrappedValue.dismiss()
        } catch {
            print(error.localizedDescription)
        }
    }
}
