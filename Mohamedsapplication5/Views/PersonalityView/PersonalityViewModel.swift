import Foundation
import SwiftUI

class PersonalityViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var usernameoneText: String = ""
    @Published var firstnameoneText: String = ""
    @Published var lastnameoneText: String = ""
    @Published var hobbyoneText: String = ""
    @Published var priceText: String = ""
    @Published var countryoneText: String = ""
    @Published var isLoaderShow: Bool = false
}
