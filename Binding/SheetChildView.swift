//
//  SheetChildView.swift
//  Binding
//
//  Created by MacBook Pro on 14/01/2025.
//

import SwiftUI

struct SheetChildView: View {
    @Binding var name: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form{
            Section("Info"){
                Text("Name: \(name)")
                TextField("Enter Name...", text: $name)
                Button("Go Back"){
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    SheetChildView(name: .constant("Swift"))
}
