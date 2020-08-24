//
//  CoreDataFeedStoreTests.swift
//  EssentialFeedTests
//
//  Created by Hashem Aboonajmi on 8/24/20.
//  Copyright © 2020 Hashem Aboonajmi. All rights reserved.
//

import XCTest
import EssentialFeed

class CoreDataFeedStoreTests: XCTestCase, FeedStoreSpecs {

  func test_retrieve_deliversEmptyOnEmptyCache() {
    let sut = makeSUT()

    assertThatRetrieveDeliversEmptyOnEmptyCache(on: sut)
  }

    func test_retrieve_hasNoSideEffectsOnEmptyCache() {
        let sut = makeSUT()

        assertThatRetrieveHasNoSideEffectsOnEmptyCache(on: sut)
    }

    func test_retrieveـdeliversFoundValuesOnNonEmptyCache() {

    }

    func test_retrieve_hasNoSideEffectsOnNonEmptyCache() {

    }

    func test_insert_deliversNoErrorOnEmptyCache() {

    }

    func test_insert_deliversNoErrorOnNonEmptyCache() {

    }

    func test_insert_overridePreviouslyInsertedCacheValues() {

    }

    func test_delete_deliversNoErrorOnEmptyCache() {

    }

    func test_delete_hasNoSideEffectsOnEmptyCache() {

    }

    func test_delete_deliversNoErrorOnNonEmptyCache() {

    }

    func test_delete_emptiesPreviouslyInseretedCach() {

    }

    func test_storeSideEffects_runSerially() {

    }

    private func makeSUT(file: StaticString = #file, line: Int = #line) -> FeedStore {
        
         let storeBundle = Bundle(for: CoreDataFeedStore.self)
         let storeURL = URL(fileURLWithPath: "/dev/null")
         let sut = try! CoreDataFeedStore(storeURL: storeURL, bundle: storeBundle)
         trackForMemoryLeaks(sut, file: file, line: line)
         return sut
     }
}
