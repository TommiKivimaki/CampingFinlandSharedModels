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
  
  public init(id: Int?, text: String, email: String?) {
    self.id = id
    self.message = text
    self.email = email
  }
}
