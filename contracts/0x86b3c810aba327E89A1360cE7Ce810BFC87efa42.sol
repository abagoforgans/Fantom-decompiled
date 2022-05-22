contract main {




// =====================  Runtime code  =====================


mapping of uint256 map;

function map(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return map[arg1]
}

function _fallback() payable {
    revert
}

function set(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    map[arg1] = arg2
}



}
