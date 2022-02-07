//
//  DetailView.swift
//  CovidTrack
//
//  Created by Vincent Cubit on 2/7/22.
//


import SwiftUI


struct DetailView: View {
    
    
    let model: Model
    
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: self.model.covidStatus ? "exclamationmark.triangle" : "checkmark.circle")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 44.0, height: 44.0)
                    .padding()
                    .foregroundColor(self.model.covidStatus ? .red : .green)
                
                
                Text(self.model.covidStatus ? "\(self.model.name) has had Covid contact" :
                        "\(self.model.name) has not had Covid contact")
                    .foregroundColor(self.model.covidStatus ? .red : .green)
            }
           
            
            .navigationTitle(self.model.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(model: Model(image: UIImage(systemName: "person.fill")!, name: "test", covidStatus: false))
    }
}

