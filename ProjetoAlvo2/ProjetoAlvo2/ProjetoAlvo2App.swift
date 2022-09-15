//
//  ProjetoAlvo2App.swift
//  ProjetoAlvo2
//
//  Created by user226748 on 9/13/22.
//

import SwiftUI

@main
struct ProjetoAlvo2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(slideValue: 50.0)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
