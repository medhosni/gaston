import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var firstnameText: String = ""
    @Published var lastnameText: String = ""
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var isLoaderShow: Bool = false
}
