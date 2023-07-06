import SwiftUI

struct TermsAndConditionsView: View {
    @StateObject var termsAndConditionsViewModel = TermsAndConditionsViewModel()
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
                Text(StringConstants.kMsgTermsAndCondi)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray900A2)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(75.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(79.0))
                Text(StringConstants.kMsgLoremIpsumDol2)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray900A2)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(285.0), height: getRelativeHeight(475.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(63.0))
                    .padding(.trailing, getRelativeWidth(25.0))
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

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsView()
    }
}
