contract main {




// =====================  Runtime code  =====================


mapping of struct locks;

function locks(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return locks[arg1][arg2].field_0, locks[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    locks[msg.sender][address(arg1)].field_0 = arg2
    locks[msg.sender][address(arg1)].field_256 = arg3 + block.timestamp
}

function unlock(address arg1) payable {
    require calldata.size - 4 >= 32
    require locks[msg.sender][address(arg1)].field_0
    require locks[msg.sender][address(arg1)].field_256 <= block.timestamp
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, locks[msg.sender][address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    locks[msg.sender][address(arg1)].field_0 = 0
}



}
