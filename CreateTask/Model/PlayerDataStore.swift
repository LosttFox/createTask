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
    @Published var call : PlayerData
    
    init(call: PlayerData)
    {
        self.call = call
    }
}
