//
//  PlayerData.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/12/23.
//

import Foundation

struct PlayerData: Codable 
{
    let success: Bool
    let player: Player
    
    struct Player: Codable
    {
        let _id: String
        let uuid: String
        let firstLogin: Int64
        let playername: String
        let lastLogin: Int64
        let displayname: String
        let stats: Stats
        
        struct Stats: Codable
        {
            let arcade: Arcade
            
            struct Arcade: Codable
            {
                let coins: Int
                let packages: [String]
                let music: Bool
            }
            
            let pit: Pit
            
            struct Pit: Codable
            {
                let profile: Profile
                
                struct Profile: Codable
                {
                    let disable_spawn_items: Bool
                    let outgoing_offers: [String]
                }
            }
        }
        let karma: Int
    }
}



