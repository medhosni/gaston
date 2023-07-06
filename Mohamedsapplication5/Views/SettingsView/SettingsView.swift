import SwiftUI

struct SettingsView: View {
    @StateObject var settingsViewModel = SettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("img_arrowleft")
                    })
                    .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                            bottomRight: 7.0)
                            .stroke(ColorConstants.Black900,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                               bottomRight: 7.0)
                            .fill(Color.clear.opacity(0.7)))
                    Text(StringConstants.kLblSettings)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900A2)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(42.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(90.0))
                    Text(StringConstants.kMsgYourSettingsS)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray9007e)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(9.0))
                    HStack {
                        Text(StringConstants.kLblPersonality)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray90090)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                            .padding(.leading, getRelativeWidth(91.0))
                    }
                    .onTapGesture {
                        settingsViewModel.nextScreen = "PersonalityView"
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.Gray5001))
                    .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(33.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kLblLanguage)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray90090)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Image("img_arrowright")
                                .resizable()
                                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(7.0))
                                .padding(.leading, getRelativeWidth(93.0))
                        }
                        .onTapGesture {
                            settingsViewModel.nextScreen = "LanguageView"
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray5001))
                        .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(14.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kMsgTermsAndCondi)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray90090)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(134.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Image("img_arrowright")
                                .resizable()
                                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(58.0))
                        }
                        .onTapGesture {
                            settingsViewModel.nextScreen = "TermsAndConditionsView"
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray5001))
                        .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(14.0))
                    Text("Group248")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(177.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLogOut)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(124.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .foregroundColor(ColorConstants.RedA40090)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                        bottomLeft: 14.0, bottomRight: 14.0)
                                        .stroke(ColorConstants.RedA40066,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.RedA4000c))
                                .padding(.bottom, getRelativeHeight(63.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                            bottomRight: 14.0)
                            .stroke(ColorConstants.RedA40066,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.RedA4000c))
                    .padding(.bottom, getRelativeHeight(63.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: TermsAndConditionsView(),
                                   tag: "TermsAndConditionsView",
                                   selection: $settingsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: PersonalityView(),
                                   tag: "PersonalityView",
                                   selection: $settingsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LanguageView(),
                                   tag: "LanguageView",
                                   selection: $settingsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
