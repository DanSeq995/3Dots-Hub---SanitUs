import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            MedicalRecordsView()
                .tabItem {
                    Label("Records", systemImage: "list.dash")
                        .foregroundColor(Color("AppBlue"))
                        .font(.system(.body, design: .rounded))
                }
            DoctorListView()
                .tabItem {
                    Label("Doctors", systemImage: "stethoscope")
                        .foregroundColor(Color("AppBlue"))
                        .font(.system(.body, design: .rounded))
                }
            TherapiesView()
                .tabItem {
                    Label("Therapy", systemImage: "pills")
                        .foregroundColor(Color("AppBlue"))
                        .font(.system(.body, design: .rounded))
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
