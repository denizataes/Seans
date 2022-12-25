//
//  FilmSearchRowView.swift
//  Seans
//
//  Created by Deniz Ata Eş on 13.12.2022.
//

import SwiftUI
import Kingfisher

struct ActorSearchView: View {
    
    @Binding var input: String
    @StateObject var viewModel = ActorSearchViewModel()

    var body: some View {
  
        if(input == "")
        {
            ScrollView{
                LazyVStack(spacing: 0){
                    ForEach(viewModel.popularActors){ actorItem in
                        NavigationLink {
                            NewActorView(id: actorItem.id)
                        } label: {
                            ActorSearchRowView(actor: actorItem)
                        }
                    }
                }
        }
        }
        else{
            ScrollView{
                LazyVStack(spacing: 0){
                    ForEach(viewModel.actors){ actorItem in
                        NavigationLink {
                            NewActorView(id: actorItem.id)
                        } label: {
                            ActorSearchRowView(actor: actorItem)
                        }
                    }
                    .onChange(of: input){ value in
                        viewModel.searchActors(query:input)
                    }
                }
            }
        }
        
    }
}

