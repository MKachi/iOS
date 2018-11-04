// 자료형들
func main(args: String) {
    var a: Int8 = 0 // char
    var b: Int16 = 0 // short
    var c: Int32 = 0 // int
    var d: Int64 = 0 // long long
    
    // int는 사용환경에 따라 사이즈가 변함
    // 일반적으로 int를 사용
    
    print(Int.min) // 최소값
    print(Int.max) // 최대값
    
    print(MemoryLayout<Int>.size) // sizeof 와 같은거
    
    var e: Float = 0.0f;
    print(Float.leastNormalMagnitude) // 소수점 최소값
    print(Float.greatestFiniteMagnitude) // 소수점 최대값
    
    var f: Double = 1.0
    
    var g: Bool = true
    
    var str: String = "asdfasdf"
    var ch: Character = 'd'
    
    typealias TT = Int // typedef같은거
    var h: TT = 10
}
