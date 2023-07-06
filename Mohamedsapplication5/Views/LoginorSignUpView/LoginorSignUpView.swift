import SwiftUI

struct LoginorSignUpView: View {
    @StateObject var loginorSignUpViewModel = LoginorSignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {}, label: {
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
                    .padding(.leading, getRelativeWidth(17.0))
                    Text(StringConstants.kMsgWelcomeToOur)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900A2)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(208.0), height: getRelativeHeight(134.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(41.0))
                    Text(StringConstants.kMsgOurCommunityI)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray9007e)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(281.0), height: getRelativeHeight(39.0),
                               alignment: .topLeading)
                        .padding(.trailing, getRelativeWidth(29.0))
                    Image("img_logo_gray_50")
                        .resizable()
                        .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(105.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(31.0))
                    Text(StringConstants.kLblGetInThrough)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900A2)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(27.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(33.0))
                    Button(action: {
                        loginorSignUpViewModel.nextScreen = "SignUpView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .padding(.trailing, getRelativeWidth(128.0))
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
                                .padding(.top, getRelativeHeight(33.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.LightBlue400))
                    .padding(.top, getRelativeHeight(33.0))
                    Button(action: {
                        loginorSignUpViewModel.nextScreen = "Login1View"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLogin)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .padding(.trailing, getRelativeWidth(136.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(19.0))
                                .foregroundColor(ColorConstants.DeepOrange500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.DeepOrange50063))
                                .padding(.vertical, getRelativeHeight(14.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.DeepOrange50063))
                    .padding(.vertical, getRelativeHeight(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray50)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Login1View(),
                                   tag: "Login1View",
                                   selection: $loginorSignUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $loginorSignUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray50)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LoginorSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        LoginorSignUpView()
    }
}
