import SwiftUI

struct Login1View: View {
    @StateObject var login1ViewModel = Login1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack {
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
                            Text(StringConstants.kLblLogin)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900A2)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, getRelativeWidth(48.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(27.0), alignment: .leading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgThisIsYourCo)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900A2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(221.0),
                                           height: getRelativeHeight(176.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kMsgOurCommunityI2)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray9007e)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(282.0),
                                           height: getRelativeHeight(40.0), alignment: .topLeading)
                                    .padding(.trailing, getRelativeWidth(28.0))
                                Image("img_logo_gray_50_113x116")
                                    .resizable()
                                    .frame(width: getRelativeWidth(116.0),
                                           height: getRelativeHeight(113.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(21.0))
                                HStack {
                                    TextField(StringConstants.kLblEmail,
                                              text: $login1ViewModel.emailText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                        bottomLeft: 14.0, bottomRight: 14.0)
                                        .stroke(ColorConstants.Gray90063,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(115.0))
                                HStack {
                                    SecureField(StringConstants.kLblPassword,
                                                text: $login1ViewModel.passwordText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                        bottomLeft: 14.0, bottomRight: 14.0)
                                        .stroke(ColorConstants.Gray90063,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(24.0))
                                Text(StringConstants.kMsgForgotPassword)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.DeepOrange500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(110.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(26.0))
                                    .onTapGesture {
                                        login1ViewModel.nextScreen = "ForgotPasswordView"
                                    }
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblNext)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .padding(.trailing, getRelativeWidth(140.0))
                                            .padding(.leading, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(19.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(311.0),
                                                   height: getRelativeHeight(60.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 14.0,
                                                                       topRight: 14.0,
                                                                       bottomLeft: 14.0,
                                                                       bottomRight: 14.0)
                                                    .fill(ColorConstants.LightBlue400))
                                            .padding(.top, getRelativeHeight(32.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.LightBlue400))
                                .padding(.top, getRelativeHeight(32.0))
                                HStack {
                                    Text(StringConstants.kMsgDonTHaveAnA)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(147.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblSignup2)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.DeepOrange500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(44.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .onTapGesture {
                                    login1ViewModel.nextScreen = "SignUpView"
                                }
                                .frame(width: getRelativeWidth(199.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .padding(.top, getRelativeHeight(24.0))
                            }
                            .frame(width: getRelativeWidth(311.0), alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(32.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: SignUpView(),
                                       tag: "SignUpView",
                                       selection: $login1ViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: ForgotPasswordView(),
                                       tag: "ForgotPasswordView",
                                       selection: $login1ViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.WhiteA700)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if login1ViewModel.isLoaderShow {
                GeometryReader { _ in
                    ActivityLoader(isLoaderShow: $login1ViewModel.isLoaderShow)
                }
            }
        }
        .hideNavigationBar()
    }
}

struct Login1View_Previews: PreviewProvider {
    static var previews: some View {
        Login1View()
    }
}
