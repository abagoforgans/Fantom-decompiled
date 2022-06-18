contract main {




// =====================  Runtime code  =====================


#
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

function sub_335c197f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_6c6cf20cAddress:
        revert with 0, 'rarity contract need Initializes'
    if not sub_5e8d2e8eAddress:
        revert with 0, 'oloot contract need Initializes'
    require ext_code.size(sub_5e8d2e8eAddress)
    staticcall sub_5e8d2e8eAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_6c6cf20cAddress)
    staticcall sub_6c6cf20cAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_638f510e[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_6e40e2fd[stor4[arg1]] == arg1:
        sub_6e40e2fd[arg1] = 0
    sub_638f510e[arg1] = 0
}



}
