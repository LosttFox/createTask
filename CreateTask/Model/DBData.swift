//
//  DBData.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/18/23.
//

import Foundation

struct DBData : Codable
{
    var code : String
    var message : String
    var data : Player
    
    struct Player : Codable
    {
        var player : UserInfo
        
        struct UserInfo : Codable
        {
            var username : String
            var id : String
            var raw_id : String
            var avatar : String
        }
    }
}
