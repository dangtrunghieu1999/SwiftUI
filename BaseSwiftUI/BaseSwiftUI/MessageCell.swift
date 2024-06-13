//
//  MessageCell.swift
//  BaseSwiftUI
//
//  Created by Kai on 12/06/2024.
//

struct Notification: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    var isRead: Bool = false
}

import SwiftUI

struct NotificationRow: View {
    @Binding var notification: Notification
    var onDelete: () -> Void

    @State private var offset: CGFloat = 0
    @State private var showDeleteButton: Bool = false
    
    private let deleteButtonWidth: CGFloat = 100
    private let spacing: CGFloat = 10
    private let offsetTransit: CGFloat = 110
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                deleteButton
            }

            HStack {
                VStack(alignment: .leading) {
                    Text(notification.title)
                        .font(.headline)
                    Text(notification.message)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 2)
            .offset(x: offset)
            .gesture(
                swipeRightAnimate()
            )
        }
    }
}

extension NotificationRow {
    fileprivate func swipeRightAnimate() -> _EndedGesture<_ChangedGesture<DragGesture>> {
            return DragGesture()
                .onChanged { gesture in
                    if gesture.translation.width < 0 && !showDeleteButton {
                        withAnimation(Animation.spring()) {
                            offset = max(gesture.translation.width, -offsetTransit)
                        }
                    } else if gesture.translation.width > 0 && showDeleteButton {
                        withAnimation(Animation.spring()) {
                            offset = gesture.translation.width - offsetTransit
                        }
                    }
                }
                .onEnded { _ in
                    withAnimation(Animation.spring()) {
                        if offset < -deleteButtonWidth {
                            offset = -offsetTransit
                            showDeleteButton = true
                        } else {
                            offset = 0
                            showDeleteButton = false
                        }
                    }
                }
        }
    
    private var deleteButton: some View {
        Button(action: onDelete) {
            HStack {
                Image(systemName: "trash")
                Text("Delete")
                    .font(.caption)
            }
            .frame(width: deleteButtonWidth, height: 76)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
    
    private var notificationContent: some View {
          VStack(alignment: .leading) {
              Text(notification.title)
                  .font(.headline)
              Text(notification.message)
                  .font(.subheadline)
                  .foregroundColor(.gray)
          }
      }
}
