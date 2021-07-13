//
//  Events Explorer
//
//  Created by Ken Nyame on 7/12/21.
//

import SwiftUI

struct EventsView: View {
    @State private var query: String = ""
    @ObservedObject var viewModel:EventsViewModel = EventsViewModel()
    
    var body: some View {
        VStack {
            SearchBarView(text: $query) { isChanged in
                
            } onCommit: {
                viewModel.search(query)
            }
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(viewModel.events, id: \.id) { event in
                        EventRowView(event: event)
                    }
                }
                .padding(.top, 16)
            }
        }
        .onAppear {
            viewModel.search()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
