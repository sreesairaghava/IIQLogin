//
//  SignedInView.swift
//  IIQLogin
//
//  Created by Sree Sai Raghava Dandu on 18/09/21.
//

import SwiftUI

struct SignedInView: View {
    let countries: [Country]
    var body: some View {
        CardView(countries: countries)
    }
}
