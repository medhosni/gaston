import Foundation
import SwiftUI

class ForgotPasswordViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var youremailText: String = ""
}
