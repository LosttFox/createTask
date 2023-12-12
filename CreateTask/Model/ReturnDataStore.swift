//
//  ReturnDataStore.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/12/23.
//

import Foundation
import Combine

class ReturnDataStore : ObservableObject
{
    @Published var returns : [ReturnData]
    
    init(returns: [ReturnData]) 
    {
        self.returns = returns
    }
}
