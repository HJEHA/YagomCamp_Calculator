//
//  LinkedListTests.swift
//  LinkedListTests
//
//  Created by 황제하 on 2021/11/09.
//

import XCTest

class LinkedListTests: XCTestCase {
    var sut: LinkedList<Int>!
    
    override func setUpWithError() throws {
        sut = LinkedList<Int>()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_LinkedList의_front가_nil인지() {
        let front = sut.front
        
        XCTAssertNil(front)
    }

    func test_LinkedList에_Node를_추가해서_front에_nil이_안나오게() {
        let node = Node<Int>(value: 5)
        sut.addRear(node.value)
        
        XCTAssertNotNil(sut.front)
    }
    
    func test_LinkedList의_add함수에_전달인자로_value를_넣어주고_frontNode의_value와같은지() {
        let value = 5
        sut.addRear(value)
        
        XCTAssertEqual(sut.front?.value, value)
    }
    
    func test_LinkedList의_add함수에_값을_2개넣으면_순서대로_front_rear가_들어가는지() {
        let value1 = 1
        let value2 = 2
        sut.addRear(value1)
        sut.addRear(value2)
        
        XCTAssertEqual(sut.front?.value, value1)
        XCTAssertEqual(sut.rear?.value, value2)
    }
    
    func test_LinkedList의_add함수에_값을_3개넣으면_순서대로_front_rear가_들어가는지() {
        let value1 = 1
        let value2 = 2
        let value3 = 3
        
        sut.addRear(value1)
        sut.addRear(value2)
        sut.addRear(value3)
        
        XCTAssertEqual(sut.front?.value, value1)
        XCTAssertEqual(sut.rear?.value, value3)
    }
    
    func test_LinkedList의_front를_제거하면_처음_넣어준_Node가_나오는지() {
        let value1 = 1
        let value2 = 2
        let value3 = 3
        
        sut.addRear(value1)
        sut.addRear(value2)
        sut.addRear(value3)
        
        let result = sut.removeFront()
        
        XCTAssertEqual(result?.value, value1)
    }
    
    func test_LinkedList의_front를_두번_제거하면_순서대로_Node가_나오는지() {
        let value1 = 1
        let value2 = 2
        let value3 = 3
        
        sut.addRear(value1)
        sut.addRear(value2)
        sut.addRear(value3)
        
        let result1 = sut.removeFront()
        let result2 = sut.removeFront()
        
        XCTAssertEqual(result1?.value, value1)
        XCTAssertEqual(result2?.value, value2)
    }
    
    func test_LinkedList의_front를_모두_제거하면_순서대로_Node가_나오는지() {
        let value1 = 1
        let value2 = 2
        let value3 = 3
        
        sut.addRear(value1)
        sut.addRear(value2)
        sut.addRear(value3)
        
        let result1 = sut.removeFront()
        let result2 = sut.removeFront()
        let result3 = sut.removeFront()
        
        XCTAssertEqual(result1?.value, value1)
        XCTAssertEqual(result2?.value, value2)
        XCTAssertEqual(result3?.value, value3)
    }
    
    func test_LinkedList의_front를_모두_제거하면_빈_LinkedList가_나오는지() {
        let value1 = 1
        let value2 = 2
        let value3 = 3
        
        sut.addRear(value1)
        sut.addRear(value2)
        sut.addRear(value3)
        
        sut.removeFront()
        sut.removeFront()
        sut.removeFront()
        
        XCTAssertTrue(sut.isEmpty)
        XCTAssertNil(sut.rear)
    }
    
    func test_LinkedList의_removeAll함수실행시_빈_LinkedList가_나오는지() {
        let value1 = 1
        let value2 = 2
        let value3 = 3
        
        sut.addRear(value1)
        sut.addRear(value2)
        sut.addRear(value3)
        
        sut.removeAll()
        
        XCTAssertTrue(sut.isEmpty)
        XCTAssertNil(sut.rear)
    }
}
