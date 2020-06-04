import Foundation

class AlertMgr {

    func postAlert() {
        NotificationCenter.default.post(name: Notification.Name.alertNotification, object: self)
    }
}
