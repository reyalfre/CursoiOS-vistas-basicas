//
//  VistaExtensionesVistas.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 26/1/26.
//

import SwiftUI

struct VistaExtensionesVistas: View {
    @State private var estaResaltado = false

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
        Text("Hola")
            .estilo1()
        Button("Un botón") {
        }
        .botonGrande()
        Button("Otro botón de color negro") {

        }
        .modifier(BotonModifier(color: .black))

        Button("Otro botón de color rojo") {

        }.estiloColorBoton(color: .red)

        Text("Actívame")
            .toggleColoreable()
        // Ejemplo para ViewModifiers con estado que se le pasa desde la vista principal
        Text("Texto con bordes resaltables")
           // .modifier(ModificadorBordes(activado: $estaResaltado))
            .bordeModificado(activado: $estaResaltado)
        //.background(estaResaltado ? .red : .gray, width: 2)
        Button("Cambiar borde") {
            estaResaltado.toggle()
        }
        .estiloColorBoton(color: .green)
    }
}

extension View {
    func estilo1() -> some View {
        self.foregroundColor(.indigo)
            .bold()
            .font(.title3)
            .padding()
            .background(Color.blue)
            .italic()
    }
    func botonGrande() -> some View {
        self.padding()
            .background(.blue)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
    }
}

struct BotonModifier: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content.padding()
            .background(color)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
    }
}
extension View {
    func estiloColorBoton(color: Color = .blue) -> some View {
        self.modifier(BotonModifier(color: color))
    }
}
extension View {
    func toggleColoreable() -> some View {
        self.modifier(ToggleColoreable())
    }
}
struct ToggleColoreable: ViewModifier {
    @State var activado: Bool = false

    func body(content: Content) -> some View {
        Toggle(isOn: $activado) {
            content
                .foregroundStyle(activado ? .red : .primary)
        }
        .padding()
    }
}

struct ModificadorBordes: ViewModifier {
    //Activado va a ser el estado que recibimos desde fuera
    @Binding var activado: Bool

    func body(content: Content) -> some View {
        content
            .padding()
            .border(activado ? .red : .gray, width: 2)
            .background(activado ? .red.opacity(0.5) : .white)
    }
}
extension View{
    func bordeModificado(activado: Binding<Bool>) -> some View{
        self.modifier(ModificadorBordes(activado: activado))
    }
}
#Preview {
    VistaExtensionesVistas()
}
