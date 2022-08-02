//
//  Team.swift
//  
//
//  Created by Insu Byeon on 2022/08/03.
//

import Foundation
import Snowflake

public struct Team: Equatable, Hashable, Identifiable, Sendable {
    public let id: Snowflake
    
    public let icon: String?
    public let members: [Member]
    
    public let name: String
    public let ownerUserID: Snowflake
    
    public enum MembershipState: Int, Equatable, Hashable, Sendable, Codable {
        case invited = 0
        case accepted
    }
    
    public struct Member: Equatable, Hashable, Sendable {
        public let membershipState: MembershipState
        public let permissions: [String]
        public let teamID: Snowflake
        public let user: User
    }
}


extension Team: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        
        case icon
        case members
        
        case name
        case ownerUserID = "owner_user_id"
    }
}

extension Team.Member: Codable {
    enum CodingKeys: String, CodingKey {
        case membershipState = "membership_state"
        case permissions
        case teamID = "team_id"
        case user
    }
}
