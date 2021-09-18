//
//  CardView.swift
//  IIQLogin
//
//  Created by Sree Sai Raghava Dandu on 18/09/21.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var viewModel: AppViewModel
    let countries: [Country]
    var body: some View {
        
        ScrollView(.vertical){
            VStack(spacing:10){
                ForEach(0..<countries.count){ country in
                    
                    HStack {
                        Image(systemName: "person.fill")
                            .data(url: countries[country].flag!)
                            .resizable()
                            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text(countries[country].name)
                            .font(.title.bold())
                    }
                    Divider()
                    .padding()
                }
                .padding()
            }
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static let countries : [Country] = Bundle.main.decode("country.json")
    static var previews: some View {
        CardView(countries: countries)
            .environmentObject(AppViewModel())
    }
}
