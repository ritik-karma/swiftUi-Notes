//MARK: -Form
/// similar to list but better for diffrent types and getting user input (editing)

import SwiftUI

struct form: View {
    @State var userN = ""
    @State var bio = ""
    @State var pass = ""
    var body: some View {
        Form{
            Text("This is form")
            TextField("Enter user name", text: $userN )
                .submitLabel(.done)///In mobile keyboard default there is return button
                .textFieldStyle(.roundedBorder)
///In the TextField, $userN is used to create a binding to the userN state property. This allows the text field to read and write to the userN property, updating it as the user types in the text field.
            Text(userN)
                .foregroundStyle(.pink)
            TextField("Enter your bio", text: $bio , axis: .vertical ) ///bio will expands vertically. Our written bio will store in the variable bio
                .padding(16)
                .background(Color(.systemGroupedBackground))
                .font(.headline)
                .cornerRadius(15)
                .keyboardType(.emailAddress)///we will get the @ suggested keyboard in the iphone
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled() ///optional
            SecureField("For password", text: $pass)
            Button("Submit"){
                //code
            }
            
        }
    }
}
#Preview {
    form()
}

