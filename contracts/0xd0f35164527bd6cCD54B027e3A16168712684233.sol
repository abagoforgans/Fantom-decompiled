contract main {




// =====================  Runtime code  =====================


address owner;
address WNATIVEAddress;

function owner() payable {
    return owner
}

function WNATIVE() payable {
    return WNATIVEAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_18f138d2(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[100] = this.address
    mem[132] = address(cd[68])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(cd[68])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[132]
        mem[ceil32(return_data.size) + 132] = 0
        mem[ceil32(return_data.size) + 164] = 160
        mem[ceil32(return_data.size) + 260] = ('cd', 4).length
        idx = 0
        s = ceil32(return_data.size) + 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 196] = this.address
        mem[ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(cd[68]))
        call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[132], 0, 160, address(this.address), block.timestamp, ('cd', 4).length, mem[ceil32(return_data.size) + 292 len 32 * ('cd', 4).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _296 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _300 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _300
        require return_data.size >= _296 + (32 * _300) + 32
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _300] = mem[ceil32(return_data.size) + _296 + 128 len 32 * _300]
        if _300 < 1:
            revert with 0, 17
        if _300 - 1 >= _300:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        require ext_code.size(WNATIVEAddress)
        staticcall WNATIVEAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _608 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_608] >= mem[(32 * _300 - 1) + (2 * ceil32(return_data.size)) + 128]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[(32 * _300 - 1) + (2 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        idx = 0
        s = mem[64] + 196
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0, 160, msg.sender, block.timestamp, ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _789 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_789] <= test266151307()
        require _789 + mem[_789] + 31 < _789 + return_data.size
        if mem[_789 + mem[_789]] > test266151307():
            revert with 0, 65
        if _789 + ceil32(return_data.size) + ceil32(32 * mem[_789 + mem[_789]]) + 1 > test266151307() or ceil32(32 * mem[_789 + mem[_789]]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[_789] + (32 * mem[_789 + mem[_789]]) + 32
        if mem[_789 + mem[_789]] < 1:
            revert with 0, 17
        if mem[_789 + mem[_789]] - 1 >= mem[_789 + mem[_789]]:
            revert with 0, 50
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(cd[68])
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(cd[68])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(cd[68])
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(cd[68]) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(('cd', 4)[0])):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(('cd', 4)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(cd[68]) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(('cd', 4)[0]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(cd[68]) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(cd[68]) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 264] = cd[132]
                mem[(2 * ceil32(return_data.size)) + 296] = 0
                mem[(2 * ceil32(return_data.size)) + 328] = 160
                mem[(2 * ceil32(return_data.size)) + 424] = ('cd', 4).length
                idx = 0
                s = (2 * ceil32(return_data.size)) + 456
                t = cd[4] + 36
                while idx < ('cd', 4).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 360] = this.address
                mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[132], 0, 160, address(this.address), block.timestamp, ('cd', 4).length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * ('cd', 4).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _594 = mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 291 < (2 * ceil32(return_data.size)) + return_data.size + 260
                _604 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]) + 261 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]) + 261
                mem[(4 * ceil32(return_data.size)) + 260] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]
                require return_data.size >= _594 + (32 * _604) + 32
                mem[(4 * ceil32(return_data.size)) + 292 len 32 * _604] = mem[(2 * ceil32(return_data.size)) + _594 + 292 len 32 * _604]
                if _604 < 1:
                    revert with 0, 17
                if _604 - 1 >= _604:
                    revert with 0, 50
                mem[mem[64] + 4] = this.address
                require ext_code.size(WNATIVEAddress)
                staticcall WNATIVEAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _829 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_829] >= mem[(32 * _604 - 1) + (4 * ceil32(return_data.size)) + 292]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[(32 * _604 - 1) + (4 * ceil32(return_data.size)) + 292]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 36).length
                idx = 0
                s = mem[64] + 196
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0, 160, msg.sender, block.timestamp, ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _939 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_939] <= test266151307()
                require _939 + mem[_939] + 31 < _939 + return_data.size
                if mem[_939 + mem[_939]] > test266151307():
                    revert with 0, 65
                if _939 + ceil32(return_data.size) + ceil32(32 * mem[_939 + mem[_939]]) + 1 > test266151307() or ceil32(32 * mem[_939 + mem[_939]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_939] + (32 * mem[_939 + mem[_939]]) + 32
                if mem[_939 + mem[_939]] < 1:
                    revert with 0, 17
                if mem[_939 + mem[_939]] - 1 >= mem[_939 + mem[_939]]:
                    revert with 0, 50
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(cd[68]) << 64 == bool(uint32(this.address), address(cd[68]) << 64)
                if not uint32(this.address), address(cd[68]) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 264] = cd[132]
                mem[(2 * ceil32(return_data.size)) + 296] = 0
                mem[(2 * ceil32(return_data.size)) + 328] = 160
                mem[(2 * ceil32(return_data.size)) + 424] = ('cd', 4).length
                idx = 0
                s = (2 * ceil32(return_data.size)) + 456
                t = cd[4] + 36
                while idx < ('cd', 4).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 360] = this.address
                mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[132], 0, 160, address(this.address), block.timestamp, ('cd', 4).length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * ('cd', 4).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _595 = mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 291 < (2 * ceil32(return_data.size)) + return_data.size + 260
                _605 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]) + 261 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]) + 261
                mem[(4 * ceil32(return_data.size)) + 260] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, cd[132]) >> 32 + 260]
                require return_data.size >= _595 + (32 * _605) + 32
                mem[(4 * ceil32(return_data.size)) + 292 len 32 * _605] = mem[(2 * ceil32(return_data.size)) + _595 + 292 len 32 * _605]
                if _605 < 1:
                    revert with 0, 17
                if _605 - 1 >= _605:
                    revert with 0, 50
                mem[mem[64] + 4] = this.address
                require ext_code.size(WNATIVEAddress)
                staticcall WNATIVEAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_830] >= mem[(32 * _605 - 1) + (4 * ceil32(return_data.size)) + 292]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[(32 * _605 - 1) + (4 * ceil32(return_data.size)) + 292]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 36).length
                idx = 0
                s = mem[64] + 196
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0, 160, msg.sender, block.timestamp, ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _940 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_940] <= test266151307()
                require _940 + mem[_940] + 31 < _940 + return_data.size
                if mem[_940 + mem[_940]] > test266151307():
                    revert with 0, 65
                if _940 + ceil32(return_data.size) + ceil32(32 * mem[_940 + mem[_940]]) + 1 > test266151307() or ceil32(32 * mem[_940 + mem[_940]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_940] + (32 * mem[_940 + mem[_940]]) + 32
                if mem[_940 + mem[_940]] < 1:
                    revert with 0, 17
                if mem[_940 + mem[_940]] - 1 >= mem[_940 + mem[_940]]:
                    revert with 0, 50
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = cd[132]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ('cd', 4).length
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                t = cd[4] + 36
                while idx < ('cd', 4).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[132], 0, 160, address(this.address), block.timestamp, ('cd', 4).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * ('cd', 4).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _596 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 292 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                _606 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]) + 262 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]) + 262
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _606
                require return_data.size >= _596 + (32 * _606) + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _606] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _596 + 293 len 32 * _606]
                if _606 < 1:
                    revert with 0, 17
                if _606 - 1 >= _606:
                    revert with 0, 50
                mem[mem[64] + 4] = this.address
                require ext_code.size(WNATIVEAddress)
                staticcall WNATIVEAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_831] >= mem[(32 * _606 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[(32 * _606 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 36).length
                idx = 0
                s = mem[64] + 196
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0, 160, msg.sender, block.timestamp, ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _941 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_941] <= test266151307()
                require _941 + mem[_941] + 31 < _941 + return_data.size
                if mem[_941 + mem[_941]] > test266151307():
                    revert with 0, 65
                if _941 + ceil32(return_data.size) + ceil32(32 * mem[_941 + mem[_941]]) + 1 > test266151307() or ceil32(32 * mem[_941 + mem[_941]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_941] + (32 * mem[_941 + mem[_941]]) + 32
                if mem[_941 + mem[_941]] < 1:
                    revert with 0, 17
                if mem[_941 + mem[_941]] - 1 >= mem[_941 + mem[_941]]:
                    revert with 0, 50
            else:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = cd[132]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ('cd', 4).length
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                t = cd[4] + 36
                while idx < ('cd', 4).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[132], 0, 160, address(this.address), block.timestamp, ('cd', 4).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * ('cd', 4).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _597 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 292 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                _607 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]) + 262 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, cd[132]) >> 32 + 261]) + 262
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _607
                require return_data.size >= _597 + (32 * _607) + 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _607] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _597 + 293 len 32 * _607]
                if _607 < 1:
                    revert with 0, 17
                if _607 - 1 >= _607:
                    revert with 0, 50
                mem[mem[64] + 4] = this.address
                require ext_code.size(WNATIVEAddress)
                staticcall WNATIVEAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _832 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_832] >= mem[(32 * _607 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[(32 * _607 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 36).length
                idx = 0
                s = mem[64] + 196
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0, 160, msg.sender, block.timestamp, ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _942 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_942] <= test266151307()
                require _942 + mem[_942] + 31 < _942 + return_data.size
                if mem[_942 + mem[_942]] > test266151307():
                    revert with 0, 65
                if _942 + ceil32(return_data.size) + ceil32(32 * mem[_942 + mem[_942]]) + 1 > test266151307() or ceil32(32 * mem[_942 + mem[_942]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_942] + (32 * mem[_942 + mem[_942]]) + 32
                if mem[_942 + mem[_942]] < 1:
                    revert with 0, 17
                if mem[_942 + mem[_942]] - 1 >= mem[_942 + mem[_942]]:
                    revert with 0, 50
}



}
