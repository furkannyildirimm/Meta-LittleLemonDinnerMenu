//
//  Title.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import SwiftUI

struct Title: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.medium)
            .foregroundColor(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: "Title")
    }
}
