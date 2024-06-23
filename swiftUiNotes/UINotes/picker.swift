//
//  picker.swift
//  
//
//  Created by Ritik Karma on 28/05/24.
//

import SwiftUI

struct picker: View {
    @State var isLoginMode = true
    var body: some View {
        Picker("", selection: $isLoginMode) {
            Text("Login")
                .tag(true)///tag is used to changing the state
            Text("Create Account")
                .tag(false)
        }
        .pickerStyle(.segmented)///Diffrent styles of picker view
    }
}

#Preview {
    picker()
}
