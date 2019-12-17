import SwiftUI

struct TowerRow: View {
  var tower: Tower
  
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(tower.name)
        Text(tower.cityAndCountry)
          .foregroundColor(.secondary)
          .font(.subheadline)
      }
      Spacer()
      Text(tower.formattedHeight)
        .font(.title)
    }
  }
}

struct TowerRowPreviews: PreviewProvider {
  static var previews: some View {
    TowerRow(tower: Tower.tallestTowers[0])
  }
}
