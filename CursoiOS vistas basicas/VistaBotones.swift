//
//  VistaBotones.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

enum MenuSize: String, CaseIterable, Identifiable {
    case small = "Pequeño"
    case medium = "Medium"
    case large = "Large"
    case extraLarge = "Extra Large"

    var id: String { rawValue }
}

struct VistaBotones: View {
    @State private var activado = false
    @State private var selectedItem = ""
    @State private var menuSize: MenuSize = .medium

    var body: some View {
        VStack {
            Button("Hazme click / tap") {
                print("Me has hecho click")
            }

            Button {
                print("Me has hecho tap")
            } label: {
                Text("Hazme click")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding()
                    .background(.green)
            }

            Button {
                print("Me has hecho tap")
            } label: {
                Label("Hazme tap!", systemImage: "pointer.arrow.click")
                    .padding()
                    .border(Color.blue, width: 2)
            }
            Button {
                print("Has tocado la imagen")
            } label: {
                Image("pajarraco")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            }
            Text("El switch está " + (activado ? "activado" : "desactivado"))

            Button {
                activado.toggle()
                print("Activado = \(activado)")

            } label: {
                Label(
                    "Toca para activar/desactivar el switch",
                    systemImage: "pointer.arrow"
                )
                .padding().padding().border(Color.blue)
            }
            Divider()

            // Pickers
            Picker("Selecciona tu menu", selection: $selectedItem) {
                Text("Elijo carne").tag("carne")
                Text("Elijo pescado").tag("pescado")
                Text("Elijo vegetal").tag("vegetal")
            }
            .pickerStyle(.segmented)
            .onChange(of: selectedItem) { oldValue, newValue in
                print(
                    "Estaba seleccionado \(oldValue), ahora has seleccionado \(newValue)"
                )
            }
            Text("Está seleccionado el menú: \(selectedItem)")

            Divider()

            HStack {
                Text("De tamaño de bebida, quiero: ")
                Picker("Selecciona el tamaño", selection: $menuSize) {
                    ForEach(MenuSize.allCases) {
                        tamano in Text(tamano.rawValue).tag(tamano)
                    }
                }
                .onChange(of: menuSize) { oldValue, newValue in
                    switch newValue {
                    case .small, .medium:
                        print("La moderación es importante")
                    case .large:
                        print("Bebe con moderacion")
                    case .extraLarge:
                        print("¡Diabetes!")
                    }
                }

            }

        }
    }
}
#Preview {
    VistaBotones()
}
