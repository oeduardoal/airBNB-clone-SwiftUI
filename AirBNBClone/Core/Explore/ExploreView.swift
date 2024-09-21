//
//  ExploreView.swift
//  AirBNBClone
//
//  Created by Eduardo Almeida on 21/09/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterbar()
                    .padding(.horizontal)
                
                LazyVStack (spacing: 30) {
                    ForEach (0...10, id: \.self) { listing in
                        ListingView()
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
