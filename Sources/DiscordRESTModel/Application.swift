//
//  Application.swift
//  
//
//  Created by Insu Byeon on 2022/08/03.
//

import Foundation
import Snowflake

public struct Application: Equatable, Hashable, Identifiable, Sendable {
    public let id: Snowflake
    
    public let name: String
    
    public let icon: String?
    public let description: String
    
    public let rpcOrigins: [String]?
    
    public let isBotPublic: Bool
    public let isBotRequireCodeGrant: Bool
    
    public let termsOfServiceUrl: String?
    public let privacyPolicyUrl: String?
    
    public let owner: User?
    
    @available(*, deprecated, message: "Deprecated and will be removed in v11.")
    public let summary: String
    
    public let verifyKey: String
    
    public let team: Team?
    
    public let guildID: Snowflake?
    public let primarySKUID: Snowflake?
    
    public let slug: String?
    public let coverImage: String?
    public let flags: Int?
    
    public let tags: [String]
    public let installParams: InstallParams?
    public let customInstallUrl: String?
}


extension Application: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        
        case name
        
        case icon
        case description
        
        case rpcOrigins = "rpc_origins"
        
        case isBotPublic = "bot_public"
        case isBotRequireCodeGrant = "bot_require_code_grant"
        
        case termsOfServiceUrl = "terms_of_service_url"
        case privacyPolicyUrl = "privacy_policy_url"
        
        case owner
        
        case summary
        
        case verifyKey = "verify_key"
        
        case team
        
        case guildID = "guild_id"
        case primarySKUID = "primary_sku_id"
        
        case slug
        case coverImage = "cover_image"
        case flags
        
        case tags
        case installParams = "install_params"
        case customInstallUrl = "custom_install_url"
    }
}
