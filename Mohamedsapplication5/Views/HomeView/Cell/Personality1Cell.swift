import SwiftUI

struct Personality1Cell: View {
    var body: some View {
        HStack {
            Image("img_location")
                .resizable()
                .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.vertical, getRelativeHeight(4.0))
            Text("Group236")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
            Text(StringConstants.kLblPersonality)
                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.DeepOrange500)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
            Text("Group237")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(6.0),
                       alignment: .leading)
            Image("img_stroke1_deep_orange_500")
                .resizable()
                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                           bottomRight: 2.0))
                .padding(.vertical, getRelativeHeight(10.0))
                .padding(.trailing, getRelativeWidth(5.0))
        }
        .frame(width: getRelativeWidth(309.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                   bottomRight: 14.0)
                .fill(ColorConstants.DeepOrange5000c))
        .hideNavigationBar()
    }
}

/* struct Personality1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Personality1Cell()
 }
 } */
