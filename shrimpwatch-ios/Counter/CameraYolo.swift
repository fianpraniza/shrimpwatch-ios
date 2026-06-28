//
//  CameraYolo.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 22/05/26.
//

import YOLO
import SwiftUI
import AVFoundation

//var model: YOLO?
//model = YOLO("best", task: .detect) {
//    result in _ = result
//}
//
//guard let model = model, let image = UIImage(named: "your_image_name") else { return }
//
//let output: YOLOResult = model(image)   // UIImage overload; also accepts CIImage, CGImage,
//                                        // a bundle resource name, or a local file path.
//
//// Detection boxes (applies to .detect, .segment, .pose, and similar tasks).
//for box in output.boxes {
//    print("\(box.cls) — conf \(box.conf) at \(box.xywh)")
//}

struct CameraYolo: View {
    var body: some View {
        YOLOCamera(
            modelPathOrName: "best",
            task: .detect,
            cameraPosition: .back
        )
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    CameraYolo()
}
