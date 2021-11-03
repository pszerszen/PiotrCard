//
//  ContentView.swift
//  PiotrCard
//
//  Created by Piotr Szerszeń on 11/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color(Constants.EYE_OF_NEWT)
                .ignoresSafeArea(.all)
            VStack {
                Image("piotr_square")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: CGFloat(Constants.IMAGE_SIZE),
                           height: CGFloat(Constants.IMAGE_SIZE),
                           alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Piotr Szerszeń")
                    .font(.custom("GrechenFuemen-Regular", size: 45))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Engineer")
                    .foregroundColor(.white)
                    .font(.custom("Kalam-Regular", size: 25))
                Divider()
                InfoView(text: "🇵🇱 +48 798 749 030", imageName: "phone.circle.fill")
                InfoView(text: "piotr.b.szerszen@icloud.com", imageName: "envelope.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
                     ContentView().preferredColorScheme($0)
                }
    }
}
