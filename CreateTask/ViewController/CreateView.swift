//
//  ContentView.swift
//  createTask
//
//  Created by Park, Andrew on 10/17/23.
//

import SwiftUI

struct CreateView: View 
{
//    @ObservedObject var playerData = PlayerDataStore(players: loadJSON(from: "PlayerData") as! PlayerData)
    
    var body: some View
    {
        VStack
        {
            Text("The player is [username]")
            Image(systemName: "heart")
            
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
