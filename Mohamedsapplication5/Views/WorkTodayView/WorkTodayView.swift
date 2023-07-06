import SwiftUI

struct WorkTodayView: View {
    @StateObject var workTodayViewModel = WorkTodayViewModel()
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
                    Text(StringConstants.kLblWorkTodayS)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900A2)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(42.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(79.0))
                    Text(StringConstants.kMsgMakeYourJobE)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray9007e)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(7.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblToday)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black9007e)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Text(StringConstants.kLbl02April2021)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black90090)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(50.0),
                               alignment: .bottom)
                        .padding(.vertical, getRelativeHeight(6.0))
                        Spacer()
                        Button(action: {}, label: {
                            Image("img_calendar")
                        })
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Teal4005e))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(78.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    TodoworkCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(311.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(59.0))
                    Button(action: {
                        workTodayViewModel.nextScreen = "WishListView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgMakeAWishLis)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(91.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.LightBlue400))
                                .padding(.vertical, getRelativeHeight(63.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.LightBlue400))
                    .padding(.vertical, getRelativeHeight(63.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WishListView(),
                                   tag: "WishListView",
                                   selection: $workTodayViewModel.nextScreen,
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

struct WorkTodayView_Previews: PreviewProvider {
    static var previews: some View {
        WorkTodayView()
    }
}
