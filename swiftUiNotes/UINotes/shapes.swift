//
//  shapes.swift
//  swiftUiBasics
//
//  Created by Ritik Karma on 20/01/24.
//

import SwiftUI

struct shapes: View {
    var body: some View {
        VStack(alignment: .center, spacing: 19){
                 Circle()
             .stroke(lineWidth: 20)  //can't put below fill, 20 pixel
             .fill(Color(white:0.5))
             .frame(width: 200, height: 100)
             
                 Rectangle()
             .fill(.blue)
             .frame(width: 100, height: 190)
             
             .clipShape(RoundedRectangle(cornerRadius: 10))
             .shadow(color: .gray, radius: 10, x: -5, y: 5)
             
            Capsule()
                .fill(.black)
                .frame(width: 200, height: 64)
                .overlay(Text("hello").foregroundColor(.white))
            
            Text("HIIIi")
                .overlay{
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(lineWidth: 5)
                        .foregroundStyle(Color.gray)
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 39)
            
                
        }
    }
}

#Preview {
    shapes()
}
