//
//  ContentView.swift
//  createTask
//
//  Created by Park, Andrew on 10/17/23.
//

import SwiftUI

struct CreateView: View 
{
    @State private var playerData : PlayerData?
    
//    @ObservedObject var dbData = DBDataStore(db: loadJSON(from: "PlayerDB") as! DBData)
    
    var body: some View
    {
        VStack
        {
            Text("The player is \(playerData?.player.displayname ?? "placeholder")")
//            AsyncImage(url: URL(string: dbData.db.data.player.avatar))
            
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
//        .task 
//        {
//            do
//            {
//                playerData = try await getPlayerData()
//            }
//            catch
//            {
//                print(error.localizedDescription)
//            }
//        }
    }
}

#Preview 
{
    CreateView()
}
