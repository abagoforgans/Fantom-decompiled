contract main {




// =====================  Runtime code  =====================


array of uint256 a;
uint256 b;

function a() payable {
    return a[0 len a.length]
}

function b() payable {
    return b
}

function _fallback() payable {
    revert
}

function storeSomething(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    b = arg1
}

function storeSomething(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    a[] = Array(len=arg1.length, data=arg1[all])
}



}
