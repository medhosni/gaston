import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_profileimage_139x139")
                        .resizable()
                        .frame(width: getRelativeWidth(139.0), height: getRelativeWidth(139.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipShape(Circle())
                        .background(RoundedCorners(topLeft: 69.0, topRight: 69.0, bottomLeft: 69.0,
                                                   bottomRight: 69.0))
                    Text(StringConstants.kLblAdalah)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900A2)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(30.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(13.0))
                    Text(StringConstants.kLblAlcanasatre)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(18.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray9007e)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(27.0),
                               alignment: .topLeading)
                    Text(StringConstants.kMsgJoined6Month)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray90090)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(15.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    Personality1Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(311.0), alignment: .center)
                    .padding(.top, getRelativeHeight(47.0))
                    .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PersonalityView(),
                                   tag: "PersonalityView",
                                   selection: $homeViewModel.nextScreen,
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
