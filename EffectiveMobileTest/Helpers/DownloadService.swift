//
//  DownloadService.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import Foundation

@discardableResult
func download<T: Decodable>(_ path: String) -> T {

    let data: Data

    guard let url = URL(string: path)
    else {
        fatalError("Couldn't read URL")
    }

    do {
        data = try Data(contentsOf: url)
    } catch {
        fatalError("Couldn't load data from server:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        let data = try decoder.decode(T.self, from: data)
        return data
    } catch {
        fatalError("Couldn't parse data as \(T.self):\n\(error)")
    }
}

//func fetch<T: Decodable>(_ path: String) async throws -> T {
//    let result: Data
//
//    guard let url = URL(string: path)
//    else {
//        fatalError("Couldn't read URL")
//    }
//
//    do {
//        let (data, response) = try await URLSession.shared.data(from: url)
//        result = data
//        print(response)
//    } catch {
//        fatalError("Couldn't load data from server:\n\(error)")
//    }
//    let decoder = JSONDecoder()
//    return try decoder.decode(T.self, from: result)
//}

