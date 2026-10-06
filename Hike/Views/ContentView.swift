import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("Landmarks", systemImage: "person.badge.plus")
                        .symbolRenderingMode(.multicolor)
                }
                .tag(Tab.list)
        }
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
