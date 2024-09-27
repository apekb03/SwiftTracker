import SwiftUI

@main
struct SwiftTrackerApps: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentViews: View {
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
                        // Contact us action
                    }) {
                        Text("Contact us")
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Help action
                    }) {
                        Text("Help")
                    }
                }
                .padding()
            }
        }
    }
}

struct LoginViews: View {
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
                // Login action
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

struct SignUpViews: View {
    var body: some View {
        Text("Sign up view")
            .navigationBarTitle("Sign Up")
    }
}

struct FriendsViews: View {
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

struct FriendRows: View {
    var name: String
    var isRequest: Bool = false

    var body: some View {
        HStack {
            Text(name)
            Spacer()
            if isRequest {
                Button(action: {
                    // Request location action
                }) {
                    Text("Request Location")
                }
            } else {
                Button(action: {
                    // View location action
                }) {
                    Text("View Location")
                }
                .padding(.trailing)
                Button(action: {
                    // Track location action
                }) {
                    Text("Track Location")
                }
            }
        }
        .padding()
    }
}

struct ContactsViews: View {
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
                        // Add as friend action
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

