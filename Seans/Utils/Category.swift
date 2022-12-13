//
//  SideMenuViewModel.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 18.11.2022.
//

import Foundation

enum Category: Int, CaseIterable{
    case latest
    case nowPlaying
    case popular
    case topRated
    case upComing
    
    var title: String{
        switch self{
        case .latest: return "En Son Çıkanlar 🔥"
        case .nowPlaying: return "Vizyondakiler 🍿"
        case .popular: return "En Popüler ⚡️"
        case .topRated: return "En İyiler 💯"
        case .upComing: return "Yakında Çıkacaklar ⌛️"
        }
    }
}
