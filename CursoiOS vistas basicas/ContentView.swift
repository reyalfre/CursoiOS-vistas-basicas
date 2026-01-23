//
//  ContentView.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 19/1/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    NavigationLink(destination: VistaPaddings()) {
                        Text("Ir a vista de paddings")
                    }
                    NavigationLink(destination: VistaTexto()) {
                        Text("Ir a vista de textos")
                    }
                    NavigationLink(destination: VistaStacks()) {
                        Text("Ir a vista de Stacks")
                    }
                    NavigationLink(destination: VistaImagenes()) {
                        Text("Ir a vista de Imágenes")
                    }
                    NavigationLink(destination: VistaPruebas()) {
                        Text("Ir a vista de prueba")
                    }
                    NavigationLink(destination: VistaTextInputs()) {
                        Text("Ir a vista de inserción de texto")
                    }
                    NavigationLink(destination: VistaTogglesSliders()) {
                        Text("Ir a vista de Toggle y Sliders")
                    }
                    NavigationLink(destination: VistaForms()) {
                        Text("Ir a vista de Forms")
                    }
                    NavigationLink(destination: VistaAlertasMenus()) {
                        Text("Ir a vista de Menus")
                    }
                    NavigationLink(destination: VistaAlertasMenus()) {
                        Text("Ir a vista de Alertas")
                    }
                    NavigationLink(destination: VistaTouchGestures()) {
                        Text("Ir a vista de Gestos Táctiles")
                    }
                    NavigationLink(destination: VistaTarjetaPerfil()) {
                        Text("Ir a vista de Tarjeta Perfil")
                    }
                    NavigationLink(destination: VistaTarjetaFavoritos()) {
                        Text("Ir a vista de Tarjeta Favoritos")
                    }
                    NavigationLink(destination: VistaScrollHorizontal()) {
                        Text("Ir a vista de Scroll Horizontal")
                    }
                    NavigationLink(destination: VistaListas()) {
                        Text("Ir a vista de Listas")
                    }
                    NavigationLink(destination: VistaListas2()) {
                        Text("Ir a vista de Listas2")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
