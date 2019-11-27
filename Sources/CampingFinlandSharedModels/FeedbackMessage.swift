//
//  FeedbackMessage.swift
//  
//
//  Created by Tommi Kivimäki on 25.11.2019.
//

import Foundation

public final class FeedbackMessage: Codable {
  public var id: Int?
  public var message: String
  public var email: String?
  
  public init(id: Int? = nil, message: String, email: String? = nil) {
    self.id = id
    self.message = message
    self.email = email
  }
}
