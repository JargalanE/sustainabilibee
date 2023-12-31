//
//  sustainabilibeeApp.swift
//  sustainabilibee
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

@main
struct sustainabilibeeApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
