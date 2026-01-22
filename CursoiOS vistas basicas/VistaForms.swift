//
//  VistaForms.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

struct VistaForms: View {
    @State private var nombre: String = ""
    @State private var email: String = ""
    @State private var vaAAsistir: Bool = false
    @State private var numeroInvitados: Int = 0
    @State private var horaLlegada: Date = Date()
    @State private var alergias: Bool = false
    @State private var textoAlergias: String = ""

    var body: some View {
        NavigationStack {
            Form {
                Section("Tus datos personales") {
                    TextField("Nombre completo", text: $nombre)

                    TextField("Correo electrónico", text: $email)
                        .keyboardType(.emailAddress)
                }
                Section("Confirmación") {
                    Toggle("¿Vas a asistir", isOn: $vaAAsistir)

                    if vaAAsistir {
                        Group {
                            Stepper(
                                "¿Cuántos acompañantes? \(numeroInvitados)",
                                value: $numeroInvitados,
                                in: 0...5
                            )
                        }
                        DatePicker(
                            "Hora de llegada",
                            selection: $horaLlegada,
                            displayedComponents: .hourAndMinute
                        )
                        Toggle("¿Tienes alergias", isOn: $alergias)
                    }
                }
            }
            if vaAAsistir && alergias {
                Section("Información médica") {
                    TextField(
                        "Describe tus alergias",
                        text: $textoAlergias,
                        axis: .vertical
                    ).lineLimit(5)
                }
            }
            Section{
                Button("Enviar registro"){
                    print("Enviando datos...")
                }
                .frame(maxWidth: .infinity)
                .disabled(nombre.isEmpty || email.isEmpty)
            }
        }
        .navigationTitle("Asiste a la fiesta")
    }
}

#Preview {
    VistaForms()
}
