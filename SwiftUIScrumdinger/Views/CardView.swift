//
//  CardView.swift
//  SwiftUIScrumdinger
//
//  Created by 현수빈 on 12/30/23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)",systemImage: "clock")
//                    .padding(.trailing, 20)
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
            }
            .font(.caption)
           
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

//
//#Preview {
//    let sample = DailyScrum.sampleData[0]
//     let view = CardView(scrum: sample)
//        .background(sample.theme.mainColor)
//        .previewLayout(.fixed(width: 400, height: 60))
//    return view
//}
