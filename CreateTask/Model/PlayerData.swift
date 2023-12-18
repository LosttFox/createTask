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
}

struct Player: Codable
{
    let _id: String
    let uuid: String
    let firstLogin: Int64
    let playername: String
    let lastLogin: Int64
    let displayname: String
    let stats: Stats
    
    let karma: Int
}

struct Stats: Codable
{
    let arcade: Arcade
    
    let pit: Pit
}

struct Arcade: Codable
{
    let coins: Int
    let packages: [String]
    let music: Bool
}

struct Pit: Codable
{
    let profile: Profile
}

struct Profile: Codable
{
    let disable_spawn_items: Bool
    let outgoing_offers: [String]
}
