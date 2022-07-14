contract main {




// =====================  Runtime code  =====================


#
#  - updateStake(uint256 arg1)
#
address stor1;

function _fallback() payable {
    revert
}

function liquidityAddress() payable {
    mem[292 len 128] = getId(string arg1), 0, 0, 5, 'farms', 0, mem[297 len 23]
    mem[392] = 0
    staticcall this.address.mem[292 len 4] with:
            gas gas_remaining wei
           args mem[296 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        return stor[sha3(getId(string arg1), 0, 0, 5, 'farms', 0)]
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'getMappingId staticdelegate'
    mem[ceil32(return_data.size) + 293] = stor[sha3(mem[388 len mem[356]])]
    return memory
      from ceil32(return_data.size) + 293
       len 32
}

function changeLiquidityAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'changeLiquidityAddress'
    mem[292 len 128] = getId(string arg1), 0, 0, 5, 'farms', 0, mem[297 len 23]
    mem[392] = 0
    staticcall this.address.mem[292 len 4] with:
            gas gas_remaining wei
           args mem[296 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        stor[sha3(getId(string arg1), 0, 0, 5, 'farms', 0)] = arg1
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'getMappingId staticdelegate'
        stor[sha3(mem[388 len mem[356]])] = arg1
}



}
