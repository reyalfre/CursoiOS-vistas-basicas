//
//  VistaPaddings.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 19/1/26.
//

import SwiftUI

struct VistaPaddings: View {
    var body: some View {
        Text("Hola. Esta es mi primera app iOS")
        Text("Otro texto")
        Text("Texto con padding")
            .padding()  // por defecto el valor es de 16 puntos
            .background(Color.blue)
        Text("Padding de 20 puntos")
            .padding(20)
            .background(Color.green)

        Text("Padding en top (arriba)")
            .padding(.top, 20)
            .background(Color.yellow)

        Text("Padding en leading (izquierda)")
            .padding(.leading, 20)
            .background(Color.yellow)

        Text("Padding en bottom (abajo)")
            .padding(.bottom, 20)
            .background(Color.yellow)
        Text("Padding en trailing (derecha)")
            .padding(.trailing, 20)
            .background(Color.orange)
        Text("Padding a la izquierda")
            .padding(.leading)
            .background(Color.brown)
        Text("Padding a la derecha")
            .padding(.trailing)
            .background(Color.cyan)
        Text("Padding horizontal(izquierda y derecha")
            .padding(.horizontal, 20)
            .background(Color.purple)
        Text("Padding vertical(arriba y abajo")
            .padding(.vertical, 20)
            .background(Color.teal)
        Text("Multipadding")
            .padding([.top, .leading, .trailing, .bottom])
            .background(Color.red)
    }
}

#Preview {
    VistaPaddings()
}
