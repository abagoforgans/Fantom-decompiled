contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor99;

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[292 len 128] = getId(string arg1), 0, 0, 10, 'allowances', 0, mem[302 len 18]
    mem[392] = 0
    staticcall this.address.mem[292 len 4] with:
            gas gas_remaining wei
           args mem[296 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        stor[sha3(getId(string arg1), 0, 0, 10, 'allowances', 0)][msg.sender][address(arg1)] = arg2
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        stor[sha3(mem[388 len mem[356]])][msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}



}
