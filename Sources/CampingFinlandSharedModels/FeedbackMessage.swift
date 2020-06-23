//
//  FeedbackMessage.swift
//  
//
//  Created by Tommi Kivimäki on 25.11.2019.
//

import Foundation

/// Feedback message form an app supporting Codable
public final class FeedbackMessage: Codable {
  public var id: Int?
  public var appName: String
  public var message: String
  public var email: String?
  
  public init(id: Int? = nil, appName: String, message: String, email: String? = nil) {
    self.id = id
    self.appName = appName
    self.message = message
    self.email = email
  }
}
