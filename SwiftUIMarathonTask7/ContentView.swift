//
//  ContentView.swift
//  SwiftUIMarathonTask7
//
//  Created by Sergei Semko on 3/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace private var namespace
    @State private var isExpanded = false
    
    var frame: CGSize {
        CGSize(
            width: isExpanded ? 300 : 100,
            height: isExpanded ? 450 : 50
        )
    }
    
    var body: some View {
        ZStack(alignment: isExpanded ? .topLeading : .center) {
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue)
                .frame(maxWidth: frame.width, maxHeight: frame.height)
            
            
            if isExpanded {
                Button {
                    withAnimation(.spring) {
                        isExpanded.toggle()
                    }
                } label: {
                    Label("Back", systemImage: "arrowshape.backward.fill")
                        
                }
                .frame(maxWidth: 100)
                .foregroundColor(.white)
                .padding()
                .matchedGeometryEffect(id: "text", in: namespace)
                
            } else {
                Button {
                    withAnimation(.spring) {
                        isExpanded.toggle()
                    }
                } label: {
                    Text("Open")
                        
                }
                .foregroundColor(.white)
                .matchedGeometryEffect(id: "text", in: namespace)
            }
        }
        .padding()
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: isExpanded ? .center : .bottomTrailing
        )
    }
}

#Preview {
    ContentView()
}
