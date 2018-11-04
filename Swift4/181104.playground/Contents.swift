// var a: Int = 1.2 // 실수를 Int에 넣을시 데이터 손실이 일어남으로 허락하지 않음

var a: Int = 10
var b: Int = 4

// var c: Double = a / b 정수의 승격같은 묵시적 형변환을 허용하지 않음
var c: Double = Double(a) / Double(b) // 다음과 같이 연산하는 타입을 일치시켜줘야함

// 리터널
var li1: Int = 10 // int
var li2: Int = -10 // int
var li3: Int = 0xA // 16진수 int
var li4: Int = 0o12 // 8진수 int
var li5: Int = 0b1010 // 2진수 int
var li6: Int = 1_110 // int
var li7: Double = 1.12 // double
var li8: Float = 1.12 // float
var li9: String = "asdfasf"
var li10: String = "d" // 하나짜리 String
var li11: Character = "d" // 하나짜리

// 옵셔널
// var op1: Int = nil // 허용되지 않음
var op1: Int? = nil // 허용
op1 = 10
print(op1) // Optional(10)으로 출력됨 -> 옵셔널을 깨줘야함
print(op1!) // Optional을 깸, nil 값이거나 값이 할당되지 않은 경우 에러

var op2: String! = "Test" // 암시적 추출 옵셔널
print(op2) // 다음과 같이 Optional을 깨야하는 상황에서 암시적으로 깨줌, nil값이거나 값이 할당되지 않은 경우 에러

// 옵셔널 바인딩
if var bind = op1 { // nil값이 아니거나 값이 할당 되어있을 경우 바인딩에 성공
    print(bind) // 바인딩 성공
}

var bindTest1: Int? = nil
if let bind2 = bindTest1 {
    print(bind2)
} else {
    print("바인딩 실패")
}

if var bind3 = op1, let bind4 = op2 {
    print("모든 바인딩이 성공!")
}

if var bind5 = op1, let bind6 = bindTest1 {
    print("모든 바인딩이 성공2!")
} else {
    print("바인딩 실패")
}

if var bind7 = op1, var bind8 = op2, bind7 == 10 {
    print("다음과 같이 표현식도 작성가능 (순서 상관 ㄴ)")
}
