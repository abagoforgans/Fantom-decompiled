contract main {




// =====================  Runtime code  =====================


uint256 myUint;

function myUint() payable {
    return myUint
}

function _fallback() payable {
    revert
}

function setMyUint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    myUint = arg1
}



}
