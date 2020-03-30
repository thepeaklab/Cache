

import UIKit
import Foundation


struct TestHelper {
  static func data(_ length : Int) -> Data {
    let buffer = [UInt8](repeating: 0, count: length)
    return Data(buffer)
  }

  static func triggerApplicationEvents() {
    NotificationCenter.default.post(name: UIApplication.didEnterBackgroundNotification, object: nil)
    NotificationCenter.default.post(name: UIApplication.willTerminateNotification, object: nil)
  }
}
