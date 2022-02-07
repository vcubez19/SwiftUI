//
//  Model.swift
//  CovidTrack
//
//  Created by Vincent Cubit on 2/7/22.
//


import Foundation
import UIKit


struct Model: Identifiable {
    var id = UUID()
    var image: UIImage
    var name: String
    var covidStatus: Bool
}

