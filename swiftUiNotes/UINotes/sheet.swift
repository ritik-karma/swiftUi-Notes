///If we applied to .fullScreenCover instead of .sheet then it cover full also we can't minimize after that

import SwiftUI

struct sheet: View {
    @State var showModal = false
    var body: some View {
        Button("Show Sheet"){
            showModal = true
           // print("IT is a modal")
        }
        .font(.title)
        .sheet(isPresented: $showModal){
///isPresented mean if showModal is true then only when sheet is applied
            ///if i move sheet down then show modal again turn false
            Text("This is a Sheet view")
            Spacer()
        }
    }
}

#Preview {
    sheet()
}
