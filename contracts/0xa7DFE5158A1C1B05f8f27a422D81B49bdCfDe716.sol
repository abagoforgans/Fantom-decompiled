contract main {




// =====================  Runtime code  =====================


uint256 integer_1;
uint256 integer_2;
array of struct string_1;

function integer_2() {
    return integer_2
}

function integer_1() {
    return integer_1
}

function string_1() {
    return string_1[0 len string_1.length].field_0
}

function _fallback() payable {
    revert
}

function function_2() {
    return (integer_1 + integer_2)
}

function function_1(uint256 arg1, uint256 arg2) {
    return ((2 * arg2) + arg1)
}

function function_3(string arg1) {
    string_1[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(string_1.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + string_1.length + 192 > idx + 32:
        mem[idx + 32] = string_1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit setNumber(Array(len=string_1.length, data=mem[ceil32(arg1.length) + 192 len string_1.length + (floor32(string_1.length - 1) + -string_1.length + 32 % 32)]));
    mem[ceil32(arg1.length) + 160] = uint256(string_1.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + string_1.length + 128 > idx:
        mem[idx + 32] = string_1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=string_1.length, data=mem[ceil32(arg1.length) + 160 len string_1.length])
}



}
