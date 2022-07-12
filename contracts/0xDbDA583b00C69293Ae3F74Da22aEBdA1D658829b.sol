contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of address sub_9f98ac28;
uint256 sub_f694cb56;

function owner() {
    return owner
}

function sub_9f98ac28(?) {
    require calldata.size - 4 >= 32
    return sub_9f98ac28[arg1]
}

function sub_f694cb56(?) {
    return sub_f694cb56
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9f98ac28[stor3] = arg1
    if 1 > !sub_f694cb56:
        revert with 0, 17
    sub_f694cb56++
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_31bbcd52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0 >= sub_f694cb56:
        revert with 0, 'Couldn't find pair.'
    require ext_code.size(sub_9f98ac28[0])
    staticcall sub_9f98ac28[0].factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = stor1
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor1, address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Couldn't find pair.'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == stor1:
        if not ext_call.return_data[0]:
            revert with 0, 50
        if 1 >= ext_call.return_data[0]:
            revert with 0, 50
        if 0 >= ext_call.return_data[0]:
            revert with 0, 50
        mem[128] = address(arg1)
        if 1 >= ext_call.return_data[0]:
            revert with 0, 50
        mem[160] = stor1
        if 3600 > !block.timestamp:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 100] = msg.value
        if ext_call.return_data[12 len 20] != stor1:
            mem[(7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
            mem[(7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(sub_9f98ac28[0])
            staticcall sub_9f98ac28[0].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args msg.value, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        else:
            mem[(7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(sub_9f98ac28[0])
            staticcall sub_9f98ac28[0].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args msg.value, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 132] = 128
        mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (8 * ceil32(return_data.size)) + 260
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 196] = block.timestamp + 3600
        require ext_code.size(sub_9f98ac28[0])
        call sub_9f98ac28[0].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=ext_call.return_data[0], data=mem[(8 * ceil32(return_data.size)) + 260 len 32 * ext_call.return_data[0]]), msg.sender, block.timestamp + 3600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 132] = 10^10
        mem[(8 * ceil32(return_data.size)) + 164] = 160
        mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (8 * ceil32(return_data.size)) + 292
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9f98ac28[0])
        call sub_9f98ac28[0].swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 10^10, 160, msg.sender, block.timestamp + 3600, ext_call.return_data[0], mem[(8 * ceil32(return_data.size)) + 292 len 32 * ext_call.return_data[0]]
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != stor1:
            revert with 0, 'Couldn't check, no WFTM pair.'
        if not ext_call.return_data[0]:
            revert with 0, 50
        if 1 >= ext_call.return_data[0]:
            revert with 0, 50
        if 0 >= ext_call.return_data[0]:
            revert with 0, 50
        mem[128] = address(arg1)
        if 1 >= ext_call.return_data[0]:
            revert with 0, 50
        mem[160] = stor1
        if 3600 > !block.timestamp:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 100] = msg.value
        if ext_call.return_data[12 len 20] != stor1:
            mem[(8 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
            mem[(8 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(sub_9f98ac28[0])
            staticcall sub_9f98ac28[0].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args msg.value, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        else:
            mem[(8 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(sub_9f98ac28[0])
            staticcall sub_9f98ac28[0].getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args msg.value, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 132] = 128
        mem[(10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (10 * ceil32(return_data.size)) + 260
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 196] = block.timestamp + 3600
        require ext_code.size(sub_9f98ac28[0])
        call sub_9f98ac28[0].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=ext_call.return_data[0], data=mem[(10 * ceil32(return_data.size)) + 260 len 32 * ext_call.return_data[0]]), msg.sender, block.timestamp + 3600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 132] = 10^10
        mem[(10 * ceil32(return_data.size)) + 164] = 160
        mem[(10 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (10 * ceil32(return_data.size)) + 292
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9f98ac28[0])
        call sub_9f98ac28[0].swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 10^10, 160, msg.sender, block.timestamp + 3600, ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 292 len 32 * ext_call.return_data[0]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
