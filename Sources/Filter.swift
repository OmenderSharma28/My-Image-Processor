import UIKit



//let image = UIImage(named: "sample")
//let rgbaImage = RGBAImage(image: image!)



public struct RED
{  //-----------------------------------------------------------------------
    public let rgbaImage: RGBAImage
    public init(image: UIImage)
    {        rgbaImage = RGBAImage (image: image)!
    }
    
    public func filter()
    {
        for y in 0..<rgbaImage.height
        {  // This is the code for making the picture as RED
            for x in 0..<rgbaImage.width
            {
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                var totalRed = 0
                var totalGreen = 0
                var totalBlue = 0
                for y in 0..<rgbaImage.height
                {        for x in 0..<rgbaImage.width
                {
                    let index = y * rgbaImage.width + x
                    let pixel = rgbaImage.pixels[index]
                    totalRed += Int(pixel.red)
                    totalGreen += Int(pixel.green)
                    totalBlue += Int(pixel.blue)
                    }
                }
                pixel.red = 255
                pixel.blue = 0
                pixel.green = 0
                rgbaImage.pixels[index] = pixel
                
            }
        }
        _ = rgbaImage.toUIImage()
    }
    
}

public struct BLUE
{  //----------------------------------------------------------------------
    public let rgbaImage: RGBAImage
    public init(image: UIImage)
    {        rgbaImage = RGBAImage (image: image)!
    }
    
    public func filter()
    {
        for y in 0..<rgbaImage.height {// This is the picture for making the image as Blue
            for x in 0..<rgbaImage.width{
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                
                //    totalred += Int(pixel.red)
                //    totalblue += Int(pixel.blue)
                //   totalgreen += Int(pixel.green)
                
                pixel.red = 0
                pixel.blue = 255
                pixel.green = 0
                rgbaImage.pixels[index] = pixel
                
            }
        }
        
        
        
        _ = rgbaImage.toUIImage()
    }
}


public struct Green{//---------------------------------------------------------------------
    
    public let rgbaImage: RGBAImage
    public init(image: UIImage)
    {        rgbaImage = RGBAImage (image: image)!
    }
    public func filter(){
        
        for y in 0..<rgbaImage.height {
            for x in 0..<rgbaImage.width{  // This is the code used for making the picture as Green
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                //
                //    totalred += Int(pixel.red)
                //    totalblue += Int(pixel.blue)
                //   totalgreen += Int(pixel.green)
                
                pixel.red = 0
                pixel.blue = 0
                pixel.green = 255
                rgbaImage.pixels[index] = pixel
                
            }
        }
        
        
        _ = rgbaImage.toUIImage()
    }
}





public class BlacknWhite
{//-----------------------------------------------------------------
    public let rgbaImage: RGBAImage
    public init(image: UIImage)
    {        rgbaImage = RGBAImage (image: image)!
    }
    public func filter()
    {
        var avgvalue = 0
        var avgvalue1 = 0
        
        let sum1 = 3
        for y in 0..<rgbaImage.height {
            for x in 0..<rgbaImage.width{  // This is the code used for making the picture as Black n white
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                avgvalue = Int(pixel.red) + Int(pixel.blue) + Int(pixel.green)
                avgvalue1 = avgvalue / sum1
                pixel.red = UInt8(avgvalue1)
                pixel.blue = UInt8(avgvalue1)
                pixel.green = UInt8(avgvalue1)
                rgbaImage.pixels[index] = pixel
                
            }
        }
        _ = rgbaImage.toUIImage()
    }
}


public class Black{ //----------------------------------------------------------------------
    public let rgbaImage: RGBAImage
    public init(image: UIImage)
    { rgbaImage = RGBAImage (image: image)!
    }
    
    public func filter()
    {
        var totalred = 0
        var totalblue = 0
        var totalgreen = 0
        var avgred = 0
        var avggreen = 0
        var avgblue = 0
        
        
        for y in 0..<rgbaImage.height {
            for x in 0..<rgbaImage.width{  // This is the code used for making the picture as black
                let index = y * rgbaImage.width + x
                let pixelcount = rgbaImage.height * rgbaImage.width
                var pixel = rgbaImage.pixels[index]
                
                totalred += Int(pixel.red)
                totalblue += Int(pixel.blue)
                totalgreen += Int(pixel.green)
                
                avgred = totalred / pixelcount
                avggreen = totalgreen / pixelcount
                avgblue = totalblue / pixelcount
                
                pixel.red = UInt8(avgred)
                pixel.blue = UInt8(avgblue)
                pixel.green = UInt8(avggreen)
                
                rgbaImage.pixels[index] = pixel
            }
        }
        
        _ = rgbaImage.toUIImage()
    }
}


public class Brightness {//----------------------------------------------------------------
    public let rgbaImage: RGBAImage
    public init(image: UIImage)
    {        rgbaImage = RGBAImage (image: image)!
    }
    public func filter()
    {
        var totalred1 = 0
        var totalblue1 = 0
        var totalgreen1 = 0
        
        
        let pixelcount = rgbaImage.height * rgbaImage.width;
        for y in 0..<rgbaImage.height {
            for x in 0..<rgbaImage.width{  // This is the code used for making the picture as brightness
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                totalred1 += Int(pixel.red)
                totalblue1 += Int(pixel.blue)
                totalgreen1 += Int(pixel.green)
                
            }
        }
        let avgred = totalred1/pixelcount
        let avggreen =  totalgreen1/pixelcount
        let avgblue = totalblue1/pixelcount
        let sum = avgred + avggreen + avgblue
        for y in 0..<rgbaImage.height {
            for x in 0..<rgbaImage.width{
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                if (Int(pixel.red) + Int(pixel.blue) + Int(pixel.green) < sum)
                {
                    pixel.red = 0
                    pixel.blue = 0
                    pixel.green = 0
                    rgbaImage.pixels[index] = pixel
                }
                
                
            }
        }
        
        _ = rgbaImage.toUIImage()
    }
    
}


public class contrastimage
{
    public let rgbaImage : RGBAImage
    public init(image:UIImage){
        rgbaImage = RGBAImage (image: image)!
    }
    public func filter(var modifier: Int)
    {
        var totalred1 = 0
        var totalblue1 = 0
        var totalgreen1 = 0
        
        let pixelcount = rgbaImage.height * rgbaImage.width
        for y in 0..<rgbaImage.height {
            for x in 0..<rgbaImage.width{  // This is the code used for making the picture as brightness
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                totalred1 += Int(pixel.red)
                totalblue1 += Int(pixel.blue)
                totalgreen1 += Int(pixel.green)
                
            }
        }
        let avgred = totalred1/pixelcount
        let avggreen =  totalgreen1/pixelcount
        let avgblue = totalblue1/pixelcount
        let sum = avgred + avggreen + avgblue
        for y in 0..<rgbaImage.height{
            for x in 0..<rgbaImage.width{
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                
                
                let reddelta = Int(pixel.red) - avgred
                let bluedelta = Int(pixel.blue) - avgblue
                let greendelta = Int(pixel.green) - avggreen
                //var modifier =  10
                if(Int(pixel.red) + Int(pixel.blue) + Int(pixel.green) < sum){
                    modifier = 1
                }
                
                pixel.red = UInt8(max(0,min(255,(avgred + modifier * reddelta))))
                pixel.blue = UInt8(max(0,min(255,(avgred + modifier * bluedelta))))
                pixel.green = UInt8(max(0,min(255,(avgred + modifier * greendelta))))
                
                
                
                rgbaImage.pixels[index] = pixel
                
            }
        }
        
        _ = rgbaImage.toUIImage()
    }
    
}



