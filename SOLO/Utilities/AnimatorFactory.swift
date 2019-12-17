//
//  AnimatorFactory.swift
//  SOLO
//
//  Created by Kimball Yang on 12/16/19.
//  Copyright © 2019 Kimball Yang. All rights reserved.
//

import UIKit

class AnimatorFactory {
  
  static func scaleUp(view: UIView) -> UIViewPropertyAnimator {
    let scale = UIViewPropertyAnimator(
      duration: 0.9,
      curve: .easeIn
    )
    
    scale.addAnimations {
      view.alpha = 1
    }
    
    scale.addAnimations({
        view.transform = CGAffineTransform.identity
      },
      delayFactor: 0.5
    )
    
    scale.addCompletion { _ in
      print("Ready!")
    }
    
    return scale
  }
}
