//
//  PlayerDataStore.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/13/23.
//

import Foundation
import Combine

class PlayerDataStore: ObservableObject 
{
    @Published var call: PlayerData
    
    init(call: PlayerData)
    {
        self.call = call
    }
    
    init() 
    {
        self.call = PlayerData(
                        success: false,
                        player: .init(
                            _id: "a",
                            uuid: "a",
                            firstLogin: 1232,
                            playername: "LostFoxx",
                            lastLogin: 287332,
                            displayname: "LostFox",
                            stats: .init(
                                arcade: .init(
                                    coins: 99999999,
                                    packages: ["this", "that", "the other"],
                                    music: false
                                ),
                                pit: .init(
                                    profile: .init(
                                        disable_spawn_items: true,
                                        outgoing_offers: ["","",""]
                                    )
                                )
                            ),
                            karma: 1000
                        )
                    )
    }
}

