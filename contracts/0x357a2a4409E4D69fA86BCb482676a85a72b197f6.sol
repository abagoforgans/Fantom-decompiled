contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
address stor1;

function length() payable {
    return stor0.length
}

function _fallback() payable {
    revert
}

function sub_bc150002(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor1 = address(arg1)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return Mask(32, 224, sha3(0xfe6f6e455243373231526563656976656428616464726573732c616464726573732c75696e743235362c6279746573))
}

function sub_ab93d873(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    idx = 0
    while idx < arg1:
        require ext_code.size(stor1)
        staticcall stor1.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _13 = mem[_12]
        require mem[_12] == mem[_12]
        stor0.length++
        mem[0] = 0
        stor0[stor0.length] = _13
        require ext_code.size(stor1)
        call stor1.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg3)
        mem[mem[64] + 68] = _13
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg3), _13
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f516f88e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    require arg1 + arg2 <= stor0.length
    idx = arg1
    while idx < arg1 + arg2:
        if idx >= stor0.length:
            revert with 'NH{q', 50
        mem[0] = 0
        mem[mem[64] + 4] = stor0[idx]
        require ext_code.size(stor1)
        staticcall stor1.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args stor0[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == mem[_16]
        if mem[_16] > -86401:
            revert with 'NH{q', 17
        if block.timestamp >= mem[_16] + (24 * 3600):
            if idx >= stor0.length:
                revert with 'NH{q', 50
            mem[0] = 0
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor0[idx]
            require ext_code.size(stor1)
            call stor1.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args stor0[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}



}
