import SwiftUI

struct ForgotPasswordView: View {
    @StateObject var forgotPasswordViewModel = ForgotPasswordViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("img_arrowleft")
                        })
                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                bottomRight: 7.0)
                                .stroke(ColorConstants.Black900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.leading, getRelativeWidth(32.0))
                        Text(StringConstants.kLblForgotPassword)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900A2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, getRelativeWidth(35.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(30.0))
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .center) {
                            Text(StringConstants.kMsgIfYouAreAlwa)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray9007e)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(245.0),
                                       height: getRelativeHeight(39.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(144.1))
                                .padding(.trailing, getRelativeWidth(16.97))
                            Text(StringConstants.kMsgHelpingOthers)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900A2)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(262.0),
                                       height: getRelativeHeight(144.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(39.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(262.0), height: getRelativeHeight(183.0),
                               alignment: .leading)
                        Image("img_logo_gray_50_121x135")
                            .resizable()
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(121.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(37.0))
                        Text(StringConstants.kLblForgotPassword)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900A2)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(27.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(27.0))
                        HStack {
                            TextField(StringConstants.kLblYourEmail,
                                      text: $forgotPasswordViewModel.youremailText)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Gray9007e)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Gray90063,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(45.0))
                        Text(StringConstants.kMsgLoremIpsumDol)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray9007e)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(246.0), height: getRelativeHeight(39.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(64.0))
                        Button(action: {
                            forgotPasswordViewModel.nextScreen = "HomeView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblStart)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .padding(.trailing, getRelativeWidth(138.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(19.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0)
                                            .fill(ColorConstants.LightBlue400))
                                    .padding(.vertical, getRelativeHeight(18.0))
                            }
                        })
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.LightBlue400))
                        .padding(.vertical, getRelativeHeight(18.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(726.0),
                           alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $forgotPasswordViewModel.nextScreen,
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

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
