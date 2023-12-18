//
//  Utilities.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/12/23.
//

import Foundation


func loadJSON (from file : String) -> Any
{
    if let dataSourceURL = Bundle.main.url(forResource: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataSourceURL)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do
        {
            if (file == "PlayerData")
            {
                let results = try decoder.decode(PlayerData.self, from: data)
                
                
                return results
            }
            else if (file == "DBData")
            {
                let results = try decoder.decode(DBData.self, from: data)
                
                return results
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    return []
}

func getPlayerData() async throws -> PlayerData
{
    let endpoint = "https://api.hypixel.net/v2/player?uuid=457fff36-4f6f-4761-bf2c-4eef4a1b77a0"
    
    guard let url = URL(string: endpoint) else
    {
        throw APIError.invalidURL
    }
    
    var request = URLRequest(url: url)
    
    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField: "Accept")
    request.setValue("043d0ebc-e540-4fd9-8bab-9e90d0835ac8", forHTTPHeaderField: "Api-Key")
    
    
    let (data, response) = try await URLSession.shared.data(for: request)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else
    {
        throw APIError.invalidResponse
    }
    
    do
    {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        if let decoded = try decoder.decode(PlayerData?.self, from: data)
        {
            return decoded
        }
                
        return PlayerData(
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
    catch
    {
        throw APIError.invalidData
    }
}

enum APIError : Error
{
    case invalidURL
    case invalidResponse
    case invalidData
}
