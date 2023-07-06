import SwiftUI

struct TodoworkCell: View {
    var body: some View {
        HStack {
            Spacer()
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(26.0), height: getRelativeHeight(26.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0)
                        .fill(ColorConstants.DeepOrange5006c))
            Spacer()
            Text(StringConstants.kMsgResearchProduc)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
            Spacer()
            Image("img_arrowicon_deep_orange_500")
                .resizable()
                .frame(width: getRelativeWidth(1.0), height: getRelativeHeight(5.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.vertical, getRelativeHeight(10.0))
            Spacer()
        }
        .frame(width: getRelativeWidth(309.0), alignment: .leading)
        .background(ColorConstants.WhiteA7007e)
        .hideNavigationBar()
    }
}

/* struct TodoworkCell_Previews: PreviewProvider {

 static var previews: some View {
 			TodoworkCell()
 }
 } */
