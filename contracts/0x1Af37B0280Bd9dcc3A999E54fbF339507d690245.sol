contract main {




// =====================  Runtime code  =====================


mapping of uint256 allowance;

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][0x818ddcd127ba8ef4b87b2f53e752a82c97e3f5f4] = arg2
    return 0
}



}
