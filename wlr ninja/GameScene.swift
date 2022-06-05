//
//  GameScene.swift
//  wlr ninja
//
//  Created by Nikita  on 6/4/22.
//

import SpriteKit


class GameScene: SKScene {
    
    var gameScore:SKLabelNode!
    
    var score = 0{
        didSet{
            gameScore.text = "Score: \(score)"
        }
    }
    
    var livesImages = [SKSpriteNode]()
    var lives = 3
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "sliceBackground")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        
        
        physicsWorld.gravity = CGVector(dx: 0, dy: -6)
        physicsWorld.speed = 0.85
        
        createLives()
        createScore()
        createSlices()
    }
    
    func createScore(){
        gameScore = SKLabelNode(fontNamed: "Chalkduster")
        gameScore.horizontalAlignmentMode = .left
        gameScore.fontSize = 48
        addChild(gameScore)
        gameScore.position = CGPoint(x: 8, y: 8)
        score = 0
        
    }
    func createLives(){
        
    }
    
    func createSlices(){
        
    }
}
