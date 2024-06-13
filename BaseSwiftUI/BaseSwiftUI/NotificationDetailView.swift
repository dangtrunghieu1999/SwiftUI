//
//  NotificationDetailView.swift
//  BaseSwiftUI
//
//  Created by Kai on 13/06/2024.
//

import SwiftUI

struct NotificationDetailView: View {
    @Binding var notification: Notification

    var body: some View {
        VStack {
            Text(notification.title)
                .font(.title)
                .padding()
            Text(notification.message)
                .font(.body)
                .padding()
            Spacer()
        }
        .navigationBarTitle(notification.title)
    }
}
