//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local resturant",
                 description: "Try to get an arrangement with a fall vibe. The Urban Vergo floral truck has some great bouquets."),
            Task(title: "Your favorite caffe",
                 description: "Bring treats to encourage him to walk, otherwise be prepared to carry him when he flops."),
            Task(title: "Grab a fresh candle 🕯",
                 description: "If you're by the Ferry Building, check out SOMA Small Batch Goods, they have the best candles EVER!!! Their California Morning candle is divine!")
        ]
    }
}
