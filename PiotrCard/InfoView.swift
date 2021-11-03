//
//  InfoView.swift
//  PiotrCard
//
//  Created by Piotr Szerszeń on 11/10/2021.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: CGFloat(Constants.PHONE_FRAME_HEIGHT/2))
            .fill(Color("infoLabelBackground"))
            .frame(height: CGFloat(Constants.PHONE_FRAME_HEIGHT))
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(Constants.EYE_OF_NEWT))
                Text(text)
                    .foregroundColor(Color("infoLabelForeground"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            InfoView(text: "Hello", imageName: "phone.fill")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme($0)
        }
    }
}
