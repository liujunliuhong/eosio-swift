//
//  RequestModels.swift
//  EosioSwift
//
//  Created by Farid Rahmani on 4/10/19.
//  Copyright © 2019 block.one. All rights reserved.
//

import Foundation

public struct EosioRpcTableRowsRequest: Codable {
    public enum EncodeType: String, Codable {
        case dec
        case hex
    }
    public var scope: String
    public var code: String
    public var table: String
    public var tableKey: String?
    public var json: Bool
    public var lowerBound: String?
    public var upperBound: String?
    public var limit: UInt32
    public var indexPosition: String = "1"
    public var keyType: String?
    public var encodeType: EncodeType
    public var reverse: Bool?
    public var showPayer: Bool?

    public init(
        scope: String,
        code: String,
        table: String,
        json: Bool = true,
        limit: UInt32 = 10,
        tableKey: String? = nil,
        lowerBound: String? = nil,
        upperBound: String? = nil,
        indexPosition: String = "1",
        keyType: String? = nil,
        encodeType: EncodeType = .dec,
        reverse: Bool? = nil,
        showPayer: Bool? = nil
        ) {
        self.scope = scope
        self.code = code
        self.table = table
        self.tableKey = tableKey
        self.json = json
        self.lowerBound = lowerBound
        self.upperBound = upperBound
        self.limit = limit
        self.indexPosition = indexPosition
        self.keyType = keyType
        self.encodeType = encodeType
        self.reverse = reverse
        self.showPayer = showPayer
    }

    enum CodingKeys: String, CodingKey {
        case scope
        case code
        case table
        case tableKey = "table_key"
        case json
        case lowerBound = "lower_bound"
        case upperBound = "upper_bound"
        case limit
        case indexPosition = "index_position"
        case keyType = "key_type"
        case encodeType = "encode_type"
        case reverse
        case showPayer = "show_payer"
    }
}

public struct EosioRpcCurrencyBalanceRequest: Codable {
    public var code: String
    public var account: String
    public var symbol: String

    public init(code: String, account: String, symbol: String) {
        self.code = code
        self.account = account
        self.symbol = symbol
    }
}

public struct EosioRpcProducersRequest: Codable {

    public var limit: UInt32?
    public var lowerBound: String
    public var json: Bool

    public init(limit: UInt32? = nil, lowerBound: String, json: Bool = true) {
        self.limit = limit
        self.lowerBound = lowerBound
        self.json = json
    }

    enum CodingKeys: String, CodingKey {
        case limit
        case lowerBound = "lower_bound"
        case json
    }
}

public struct EosioRpcHistoryActionsRequest: Codable {
    public var position: Int32?
    public var offset: Int32?
    public var accountName: String

    public init(position: Int32? = nil, offset: Int32? = nil, accountName: String) {
        self.position = position
        self.offset = offset
        self.accountName = accountName
    }
}

public struct EosioRpcBlockHeaderStateRequest: Codable {
    public var blockNumOrId: String

    public init(blockNumOrId: String) {
        self.blockNumOrId = blockNumOrId
    }

}

public struct EosioRpcAccountRequest: Codable {
    public var accountName: String

    public init(accountName: String) {
        self.accountName = accountName
    }
}

public struct EosioRpcCurrencyStatsRequest: Codable {
    public var code: String
    public var symbol: String

    public init(code: String, symbol: String) {
        self.code = code
        self.symbol = symbol
    }
}

public struct EosioRpcHistoryTransactionRequest: Codable {
    public var id: String
    public var blockNumHint: Int32?
    public init(transactionId: String, blockNumHint: Int32? = nil) {
        self.id = transactionId
        self.blockNumHint = blockNumHint
    }
}

public struct EosioRpcHistoryKeyAccountsRequest: Codable {
    public var publicKey: String

    public init(publicKey: String) {
        self.publicKey = publicKey
    }
}

public struct EosioRpcHistoryControlledAccountsRequest: Codable {
    public var controllingAccount: String

    public init(controllingAccount: String) {
        self.controllingAccount = controllingAccount
    }
}

public struct EosioRpcTableByScopeRequest: Codable {
    public let code: String
    public let table: String?
    public let lowerBound: String?
    public let upperBound: String?
    public let limit: Int32?
    public let reverse: Bool?

    public init(code: String, table: String? = nil, lowerBound: String? = nil, upperBound: String? = nil, limit: Int32? = nil, reverse: Bool? = nil) {
        self.code = code
        self.table = table
        self.lowerBound = lowerBound
        self.upperBound = upperBound
        self.limit = limit
        self.reverse = reverse
    }
}

public struct EosioAccountInfo: Codable {
    public let accountName: String

    public init(accountName: String) {
        self.accountName = accountName
    }
}

public typealias EosioRpcRawCodeAndAbiRequest = EosioAccountInfo
public typealias EosioRpcCodeRequest = EosioAccountInfo