//
//  NotificationsListView.swift
//  BaseSwiftUI
//
//  Created by Kai on 12/06/2024.
//


import SwiftUI

struct NotificationsListView: View {
    @State private var notifications: [Notification] = [
        Notification(title: "Sale Alert", message: "50% off on all items today!"),
        Notification(title: "New Feature", message: "Check out our new AR feature."),
        Notification(title: "Reminder", message: "Your coupon expires tomorrow.")
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach($notifications) { $notification in
                    NotificationRow(notification: $notification) {
                        deleteNotification(notification: notification)
                    }
                }
            }
            .navigationTitle("Notifications")
        }
    }
    
    private func deleteNotification(notification: Notification) {
        if let index = notifications.firstIndex(where: { $0.id == notification.id }) {
            notifications.remove(at: index)
        }
    }
}
