//
//  SwiftUIScrumdingerApp.swift
//  SwiftUIScrumdinger
//
//  Created by 현수빈 on 12/30/23.
//

import SwiftUI

@main
struct SwiftUIScrumdingerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MeetingView()
            
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
