import Foundation

#if SKIP
public let CBUUIDCharacteristicExtendedPropertiesString: String = "2900"
public let CBUUIDCharacteristicUserDescriptionString: String = "2901"
public let CBUUIDClientCharacteristicConfigurationString: String = "2902"
public let CBUUIDServerCharacteristicConfigurationString: String = "2903"
public let CBUUIDCharacteristicFormatString: String = "2904"
public let CBUUIDCharacteristicAggregateFormatString: String = "2905"
public let CBUUIDCharacteristicValidRangeString: String = "2906"

@available(*, unavailable)
public let CBUUIDL2CAPPSMCharacteristicString: String = "2A36"

open class CBUUID: NSObject {
    private lazy var uuid: UUID

    @available(*, unavailable)
    open var data: Data { fatalError() }
    open var uuidString: String {
        uuid.uuidString
    }

    public init(string: String) {
        if let uuid = UUID(uuidString: string) {
            self.uuid = uuid
        } else {
            self.uuid = UUID()
        }
    }

#if !SKIP
    @available(*, unavailable)
    public init(data theData: Data) { fatalError()}

    @available(*, unavailable)
    public init(cfuuid theUUID: CFUUID) { fatalError() }
#endif

    public init(nsuuid: UUID) {
        self.uuid = nsuuid
    }
}

#endif
