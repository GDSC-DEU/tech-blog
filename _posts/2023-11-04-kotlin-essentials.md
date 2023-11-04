# JAVA와 Kotlin

## **Kotlin이란**

JVM을 기반으로 한 프로그래밍 언어. JAVA의 Null 안전성을 보완하기 위해 출시된 언어이다.

## **특징**

1. JAVA와 100% 호환된다.
2. 가독성이 좋다.
3. 널 안정성을 내장한다.
    - Kotlin에서는 변수나 매개변수를 설정할 때, null을 가질 수 있는지를 명시적으로 지정한다.
    - 이를 통해 Exception이 발생할 수 있는 가능성을 사전에 방지한다.
    - 예외처리를 강제하지 않는다.
4. 모든 함수가 리턴값을 가진다.
5. final을 클래스의 기본값으로 가지므로 불변성을 가진다.
6. 원시형 자료가 존재하지 않는다.
7. 확장자, 연산자 오버로딩을 지원한다.
8. 오버헤드가 거의 발생하지 않는다.

## **문법**

### **변수**

- var: 변수값 변경이 가능하다.
    
    ```kotlin
    var [변수명]: [자료형]
    ```
    
- val: 변수값 변경이 불가능하다. java의 final과 동일하다.
    
    ```kotlin
    val [변수형]: [자료형]
    ```
    
- ?: 변수의 값이 null이 될 수 있다는 것을 명시한다.
    
    ```kotlin
    var [변수형]: [자료형]? = null
    ```
    

### **배열**

- array
    
    ```kotlin
    var array1: Array<Int> = arrayOf(1, 2, 3, 4)
    var array2 = arrayOfNulls<int>(5)
    var array3: Array<Any> = arrayOf(1, 2.3, "abc")
    ```
    

### **함수**

- 기본형 함수
    
    ```kotlin
    fun [함수명]([매개변수]: [변수 타입]): [리턴 타입]{
    }
    ```
    
- 단일 표현식 함수: a와 b의 합이므로 리턴값은 Int라고 추론 가능
    
    ```kotlin
    fun add(a: Int, b: Int) = a + b
    ```
    

### **형변환**

- to변수()로 형변환이 가능하다.
    
    ```kotlin
    var a: Int = 123
    var b: String = a.toString()
    ```
    

### **조건문**

- if문
    
    ```kotlin
    if([조건]){
    }
    ```
    
- is: 데이터 타입을 비교한다.
    
    ```kotlin
    if(a is String){
    }
    ```
    
- when
    
    ```kotlin
    when(a){
        1 -> [코드]
        "abc" -> [코드]
        else -> [코드]
    }
    ```
    

### **반복문**

- for문
    
    ```kotlin
    for(i: Int in 1..10){}
    // 1~10까지 반복한다
    
    for(i in 1 until 10){}
    // 1~9까지 반복한다
    
    for(i in 'a'..'e')
    // 알파벳도 가능하다.
    
    for(i in 1..10 step(2)){}
    // 1~10까지 2씩 증가한다
    // step은 음수 사용이 불가하다
    
    for(i in 10 downTo 1){}
    // i가 감소하면서 반복한다
    
    for(i in arr){}
    // 배열, 리스트에서 사용 가능하다
    // .reverse()등의 함수도 이용 가능하다
    ```
    
- while문
    
    ```kotlin
    while([조건]){
    }
    ```
    
- do while문
    
    ```kotlin
    while([조건]){}
    do{
        [코드]
    } while([조건])
    ```
    

### **흐름 제어**

- break, continue: 다른 언어랑 동일하다.
@label: break, continue 뒤애 달아서 해당 위치로 이동하도록 설정이 가능하다
    
    ```kotlin
    point@for(i in 1..10){
        for(k in 1..10){
            break@point
        }
    }
    ```
    

### **클래스**

- class
    
    ```kotlin
    class [클래스명]([속성명]: [속성 타입]){
    }
    ```
    
- init: 생성자와 함께 사용되며 객체 초기화 시 실행되는 초기화 코드를 포함하는 블록이다.
    
    ```kotlin
    class Sample(var str: String, num: Int){
        init{
            println("${str} ${num}")
        }
    }
    ```
    
- constructor: 보조 생성자
    
    ```kotlin
    class Sample(var str: String, num: Int){
        constructor(str: String, num: Int, cnt: Int){
            println("${str} ${num} ${cnt}")
        }
    }
    ```
    

### **상속**

- open
    
    Kotlin은 더 이상 상속하지 못하는 final을 클래스의 기본값으로 가진다. 따라서 open 혹은 abstract를 붙여 상속할 수 있도록 설정해주어야 한다.

    ```kotlin
    open class Electric(val name: String){
        open fun type() {
            println("$name는 전기 타입입니다.")
        }
    }

    class Pikachu(name: String) : Electric(name) {
        fun skill() {
            println("$name의 100만 볼트!")
        }
    }

    fun main() {
        val pikachu = Pikachu("피카츄")
        pikachu.type()
        pikachu.skill()
    }
    ```
    
- override

    ```kotlin
    open class Electric {
        open fun damage(): Double {
            return 0.0
        }
    }

    // 전기타입 포켓몬은 전기타입 공격을 1.5배의 위력으로 할 수 있다
    class Thunderbolt(val power: Double) : Electric {
        override fun damage(): Double {
            return 1.5 * power
        }
    }

    fun main() {
        val thunderbolt = Thunderbolt(90.0)
        println("피카츄의 100만 볼트! 꼬부기에게 ${thunderbolt.damage()}의 데미지!")
    }
    ```
    
- interface
    
    ```kotlin
    // 인터페이스 정의
    interface Tool {
        fun heal(): Int
    }

    // Potion(상처약) 클래스가 Tool 클래스를 구현
    // 상처약은 체력을 20만큼 회복한다
    class Potion(val currentHp: Int) : Tool {
        override fun heal(): Int {
            return currentHp + 20
        }
    }

    // MaxPotion(풀회복약) 클래스가 Tool 클래스를 구현
    // 풀회복약은 체력을 모두 회복한다
    class MaxPotion(val maxHp: Int, currentHp: Int) : Tool {
        override fun heal(): Int {
            return maxHp - currentHp
        }
    }

    fun printHeal(tool: Tool) {
        println("체력이 ${tool.heal()}만큼 회복되었다.")
    }

    fun main() {
        val potion = Potion(10)
        val maxPotion = MaxPotion(200, 10)

        printHeal(potion)
        printHeal(maxPotion)
    }
    ```
    

### **스코프 함수**

- let: 주어진 객체에 대해 추가 작업을 수행하고, 결과를 반환한다. 주로 null 체크나 객체 변환에 사용된다.
- run: 주어진 객체의 블록 내에서 작업을 수행하고, 결과를 반환한다. this 키워드로 객체에 접근할 수 있다.
- with: 주어진 객체를 대상으로 블록 내에서 작업을 수행하고, 결과를 반환하지 않는다. 객체의 멤버에 직접 접근할 때 사용된다.
- apply: 주어진 객체에 대해 작업을 수행하고, 객체 자체를 반환한다. 주로 객체의 속성을 초기화하거나 수정할 때 사용된다.
- also: 주어진 객체에 대해 추가 작업을 수행하고, 객체 자체를 반환한다. let과 유사하지만 결과를 반환하지 않는다.
    
    ```kotlin
    val pokemon = Pokemon("Pikachu", 50)
    
    val result = pokemon.let {
        println("이름: ${it.name}")
        println("레벨: ${it.level}")
        println("Let 함수 결과")
    }
    
    val withResult = with(pokemon) {
        println("이름: ${name}")
        println("레벨: ${level}")
        println("With 함수 결과")
    }
    
    pokemon.apply {
        println("이름: ${name}")
        println("레벨: ${level}")
    }.run {
        println("apply와 run 함수 결과")
    }
    ```
    

### **람다식**

- 함수형: 기존의 함수형 프로그래밍은 다음과 같이 작성된다.
    
    ```kotlin
    package Kotlin
    
    fun main(){
        fun fn(a:Int, b:Int):Int {return a+b}
        println(fn(1,2))
    }
    ```
    
- 람다식
    
    ```kotlin
    package Kotlin
    
    fun main(){
        val fn = {a:Int, b:Int -> a+b}
        println(fn(1,2))
    }
    ```
    
- 고차함수 함수를 인자로 받기
    
    ```kotlin
    package Kotlin
    
    fun printer(a: Int, b: Int, f: (Int, Int) -> Int) {
        println("$a 와 $b 를 함수에 -> ${f(a, b)}")
    }
    ```
    
- 함수를 반환하기
    
    ```kotlin
    package Kotlin
    
    fun getPrintingFunction(str: String): () -> Unit {
        return { println(str) }
    }
    ```