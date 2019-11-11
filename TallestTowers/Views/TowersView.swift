import SwiftUI

struct TowersView: View {
  var body: some View {
    NavigationView {
      List(Tower.tallestTowers) { tower in
        NavigationLink(destination: TowerDetailView(tower: tower)) {
          TowerRow(tower: tower)
        }
      }
      .navigationBarTitle("Tallest Towers")
    }
  }
}

struct TowersViewPreview: PreviewProvider {
  static var previews: some View {
    TowersView()
  }
}
