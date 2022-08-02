//
//  Application+InstallParams.swift
//  
//
//  Created by Insu Byeon on 2022/08/03.
//

import Foundation

extension Application {
    public struct InstallParams: Equatable, Hashable, Sendable, Codable {
        public let scopes: OAuth2Credential.Scopes
        // TODO: https://discord.com/developers/docs/topics/permissions
        public let permissions: String
    }
}
