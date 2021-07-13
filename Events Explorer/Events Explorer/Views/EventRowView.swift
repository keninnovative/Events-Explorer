//
//
//
//  Created by Ken Nyame on 5/7/21.
//

import SwiftUI

struct EventRowView: View {
    let event: Event
    var body: some View {
        HStack{
            if let imageURLString = event.performers?.first?.image {
                ImageView(withURL: imageURLString)
                    .padding(.leading, 20)
            }
            else {
                Image(systemName: "person.2.square.stack")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:80, height:80)
                    .cornerRadius(8)
                    .padding(.leading, 20)
            }
            VStack(alignment: .leading, spacing: 8, content: {
                Text(event.title)
                    .font(.headline)
                Text(event.venue.displayLocation)
                    .font(.subheadline)
                Text(event.datetimeLocal.formatted)
                    .font(.subheadline)
            })
            .padding(.vertical, 16)
            Spacer()
        }
        .background(Color.white95)
        .cornerRadius(8)
        .shadow(radius: 6)
        .padding(.horizontal, 16)
    }
}
