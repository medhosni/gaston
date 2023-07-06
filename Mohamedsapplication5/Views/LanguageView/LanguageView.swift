import SwiftUI

struct LanguageView: View {
    @StateObject var languageViewModel = LanguageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                Text(StringConstants.kLblLanguage)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray900A2)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(42.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(82.0))
                Text(StringConstants.kMsgYourSettingsS)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray9007e)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(7.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblIndonesian)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .padding(.trailing, getRelativeWidth(121.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(21.0))
                            .foregroundColor(ColorConstants.DeepOrange500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.DeepOrange5005e))
                            .padding(.top, getRelativeHeight(86.0))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0)
                        .fill(ColorConstants.DeepOrange5005e))
                .padding(.top, getRelativeHeight(86.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblEnglish)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .padding(.trailing, getRelativeWidth(134.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(21.0))
                            .foregroundColor(ColorConstants.DeepPurpleA400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.DeepPurpleA4005e))
                            .padding(.top, getRelativeHeight(14.0))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0)
                        .fill(ColorConstants.DeepPurpleA4005e))
                .padding(.top, getRelativeHeight(14.0))
                Text("Group258")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(243.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblSave)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .padding(.trailing, getRelativeWidth(135.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(18.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.LightBlue400))
                            .padding(.bottom, getRelativeHeight(28.0))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0)
                        .fill(ColorConstants.LightBlue400))
                .padding(.bottom, getRelativeHeight(28.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
