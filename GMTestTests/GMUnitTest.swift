//
//  GMUnitTest.swift
//  GMTestTests
//
//  Created by Shahriar Mahmud on 1/8/21.
//  Copyright © 2021 Thomas Woodfin. All rights reserved.
//

import XCTest
import GMTest

class GMUnitTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        getMovieList()
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    private func getMovieList(){
        APIClient.shared.checkMockdata(fileName: "NowPlayingListResponse", modelType: MovieResponse.self) { (response) in
            switch response {
            case .success(let model):
                XCTAssertNotNil(model.movieList)
                XCTAssertNotNil(model.movieList?[0].id)
                self.getPopularMovieList()
            }
        }
    }
    
    private func getPopularMovieList(){
        APIClient.shared.checkMockdata(fileName: "PopularListResponse", modelType: MovieResponse.self) { (response) in
            switch response {
            case .success(let model):
                XCTAssertNotNil(model.movieList)
                XCTAssertNotNil(model.movieList?[0].id)
                XCTAssertNotNil(model.movieList?[0].title)
                XCTAssertNotNil(model.movieList?[0].poster_path)
                XCTAssertNotNil(model.movieList?[0].release_date)
                XCTAssertNotNil(model.movieList?[0].overview)
            }
        }
    }

}
