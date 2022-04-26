contract main {




// =====================  Runtime code  =====================


address owner;
address token0Address;

function token0() payable {
    return token0Address
}

function sub_6e0e0e80(?) payable {
    return owner
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_bd329898(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a025feb(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    call 0x5cc61a78f164885776aa610fb0fe1257df78e59b.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
