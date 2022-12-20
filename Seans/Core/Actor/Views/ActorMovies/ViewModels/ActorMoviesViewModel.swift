//
//  FilmViewModel.swift
//  Seans
//
//  Created by Deniz Ata Eş on 14.12.2022.
//

import Foundation
import TMDBSwift


class ActorMoviesViewModel: ObservableObject{
    let service = FilmService()
    @Published var actorMovies = [Movie]()
    @Published var loaded: Bool = false
    var id: Int
    init(id: Int)
    {
        self.id = id
        fetchActorMovies()
        
    }
    func fetchActorMovies()
    {
        self.service.fetchActorMovies(with: self.id) { movies in
            self.actorMovies = movies
        }
    }
    
}
