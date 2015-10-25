import UIKit

let image = UIImage(named: "sample")
let red = RED(image: image!)
let blue = BLUE(image: image!)
let green = Green(image: image!)
let blacknWhite = BlacknWhite(image: image!)
let black = Black(image: image!)
let brightness = Brightness(image: image!)
let Contrastimage = contrastimage(image : image!)
red.filter()
red.rgbaImage
let REDImage = red.rgbaImage.toUIImage()!
blue.filter()
blue.rgbaImage
let BlueImage = blue.rgbaImage.toUIImage()!
green.filter()
green.rgbaImage
let greenImage = green.rgbaImage.toUIImage()!
blacknWhite.filter()
blacknWhite.rgbaImage
let blacknwhiteimage = blacknWhite.rgbaImage.toUIImage()!
black.filter()
black.rgbaImage
let BlackImage = black.rgbaImage.toUIImage()!
brightness.filter()
brightness.rgbaImage
let BrightnessImage = brightness.rgbaImage.toUIImage()!
Contrastimage.filter(10)
Contrastimage.rgbaImage
let contastImage1 = Contrastimage.rgbaImage.toUIImage()!


















