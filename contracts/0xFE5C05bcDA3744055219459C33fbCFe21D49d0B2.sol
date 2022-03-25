contract main {




// =====================  Runtime code  =====================


uint256 myUint;
uint8 myBool;

function myUint() payable {
    return myUint
}

function myBool() payable {
    return bool(myBool)
}

function _fallback() payable {
    revert
}

function setMyUint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    myUint = arg1
}

function setMyBool(bool arg1) payable {
    require calldata.size - 4 >= 32
    myBool = uint8(arg1)
}



}
