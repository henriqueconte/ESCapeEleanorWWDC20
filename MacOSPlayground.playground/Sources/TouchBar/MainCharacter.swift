import Foundation
import SpriteKit


class MainCharacter: SKSpriteNode {
    
    private var leftAssetCount: Int = 1
    private var rightAssetCount: Int = 1
    
    init(texture: SKTexture?, size: CGSize) {
        super.init(texture: texture, color: NSColor.red, size: size)
        self.texture = texture
        self.size = size
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func moveLeft() {
        self.position.x -= 1
        rightAssetCount = 1
        
        if leftAssetCount > 3 {
            leftAssetCount = 1
        }
        
        self.texture = SKTexture(imageNamed: "charLeft\(leftAssetCount)")
    }
    
    func moveRight() {
        self.position.x += 1
        leftAssetCount = 1
        
        if rightAssetCount > 3 {
            rightAssetCount = 1
        }
        
        self.texture = SKTexture(imageNamed: "charRight\(rightAssetCount)")
    }
}