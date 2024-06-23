//
//  rough.swift
//  
//
//  Created by Ritik Karma on 20/05/24.
//

import SwiftUI

//
//  ContentView.swift
//  Talkie
//
//  Created by Ritik Karma on 28/05/24.
//



struct LoginView: View {
    private func loginPageAction() {
        if isLoginMode {
            print("Should log into firebase")
        } else{
            print("Register new acc in firebase and also store image...")
        }
    }
    
    @State var isLoginMode = true
    @State var userEmail = ""
    @State var userPassword = ""
    
    var body: some View {
        
        
        NavigationStack{
            
            VStack(spacing: 15){
                Picker("Pick", selection: $isLoginMode) {
                    Text("Login")
                        .tag(true)
                    Text("Create Account")
                        .tag(false)
                }
                .pickerStyle(.segmented)
                
                
                if !isLoginMode{
                    Button{
                        //action
                    } label: {
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .padding()
                    }
                    .padding(.top)
                }
                
                
                VStack(spacing: 15){
                    TextField("Email", text: $userEmail)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    
                    SecureField("Password", text: $userPassword)
                }
                .autocorrectionDisabled()
                .font(.title2)
                .padding()
                .background(.white)
                
                Button{
                    loginPageAction()
                } label: {
                    Text(isLoginMode ? "Login" : "Create Account")
                }
                .frame(width: 350, height: 50)
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                Spacer()
                
            }
            
            
            .padding()
            .navigationTitle(isLoginMode ? "Login" : "Create Account")
            .background(Color.gray.opacity(0.1))
        }
        
        
    }
}

#Preview {
    LoginView()
}

