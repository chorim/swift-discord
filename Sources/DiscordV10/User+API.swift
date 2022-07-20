//
//  User+API.swift
//  
//
//  Created by Jaehong Kang on 2022/07/21.
//

import Foundation
import Discord

extension User {
    public static func me(session: Session) async throws -> User {
        var urlRequest = URLRequest(url: URL(discordAPIPath: "v10/users/@me")!)
        urlRequest.httpMethod = "GET"

        let (data, _) = try await session.data(for: urlRequest, includesOAuth2Credential: true)

        let user = try JSONDecoder.discord.decode(User.self, from: data)

        return user
    }
}
