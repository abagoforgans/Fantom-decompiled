contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function doFlashloan(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    call arg1.flashLoan(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 64, address(this.address), 1234
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg3:
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 
                        32,
                        46,
                        0xfe496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                        mem[274 len 18]
        require arg5.length >= 64
        require ext_code.size(arg2)
        call arg2.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, cd[(arg5 + 68)] + arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer fund back failed'
        revert with 0, '0'
    s = 0
    idx = arg3
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if s:
        mem[128 len s] = code.data[2300 len s]
    t = s
    idx = arg3
    while idx:
        require t - 1 < mem[96]
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 
                    32,
                    46,
                    0xfe496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                    mem[mem[64] + 114 len 18]
    require arg5.length >= 64
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, cd[(arg5 + 68)] + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer fund back failed'
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
    revert with 0, 32, mem[96], mem[mem[64] + 68 len floor32(mem[96]) + 32]
}



}
