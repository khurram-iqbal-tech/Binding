//
//  ContentView.swift
//  Binding
//
//  Created by MacBook Pro on 13/01/2025.
//

import SwiftUI

struct ChildView: View {
    @Binding  var name: String
    var body: some View {
        Section{
            Text("Name: \(name)")
            TextField("Enter Name...", text: $name)
        }
    }
}

struct ContentView: View {
    @State private var name = "Swift UI"
    @State private var showSheet = false
    
    var body: some View {
        Form{
            Text("Name: \(name)")
            TextField("Enter Name...", text: $name)
            Spacer()
            Section("Child View"){
                ChildView(name: $name)
            }
            Section{
                Button("View Sheet"){
                    showSheet.toggle()
                }
            }
            
        }
        .sheet(isPresented: $showSheet){
            SheetChildView(name: $name)
        }
        
    }
}

#Preview {
    ContentView()
}
