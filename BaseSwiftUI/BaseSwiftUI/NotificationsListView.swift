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
    
    @State private var isSelectionMode: Bool = false
    @State private var selectedNotifications: Set<UUID> = []

    var body: some View {
        NavigationView {
            List {
                ForEach($notifications) { $notification in
                    NotificationRow(
                        notification: $notification,
                        onDelete: {
                            deleteNotification(notification: notification)
                        },
                        isSelectable: isSelectionMode,
                        isSelected: selectedNotifications.contains(notification.id),
                        onSelect: {
                            toggleSelection(for: notification)
                        }
                    )
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                    .padding(.bottom, 10)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Notifications")
            .navigationBarItems(leading: editButton)
        }
    }
    
    private func deleteNotification(notification: Notification) {
        if let index = notifications.firstIndex(where: { $0.id == notification.id }) {
            notifications.remove(at: index)
        }
    }
    
    private var editButton: some View {
          Button(action: {
              isSelectionMode.toggle()
              if !isSelectionMode {
                  selectedNotifications.removeAll()
              }
          }) {
              Text(isSelectionMode ? "Done" : "Edit")
          }
      }
    
    private func toggleSelection(for notification: Notification) {
        if selectedNotifications.contains(notification.id) {
            selectedNotifications.remove(notification.id)
        } else {
            selectedNotifications.insert(notification.id)
        }
    }
}
