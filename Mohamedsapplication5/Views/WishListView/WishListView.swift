import SwiftUI

struct WishListView: View {
    @StateObject var wishListViewModel = WishListViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Group {
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
                    Text(StringConstants.kMsgMakeAWishLis)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900A2)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(42.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(75.0))
                    Text(StringConstants.kMsgMakeYourJobE)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray9007e)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(11.0))
                    Text(StringConstants.kLblTaskTodo)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray9008b)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(85.0))
                    HStack {
                        Image("img_calendar_23x24")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(23.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kMsgCreateActionM)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray90090)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(18.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                            bottomRight: 14.0)
                            .stroke(ColorConstants.Gray9005e,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(12.0))
                    Text(StringConstants.kLblDate)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray9008b)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                    HStack {
                        Image("img_calendar")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(23.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblTtMmYy)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray90090)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(18.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                            bottomRight: 14.0)
                            .stroke(ColorConstants.Gray9005e,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(12.0))
                    Text(StringConstants.kLblAttachments)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray9008b)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                }
                Group {
                    HStack {
                        Spacer()
                        Image("img_info")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(23.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(17.0))
                            .padding(.horizontal, getRelativeWidth(18.0))
                        TextField(StringConstants.kLblMaximum10Mb,
                                  text: $wishListViewModel.filesizeText)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Gray90090)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                            bottomRight: 14.0)
                            .stroke(ColorConstants.Gray9006c,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(12.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgMakeAWishLis)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(91.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(58.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.LightBlue400))
                                .padding(.vertical, getRelativeHeight(35.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.LightBlue400))
                    .padding(.vertical, getRelativeHeight(35.0))
                }
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

struct WishListView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}
