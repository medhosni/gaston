import Foundation
import SwiftUI

class Login1ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var isLoaderShow: Bool = false
}
