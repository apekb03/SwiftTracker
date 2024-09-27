import SwiftUI


struct SwiftTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("SWIFT TRACKER")
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: LoginView()) {
                    Text("Login")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: SignUpView()) {
                    Text("Sign up")
                        .font(.title2)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Spacer()

                Text("Version 1.1")
                    .padding()

                HStack {
                    Button(action: {
                        print("Contact us action")
                    }) {
                        Text("Contact us")
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        print("Help action")
                    }) {
                        Text("Help")
                    }
                }
                .padding()
            }
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Text("SWIFT TRACKER")
                .font(.largeTitle)
                .padding()

            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                print("Login action with username: \(username) and password: \(password)")
            }) {
                Text("Login")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()

            Text("Version 1.1")
                .padding()
        }
        .navigationBarTitle("Login")
    }
}

struct SignUpView: View {
    var body: some View {
        Text("Sign up view")
            .navigationBarTitle("Sign Up")
    }
}

struct FriendsView: View {
    var body: some View {
        VStack {
            Text("SWIFT TRACKER")
                .font(.largeTitle)
                .padding()

            List {
                FriendRow(name: "Joel Komieter")
                FriendRow(name: "Apekshya Bhattarai")
                FriendRow(name: "Blessing Odomena", isRequest: true)
            }

            Text("Version 1.1")
                .padding()
        }
        .navigationBarTitle("Friends")
    }
}

struct FriendRow: View {
    var name: String
    var isRequest: Bool = false

    var body: some View {
        HStack {
            Text(name)
            Spacer()
            if isRequest {
                Button(action: {
                    print("Request location action for \(name)")
                }) {
                    Text("Request Location")
                }
            } else {
                Button(action: {
                    print("View location action for \(name)")
                }) {
                    Text("View Location")
                }
                .padding(.trailing)
                Button(action: {
                    print("Track location action for \(name)")
                }) {
                    Text("Track Location")
                }
            }
        }
        .padding()
    }
}

struct ContactsView: View {
    var body: some View {
        VStack {
            Text("SWIFT TRACKER")
                .font(.largeTitle)
                .padding()

            List {
                HStack {
                    Text("Blay")
                    Spacer()
                    Button(action: {
                        print("Add as friend action for Blay")
                    }) {
                        Text("Add as friend")
                    }
                }
            }

            Text("Version 1.1")
                .padding()
        }
        .navigationBarTitle("Contacts")
    }
}

