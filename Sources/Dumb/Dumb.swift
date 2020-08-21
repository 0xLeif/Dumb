public protocol DumbProtocol {
    var bool: Bool { get set }
    var string: String { get set }
    var int: Int { get set }
    var double: Double { get set }
    var float: Float { get set }
    
    var array: [Any] { get set }
    var set: Set<AnyHashable> { get set }
    var dictionary: [AnyHashable: Any] { get set }
}

public struct DumbStruct: DumbProtocol {
    public var bool: Bool
    public var string: String
    public var int: Int
    public var double: Double
    public var float: Float
    public var array: [Any]
    public var set: Set<AnyHashable>
    public var dictionary: [AnyHashable : Any]
    
    public init(bool: Bool = Bool.random(),
                string: String = "Hello, World!",
                int: Int = Int.random(in: 0 ... 100),
                double: Double = Double.random(in: 0 ... 100),
                float: Float = Float.random(in: 0 ... 100),
                array: [Any] = (0 ... 100).map { _ in Int.random(in: 0 ... 100) },
                set: Set<AnyHashable> = Set<Int>((0 ... 100).map { _ in Int.random(in: 0 ... 100) }),
                dictionary: [AnyHashable : Any] = ["some": "value", 3.14: "other", "value": 3.14]) {
        self.bool = bool
        self.string = string
        self.int = int
        self.double = double
        self.float = float
        self.array = array
        self.set = set
        self.dictionary = dictionary
    }
}

public class DumbClass: DumbProtocol {
    public var bool: Bool
    public var string: String
    public var int: Int
    public var double: Double
    public var float: Float
    public var array: [Any]
    public var set: Set<AnyHashable>
    public var dictionary: [AnyHashable : Any]
    
    public init(bool: Bool = Bool.random(),
                string: String = "Hello, World!",
                int: Int = Int.random(in: 0 ... 100),
                double: Double = Double.random(in: 0 ... 100),
                float: Float = Float.random(in: 0 ... 100),
                array: [Any] = (0 ... 100).map { _ in Int.random(in: 0 ... 100) },
                set: Set<AnyHashable> = Set<Int>((0 ... 100).map { _ in Int.random(in: 0 ... 100) }),
                dictionary: [AnyHashable : Any] = ["some": "value", 3.14: "other", "value": 3.14]) {
        self.bool = bool
        self.string = string
        self.int = int
        self.double = double
        self.float = float
        self.array = array
        self.set = set
        self.dictionary = dictionary
    }
}
