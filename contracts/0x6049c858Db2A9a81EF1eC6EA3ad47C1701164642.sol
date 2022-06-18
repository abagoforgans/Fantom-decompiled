contract main {




// =====================  Runtime code  =====================


#
#  - sub_335c197f(?)
#  - addressToString(address arg1)
#  - sub_918c720b(?)
#  - sub_b1264136(?)
#
address stor0;
address sub_6c6cf20cAddress;
address sub_5e8d2e8eAddress;
mapping of uint256 sub_6e40e2fd;
mapping of uint256 sub_638f510e;

function sub_5e8d2e8e(?) payable {
    return sub_5e8d2e8eAddress
}

function sub_638f510e(?) payable {
    require calldata.size - 4 >= 32
    return sub_638f510e[arg1]
}

function sub_6c6cf20c(?) payable {
    return sub_6c6cf20cAddress
}

function sub_6e40e2fd(?) payable {
    require calldata.size - 4 >= 32
    return sub_6e40e2fd[arg1]
}

function _fallback() payable {
    revert
}

function sub_5a07b03a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'only owner can set !'
    sub_5e8d2e8eAddress = address(arg1)
}

function sub_ecaa72da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'only owner can set !'
    sub_6c6cf20cAddress = address(arg1)
}



}
