//
//  PlayerData.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/12/23.
//

import Foundation

struct PlayerData : Decodable, Identifiable
{
    var id = UUID()
    var uuid : String
    var firstLogin : Double
    var playername : String
    var lastLogin : Double
    var achievementsOneTime : [String]
    
    
    
    
    var networkExp : Double
    var karma : Double
    
    
}
