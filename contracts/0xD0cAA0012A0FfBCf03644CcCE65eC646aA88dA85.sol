contract main {




// =====================  Runtime code  =====================


#
#  - distribute(uint256 arg1)
#
mapping of uint8 stor5;

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function setAuth(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[msg.sender]:
        revert with 0, 'Unauthorized address.'
    stor5[address(arg1)] = uint8(arg2)
}



}
