// The MIT License (MIT)
//
// Copyright (c) 2018 Smart&Soft
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

/// Main properties that StarsKit check to display or not the app rating screen.
///
/// Those keys will be used in the configuration update via a dictionnary.
internal enum StarsKitConfigProperties: String {
  case disabled
  case prefersNativeRating
  case displaySessionCount
  case positiveStarsLimit
  case daysWithoutCrash
  case daysBeforeAskingAgain
  case maxNumberOfReminder
  case maxDaysBetweenSession
  case emailSupport
  case emailObject
  case emailHeaderContent

  static let allBoolValues: [StarsKitConfigProperties] = [.disabled,
                                                          .prefersNativeRating]
  
  static let allIntValues: [StarsKitConfigProperties] = [.displaySessionCount,
                                                          .positiveStarsLimit,
                                                          .daysWithoutCrash,
                                                          .daysBeforeAskingAgain,
                                                          .maxNumberOfReminder,
                                                          .maxDaysBetweenSession]
  
  static let allStringValues: [StarsKitConfigProperties] = [.emailSupport,
                                                            .emailObject,
                                                            .emailHeaderContent]
  
  var userDefaultsKey: String {
    return "StarsKit.UserDefaults.config.\(self)"
  }
}
