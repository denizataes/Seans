//
//  Film.swift
//  Seans
//
//  Created by Deniz Ata Eş on 6.12.2022.
//

import SwiftUI

struct Movie: Identifiable, Equatable{
    var id = UUID().uuidString
    var movieTitle: String
    var releaseDate: String
    var movieTime: String
    var movieDescription: String
    var artwork: String
}
