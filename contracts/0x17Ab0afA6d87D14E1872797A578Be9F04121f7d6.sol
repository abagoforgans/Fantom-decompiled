contract main {




// =====================  Runtime code  =====================


const BURN_ADDRESS = 57005


address owner;
uint256 sub_a753c636;
uint256 teamShare;
address sub_36ae3d1cAddress;
address routerAddress;
address sub_3249af49Address;
address teamAddr;

function sub_3249af49(?) payable {
    return sub_3249af49Address
}

function sub_36ae3d1c(?) payable {
    return sub_36ae3d1cAddress
}

function teamAddr() payable {
    return teamAddr
}

function owner() payable {
    return owner
}

function sub_a753c636(?) payable {
    return sub_a753c636
}

function teamShare() payable {
    return teamShare
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTeamAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    teamAddr = arg1
}

function sub_4fae6a5b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_36ae3d1cAddress = arg1
}

function setupRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    routerAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'Invalid percent'
    if arg1 < 7500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x724d6f6e6579706f74207368617265206d757374206265206174206c65617374203735,
                    mem[199 len 29]
    sub_a753c636 = arg1
    teamShare = -arg1 + 10000
}

function removeLiquidityToToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function swapToToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_3249af49Address == arg1:
        revert with 0, 'rads can only be burn'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg2
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 0
    mem[292] = this.address
    mem[324] = block.timestamp + 100
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp + 100, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function swapBalanceToToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_3249af49Address == arg1:
        revert with 0, 'rads can only be burn'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg2
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 0
    mem[292] = this.address
    mem[324] = block.timestamp + 100
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function distributeFee() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_36ae3d1cAddress)
    staticcall sub_36ae3d1cAddress.getRegisteredTokenLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(sub_36ae3d1cAddress)
        staticcall sub_36ae3d1cAddress.getRegisteredToken(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 26
            mem[_189 + 32] = 'SafeMath: division by zero'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_36ae3d1cAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            require ext_code.size(sub_36ae3d1cAddress)
            call sub_36ae3d1cAddress.depositRewards(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201] = 30
            mem[_201 + 32] = 'SafeMath: subtraction overflow'
            if 0 > ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _201 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _217 = mem[64]
            mem[mem[64] + 36] = teamAddr
            mem[mem[64] + 68] = ext_call.return_data[0]
            _218 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_218 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_218 + 36 len 28]
            mem[64] = _217 + 164
            mem[_217 + 100] = 32
            mem[_217 + 132] = 'SafeBEP20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _236 = mem[_218]
            t = _218 + 32
            u = _217 + 164
            s = mem[_218]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_217 + floor32(mem[_218]) + 164] = mem[_218 + -(mem[_218] % 32) + floor32(mem[_218]) + 64 len mem[_218] % 32] or Mask(8 * -(mem[_218] % 32) + 32, -(8 * -(mem[_218] % 32) + 32) + 256, mem[_217 + floor32(mem[_218]) + 164])
            call address(ext_call.return_data[0]).mem[_217 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_217 + 168 len _236 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_217 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_217 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_217 + 168] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _217 + 232] = mem[idx + _217 + 132]
                    idx = idx + 32
                    continue 
            else:
                mem[64] = _217 + ceil32(return_data.size) + 165
                mem[_217 + 164] = return_data.size
                mem[_217 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_217 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_217 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_217 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_217 + ceil32(return_data.size) + 169] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _217 + ceil32(return_data.size) + 233] = mem[idx + _217 + 132]
                    idx = idx + 32
                    continue 
            revert with 0, 32, 32, mem[_217 + 132]
        if sub_a753c636 * ext_call.return_data[0] / ext_call.return_data[0] != sub_a753c636:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _190 = mem[64]
        mem[64] = mem[64] + 64
        mem[_190] = 26
        mem[_190 + 32] = 'SafeMath: division by zero'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_36ae3d1cAddress, sub_a753c636 * ext_call.return_data[0] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        require ext_code.size(sub_36ae3d1cAddress)
        call sub_36ae3d1cAddress.depositRewards(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), sub_a753c636 * ext_call.return_data[0] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + 64
        mem[_202] = 30
        mem[_202 + 32] = 'SafeMath: subtraction overflow'
        if sub_a753c636 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _202 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _226 = mem[64]
        mem[mem[64] + 36] = teamAddr
        mem[mem[64] + 68] = ext_call.return_data[0] - (sub_a753c636 * ext_call.return_data[0] / 10000)
        _227 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_227 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_227 + 36 len 28]
        mem[64] = _226 + 164
        mem[_226 + 100] = 32
        mem[_226 + 132] = 'SafeBEP20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _242 = mem[_227]
        t = _227 + 32
        u = _226 + 164
        s = mem[_227]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_226 + floor32(mem[_227]) + 164] = mem[_227 + -(mem[_227] % 32) + floor32(mem[_227]) + 64 len mem[_227] % 32] or Mask(8 * -(mem[_227] % 32) + 32, -(8 * -(mem[_227] % 32) + 32) + 256, mem[_226 + floor32(mem[_227]) + 164])
        call address(ext_call.return_data[0]).mem[_226 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_226 + 168 len _242 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_226 + 274 len 22]
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[_226 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_226 + 168] = 32
            idx = 32
            while idx < 32:
                mem[idx + _226 + 232] = mem[idx + _226 + 132]
                idx = idx + 32
                continue 
        else:
            mem[64] = _226 + ceil32(return_data.size) + 165
            mem[_226 + 164] = return_data.size
            mem[_226 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_226 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_226 + ceil32(return_data.size) + 275 len 22]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_226 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_226 + ceil32(return_data.size) + 169] = 32
            idx = 32
            while idx < 32:
                mem[idx + _226 + ceil32(return_data.size) + 233] = mem[idx + _226 + 132]
                idx = idx + 32
                continue 
        revert with 0, 32, 32, mem[_226 + 132]
    require ext_code.size(sub_3249af49Address)
    staticcall sub_3249af49Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_3249af49Address)
        staticcall sub_3249af49Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3249af49Address)
        call sub_3249af49Address.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
