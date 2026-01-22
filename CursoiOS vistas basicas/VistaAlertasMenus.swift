//
//  VistaAlertasMenus.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

struct VistaAlertasMenus: View {
    @State private var mostrarAlerta: Bool = false
    @State private var mostrarActionSheet: Bool = false
    @State private var mostrarAlertaTextField: Bool = false
    @State private var nombre: String = ""
    @State private var colorRectangulo: Color = .red.opacity(0.5)
    var body: some View {
        VStack(spacing: 10) {
            Button("Mostrar aviso") {
                mostrarAlerta.toggle()
            }
            .alert(isPresented: $mostrarAlerta) {
                Alert(
                    title: Text("Aviso"),
                    message: Text("Esta es una alerta"),
                    dismissButton: .default(Text("Aceptar"))
                )
            }
        }

        Button("Mostrar Action Sheet") {
            mostrarActionSheet.toggle()
        }
        .actionSheet(isPresented: $mostrarActionSheet) {
            ActionSheet(
                title: Text("Acciones"),
                message: Text("Puedes aceptar o cancelar"),
                buttons: [
                    .default(Text("Aceptar Cambios")) { aceptar() },
                    .default(Text("Rechazar Cambios")) { rechazar() },
                    .cancel(Text("Cancelar")),
                ]
            )
        }
        Button("Toca para introducir tu nombre") {
            mostrarAlertaTextField.toggle()
        }
        .alert("Datos", isPresented: $mostrarAlertaTextField) {
            TextField("Nombre", text: $nombre)
            Button("Aceptar") {
                print("Introdujo su nombre: \(nombre)")
                //Lo siguiente es para que si el usuario vuelve a escribir su nombre, el campo esté vacío.
                nombre = ""
            }
        } message: {
            Text("Introduce tu nombre para confirmar")
        }
        //Menú contextual
        Label(
            "Has long press (mantener apretado) para menú contextual",
            systemImage: "button.horizontal.top.press"
        )
        .foregroundStyle(Color.accentColor)
        .contextMenu {
            Button {
                colorRectangulo = .red

            } label: {
                Label("Colorea de rojo", systemImage: "paintbrush")
            }
            Button{
                colorRectangulo = .green
            } label: {
                Label("Colorea de verde", systemImage: "leaf")
            }
        }
        Rectangle()
            .fill(colorRectangulo)
            .frame(width: 50, height: 50)
        
        Menu("Toca para ver opciones"){
            Button("Editar", systemImage: "pencil"){
            }
        }
    }
}
func aceptar() {
    print("Aceptado")
}
func rechazar() {
    print("Rechazando Cambios")
}

#Preview {
    VistaAlertasMenus()
}
