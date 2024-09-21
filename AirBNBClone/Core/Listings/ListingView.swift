//
//  ListingView.swift
//  AirBNBClone
//
//  Created by Eduardo Almeida on 21/09/24.
//

import SwiftUI

struct ListingView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        VStack (spacing: 8) {

            TabView {
                ForEach (images, id: \.self) { image in
                    Image(image)
                        .resizable()
                }
            }
            .foregroundStyle(.gray)
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .tabViewStyle(.page)
            
            HStack (alignment: .top) {
                VStack (alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack (spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                //
                HStack (spacing: 4) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingView()
}
