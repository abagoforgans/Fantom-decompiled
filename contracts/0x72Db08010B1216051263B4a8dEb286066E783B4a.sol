contract main {




// =====================  Runtime code  =====================


uint256 myNumber;

function myNumber() payable {
    return myNumber
}

function _fallback() payable {
    revert
}

function add(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    myNumber += arg1
}



}
