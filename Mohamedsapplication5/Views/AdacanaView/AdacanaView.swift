import SwiftUI

struct AdacanaView: View {
    @StateObject var adacanaViewModel = AdacanaViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_logo")
                        .resizable()
                        .frame(width: getRelativeWidth(238.0), height: getRelativeHeight(325.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .onTapGesture {
                            adacanaViewModel.nextScreen = "LoginorSignUpView"
                        }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $adacanaViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginorSignUpView(),
                                   tag: "LoginorSignUpView",
                                   selection: $adacanaViewModel.nextScreen,
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
        .onAppear {
            adacanaViewModel.nextScreen = "HomeView"
        }
    }
}

struct AdacanaView_Previews: PreviewProvider {
    static var previews: some View {
        AdacanaView()
    }
}
