//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by RhezaWidhiarto on 27/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-login")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 20) {
                IconView()
                FormLogin()
            }
            .padding(.all, 20)
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// TODO: Can select weather use this hashtag or struct (above)
//#Preview {
//    ContentView()
//}

struct IconView: View {
    var body: some View {
        VStack {
            Image("icon-swift")
                .resizable()
                .frame(width: 100, height: 100)
                .background(.backgroundProfile)
                .foregroundColor(.white)
                .padding()
                .background(.backgroundProfile)
                .cornerRadius(20)
            Text("Please Login")
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct FormLogin: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username")
                .font(.callout)
                .bold()
            TextField("Input your username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Password")
                .font(.callout)
                .bold()
            SecureField("Input your password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: { print("Hello \($username.wrappedValue)") }) {
                Text("SIGN IN")
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(10)
            
        }
        .padding(.all, 30)
        .background(.backgroundProfile)
        .cornerRadius(10)
        
    }
}
