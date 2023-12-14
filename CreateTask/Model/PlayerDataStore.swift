//
//  PlayerDataStore.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/13/23.
//

import Foundation
import Combine

class PlayerDataStore : ObservableObject
{
    @Published var players : PlayerData
    
    init(players: PlayerData)
    {
        self.players = players
    }
}
