import SwiftUI

let coloredNavAppearance = UINavigationBarAppearance()
struct MedicalRecordsView: View {
    
    @State var searchTerm = ""
    init() {
            coloredNavAppearance.configureWithOpaqueBackground()
            coloredNavAppearance.backgroundColor = UIColor(Color("AppBlue"))
            coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                   
            UINavigationBar.appearance().standardAppearance = coloredNavAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
            UISearchBar.appearance().barTintColor = UIColor(Color("BackgroundBlue"))
            UISearchBar.appearance().tintColor = .white
        }
    
    var body: some View {
       
            NavigationView {
                VStack {
                    Spacer()
                        .frame(height: 100)
                    Image("qr")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height:400)
                        .padding(.bottom, -70)
                        .padding(.top, -70)
                    VStack(spacing: 15) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).frame(width: 350, height: 50)
                                .foregroundColor(Color("AppBlue"))
                            
                            HStack {
                                Image(systemName: "heart")
                                    .resizable()
                                    .scaledToFit()
                                .frame(height: 22)
                                .foregroundColor(.white)
                                .padding(.leading, 25)
                                .padding(.trailing, 15)
                                Text("Records")
                                    .font(.system(size: 24))
                                    .font(.system(.body, design: .rounded))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).frame(width: 350, height: 50)
                                .foregroundColor(Color("AppBlue"))
                            HStack {
                                Image(systemName: "phone")
                                    .resizable()
                                    .scaledToFit()
                                .frame(height: 22)
                                .foregroundColor(.white)
                                .padding(.leading, 25)
                                .padding(.trailing, 15)
                                Text("Emergency Numbers")
                                    .font(.system(size: 24))
                                    .font(.system(.body, design: .rounded))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }

                        ZStack {
                            RoundedRectangle(cornerRadius: 10).frame(width: 350, height: 50)
                                .foregroundColor(Color("AppBlue"))
                            HStack {
                                Image(systemName: "printer")
                                    .resizable()
                                    .scaledToFit()
                                .frame(height: 22)
                                .foregroundColor(.white)
                                .padding(.leading, 25)
                                .padding(.trailing, 15)
                                Text("Print the QR Code")
                                    .font(.system(size: 24))
                                    .font(.system(.body, design: .rounded))
                                    .foregroundColor(.white)
                                    
                                Spacer()
                            }
                        }

                    }
                    .padding(.vertical, 40)
                }
                .navigationTitle("Medical Records")
        }
    }
}

struct MedicalRecordsView_Previews: PreviewProvider {
    static var previews: some View {
        MedicalRecordsView()
    }
}
