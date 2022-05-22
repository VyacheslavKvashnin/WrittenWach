//
//  WrittenWachApp.swift
//  WrittenWach WatchKit Extension
//
//  Created by Вячеслав Квашнин on 23.07.2021.
//

import SwiftUI
import CoreData

@main
struct WrittenWachApp: App {
    
    let persistenceController = PersistenceController.shared
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    
            }
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
