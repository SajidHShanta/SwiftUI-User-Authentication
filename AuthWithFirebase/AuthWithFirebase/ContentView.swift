//
//  ContentView.swift
//  AuthWithFirebase
//
//  Created by Sajid Shanta on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
//            Color.black

//            RoundedRectangle(cornerRadius: 30, style: .continuous)
//                .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
//                .frame(width: 300, height:400)
//                .rotationEffect(.degrees(-45))
//                .offset(y: -350)
            
            Color.blue
            
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
                
            VStack(spacing: 20.0) {
                Text("Login")
                    .foregroundColor(.blue)
                    .font(.largeTitle.bold())

                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    
                
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                
                Button("Login") {
                    //code
                    }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                
                Button {
                    // signup
                } label: {
                    Text("Don't have an account? Sign up")
                }
                .padding()

            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/// place holder
//extension View {
//    func placeholder<Content: View>(
//        when shouldShow: Bool,
//        alignment: Alignment = .leading,
//        @ViewBuilder placeholder: () -> Content) -> some View {
//        ZStack(alignment: alignment) {
//            placeholder().opacity(shouldShow ? 1 : 0)
//            self
//        }
//    }
//}

//                    .placeholder(when: email.isEmpty) {
//                        Text("Email")
//                            .foregroundColor(.white)
//                            .bold()
//                    }
