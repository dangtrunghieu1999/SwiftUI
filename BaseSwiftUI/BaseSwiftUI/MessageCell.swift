//
//  MessageCell.swift
//  BaseSwiftUI
//
//  Created by Kai on 12/06/2024.
//

struct Notification: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let message: String
    var isRead: Bool = false
}

import SwiftUI

struct NotificationRow: View {
    @Binding var notification: Notification
    var onDelete: () -> Void
    var isSelectable: Bool
    var isSelected: Bool
    var onSelect: () -> Void
    
    @State private var offset: CGFloat = 0
    @State private var showDeleteButton: Bool = false
    
    private let deleteButtonWidth: CGFloat = 100
    private let spacing: CGFloat = 10
    private let offsetTransit: CGFloat = 110
    private let rowHeight: CGFloat = 76
    
    var body: some View {
        HStack {
            if isSelectable {
                Button(action: onSelect) {
                    Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(isSelected ? .blue : .gray)
                }
                .padding(.leading, 10)
                .padding(.trailing, 20)
            }
            ZStack {
                HStack {
                    Spacer()
                    deleteButton
                }
                
                HStack {
                    notificationContent
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
        .frame(height: rowHeight)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 8)
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
            .frame(width: deleteButtonWidth, height: rowHeight)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            .disabled(!showDeleteButton)
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
