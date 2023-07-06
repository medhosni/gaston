import SwiftUI

struct PersonalityView: View {
    @StateObject var personalityViewModel = PersonalityViewModel()
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
                            Text(StringConstants.kLblPersonality)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900A2)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, getRelativeWidth(32.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(27.0), alignment: .leading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 0) {
                                Group {
                                    Image("img_profileimage_139x139")
                                        .resizable()
                                        .frame(width: getRelativeWidth(139.0),
                                               height: getRelativeWidth(139.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .background(RoundedCorners(topLeft: 69.0, topRight: 69.0,
                                                                   bottomLeft: 69.0,
                                                                   bottomRight: 69.0))
                                    Text(StringConstants.kLblEditPhoto)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.DeepOrange500A2)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(61.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(18.0))
                                    Text(StringConstants.kLblUsername)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(50.0))
                                    HStack {
                                        TextField(StringConstants.kLblAdalahalcana,
                                                  text: personalityViewModel.fetchMeResponse?.data
                                                      .email ?? "")
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900A2)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Gray9005e,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(13.0))
                                    Text(StringConstants.kLblFirstName)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(18.0))
                                    HStack {
                                        TextField(StringConstants.kLblAlcanasatre,
                                                  text: personalityViewModel.fetchMeResponse?.data
                                                      .name ?? "")
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900A2)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Gray9005e,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(13.0))
                                    Text(StringConstants.kLblLastName)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(18.0))
                                    HStack {
                                        TextField(StringConstants.kLblFourta,
                                                  text: $personalityViewModel.lastnameoneText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900A2)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Gray9005e,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(13.0))
                                }
                                Group {
                                    Text(StringConstants.kLblHobby)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(20.0))
                                    HStack {
                                        TextField(StringConstants.kLblSleep,
                                                  text: $personalityViewModel.hobbyoneText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900A2)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Gray9005e,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(11.0))
                                    Text(StringConstants.kLblDateOfBirth)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(76.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(18.0))
                                    HStack {
                                        TextField(StringConstants.kLbl28May2002,
                                                  text: $personalityViewModel.priceText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900A2)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Gray9005e,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(13.0))
                                    Text(StringConstants.kLblCountry)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray9007e)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(20.0))
                                    HStack {
                                        TextField(StringConstants.kLblIndonesian2,
                                                  text: $personalityViewModel.countryoneText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900A2)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Gray9005e,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(11.0))
                                    Button(action: {
                                        personalityViewModel.nextScreen = "WorkTodayView"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblChangeSave)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.trailing, getRelativeWidth(101.0))
                                                .padding(.leading, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(18.0))
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
                                                .padding(.top, getRelativeHeight(34.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0)
                                            .fill(ColorConstants.LightBlue400))
                                    .padding(.top, getRelativeHeight(34.0))
                                }
                            }
                            .frame(width: getRelativeWidth(311.0), alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(32.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: WorkTodayView(),
                                       tag: "WorkTodayView",
                                       selection: $personalityViewModel.nextScreen,
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
            if personalityViewModel.isLoaderShow {
                GeometryReader { _ in
                    ActivityLoader(isLoaderShow: $personalityViewModel.isLoaderShow)
                }
            }
        }
        .hideNavigationBar()
    }
}

struct PersonalityView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalityView()
    }
}
