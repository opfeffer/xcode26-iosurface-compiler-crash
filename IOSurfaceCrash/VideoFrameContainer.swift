//
//  VideoFrameContainer.swift
//  IOSurfaceCrash
//
//  Created by Pfeffer, Oli on 6/24/25.
//

import CoreVideo
import IOSurface

public final class VideoFrameContainer {

    init() { }

    public func readProperties() {
        let pixelBuffer: CVPixelBuffer? = nil
        let surfaceUnmanaged: Unmanaged<IOSurfaceRef>? = CVPixelBufferGetIOSurface(pixelBuffer)
        let surface: IOSurface = surfaceUnmanaged!.takeUnretainedValue()

        // commenting out this line causes the build to succeed.
        let creationProperties = surface.attachment(forKey: "CreationProperties") // expected to return a NSDictionary

        print(creationProperties)
    }
}
