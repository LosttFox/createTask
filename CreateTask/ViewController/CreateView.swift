//
//  ContentView.swift
//  createTask
//
//  Created by Park, Andrew on 10/17/23.
//

import SwiftUI

struct CreateView: View 
{
    @ObservedObject var playerData = PlayerDataStore(players: loadJSON(from: "PlayerData") as! PlayerData)
    
    var body: some View
    {
        VStack
        {
            Text("The player is \(playerData.players.player.playername)")
            AsyncImage(url: URL(string: "https://crafthead.net/avatar/457fff364f6f4761bf2c4eef4a1b77a0"))
            
            NavigationStack
            {
                List
                {
                    Section
                    {
                        
                    }
                    Section
                    {
                        
                    }
                }
            }
            
        }
        .padding()
    }
}

#Preview 
{
    CreateView()
}
