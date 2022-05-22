//
//  TaskView.swift
//  WrittenWach WatchKit Extension
//
//  Created by Вячеслав Квашнин on 23.07.2021.
//

import SwiftUI
import CoreData

struct TaskView: View {
    @FetchRequest(entity: Rec.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Rec.date, ascending: false)]) var items: FetchedResults<Rec>
    
    var body: some View {
        List(items) { item in
   
        }
        .overlay(
            Text(items.isEmpty ? "Нет записей" : "")
        )
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
