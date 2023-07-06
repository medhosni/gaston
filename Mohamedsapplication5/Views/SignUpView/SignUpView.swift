import SwiftUI

struct SignUpView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
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
                            .padding(.leading, getRelativeWidth(28.0))
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900A2)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, getRelativeWidth(45.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(27.0), alignment: .leading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgWhenCommunity)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900A2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(218.0),
                                           height: getRelativeHeight(134.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kMsgOurCommunityI3)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black9007e)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(245.0),
                                           height: getRelativeHeight(39.0), alignment: .topLeading)
                                    .padding(.trailing, getRelativeWidth(65.0))
                                Image("img_logo_gray_50_120x114")
                                    .resizable()
                                    .frame(width: getRelativeWidth(114.0),
                                           height: getRelativeHeight(120.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(12.0))
                                HStack {
                                    TextField(StringConstants.kLblFirstName2,
                                              text: $signUpViewModel.firstnameText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Gray90063,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(96.0))
                                HStack {
                                    TextField(StringConstants.kLblLastName2,
                                              text: $signUpViewModel.lastnameText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Gray90063,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(24.0))
                                HStack {
                                    TextField(StringConstants.kLblEMail2,
                                              text: $signUpViewModel.emailText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Gray90063,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(24.0))
                                HStack {
                                    SecureField(StringConstants.kLblPassword,
                                                text: $signUpViewModel.passwordText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Gray90063,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(24.0))
                                Text(StringConstants.kMsgLoremIpsumDol)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray9007e)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(248.0),
                                           height: getRelativeHeight(39.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(22.0))
                                    .padding(.trailing, getRelativeWidth(61.0))
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
                                            .padding(.top, getRelativeHeight(30.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.LightBlue400))
                                .padding(.top, getRelativeHeight(30.0))
                            }
                            .frame(width: getRelativeWidth(311.0), alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(28.0))
                            .padding(.trailing, getRelativeWidth(36.0))
                        }
                        HStack {
                            Text(StringConstants.kMsgAlreadyHaveAn)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray9007e)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(162.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblLogin)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.DeepOrange500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(8.0))
                        }
                        .onTapGesture {
                            signUpViewModel.nextScreen = "Login1View"
                        }
                        .frame(width: getRelativeWidth(203.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(86.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.Gray50)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: Login1View(),
                                       tag: "Login1View",
                                       selection: $signUpViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.Gray50)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if signUpViewModel.isLoaderShow {
                GeometryReader { _ in
                    ActivityLoader(isLoaderShow: $signUpViewModel.isLoaderShow)
                }
            }
        }
        .hideNavigationBar()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
