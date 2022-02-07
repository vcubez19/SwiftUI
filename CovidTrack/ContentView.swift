//
//  ContentView.swift
//  CovidTrack
//
//  Created by Vincent Cubit on 2/7/22.
//


import SwiftUI
import UIKit


struct ContentView: View {
    
    
    let randomColors: [ UIColor ] = [
        .systemTeal,
        .systemCyan,
        .systemBlue,
        .systemGreen,
        .systemOrange,
        .systemYellow,
        .systemGray
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data) { item in
                    NavigationLink(destination: DetailView(model: item)) {
                        VStack {
                            HStack {
                                Image(uiImage: item.image)
                                    .interpolation(.none)
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFit()
                                    .frame(width: 44.0, height: 44.0)
                                    .padding()
                                    .foregroundColor(Color(uiColor: randomColors.randomElement()!))
                                VStack(alignment: .leading, spacing: 10.0) {
                                    Text(item.name)
                                        .foregroundColor(Color(uiColor: .label))
                                        .fontWeight(.bold)
                                    Text(item.covidStatus ? "No covid contact" : "Covid contact")
                                        .foregroundColor(item.covidStatus ? Color(uiColor: .systemRed) : Color(uiColor: .systemGreen))
                                        .fontWeight(.bold)
                                        .font(Font.subheadline)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Whose been around Covid?")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

