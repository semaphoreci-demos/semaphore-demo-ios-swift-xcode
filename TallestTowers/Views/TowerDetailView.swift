import SwiftUI

struct TowerDetailView: View {
  var tower: Tower
  
  var body: some View {
    ZStack(alignment: .bottom) {
      MapView(coordinate: tower.location, latLonDelta: 0.025)
      VStack {
        Text(tower.name)
          .font(.system(size: 30, weight: .bold))
          .multilineTextAlignment(.center)
          .foregroundColor(.primary)
        Text(tower.cityAndCountry)
          .font(.system(size: 20, weight: .bold))
          .multilineTextAlignment(.center)
          .foregroundColor(.secondary)
        Text(tower.formattedHeight)
          .font(.system(size: 70, weight: .bold, design: .serif))
          .foregroundColor(.primary)
          .padding()
        HStack(spacing: 4) {
          Text("Constructed in")
            .font(.system(size: 15, weight: .semibold))
            .foregroundColor(.secondary)
          Text(String(tower.yearBuilt))
            .font(.system(size: 15, weight: .semibold))
            .foregroundColor(.secondary)
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity)
      .padding().padding(.vertical, 30)
      .background(Color("OverlayBackground").opacity(0.8))
    }
    .navigationBarTitle(Text(""), displayMode: .inline)
    .edgesIgnoringSafeArea(.bottom)
  }
}

struct TowerDetailViewPreviews: PreviewProvider {
  static var previews: some View {
    TowerDetailView(tower: Tower.tallestTowers[0])
  }
}
