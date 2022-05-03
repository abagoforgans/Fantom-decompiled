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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTeamAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamAddr = arg1
}

function sub_4fae6a5b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_36ae3d1cAddress = arg1
}

function setupRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, 'Invalid percent'
    if arg1 < 7500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x774d6f6e6579706f74207368617265206d757374206265206174206c65617374203735,
                    mem[199 len 29]
    sub_a753c636 = arg1
    teamShare = -sub_a753c636 + 10000
}

function removeLiquidityToToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_3249af49Address:
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
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_3249af49Address:
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
        revert with 0, 'Ownable: caller is not the owner'
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
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 26
            mem[_167 + 32] = 'SafeMath: division by zero'
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
            _181 = mem[64]
            mem[64] = mem[64] + 64
            mem[_181] = 30
            mem[_181 + 32] = 'SafeMath: subtraction overflow'
            if 0 > ext_call.return_data[0]:
                _183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_183 + idx + 68] = mem[_181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_183 + 68] = mem[_183 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _183 + -mem[64] + 100
            _190 = mem[64]
            mem[mem[64] + 36] = teamAddr
            mem[mem[64] + 68] = ext_call.return_data[0]
            _191 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_191 + 32] = mem[_191 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[64] = _190 + 164
            mem[_190 + 100] = 32
            mem[_190 + 132] = 'SafeBEP20: low-level call failed'
            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _208 = mem[_191]
            t = _191 + 32
            u = _190 + 164
            s = mem[_191]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_190 + floor32(mem[_191]) + 164] = mem[_191 + -(mem[_191] % 32) + floor32(mem[_191]) + 64 len mem[_191] % 32] or Mask(8 * -(mem[_191] % 32) + 32, -(8 * -(mem[_191] % 32) + 32) + 256, mem[_190 + floor32(mem[_191]) + 164])
            call address(ext_call.return_data[0]).mem[_190 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_190 + 168 len _208 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_190 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_190 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_190 + 168] = 32
                mem[_190 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_190 + idx + 232] = mem[_190 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _190 + -mem[64] + 264
            mem[64] = _190 + ceil32(return_data.size) + 165
            mem[_190 + 164] = return_data.size
            mem[_190 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_190 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_190 + ceil32(return_data.size) + 275 len 22]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_190 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_190 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[_190 + ceil32(return_data.size) + idx + 233] = mem[_190 + idx + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_190 + ceil32(return_data.size) + 233]
        require ext_call.return_data[0]
        if ext_call.return_data[0] * sub_a753c636 / ext_call.return_data[0] != sub_a753c636:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _168 = mem[64]
        mem[64] = mem[64] + 64
        mem[_168] = 26
        mem[_168 + 32] = 'SafeMath: division by zero'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_36ae3d1cAddress, ext_call.return_data[0] * sub_a753c636 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        require ext_code.size(sub_36ae3d1cAddress)
        call sub_36ae3d1cAddress.depositRewards(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0] * sub_a753c636 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + 64
        mem[_182] = 30
        mem[_182 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] * sub_a753c636 / 10000 > ext_call.return_data[0]:
            _186 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_186 + idx + 68] = mem[_182 + idx + 32]
                idx = idx + 32
                continue 
            mem[_186 + 68] = mem[_186 + 70 len 30]
            revert with memory
              from mem[64]
               len _186 + -mem[64] + 100
        _198 = mem[64]
        mem[mem[64] + 36] = teamAddr
        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_a753c636 / 10000)
        _199 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_199 + 32] = mem[_199 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _198 + 164
        mem[_198 + 100] = 32
        mem[_198 + 132] = 'SafeBEP20: low-level call failed'
        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _214 = mem[_199]
        t = _199 + 32
        u = _198 + 164
        s = mem[_199]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_198 + floor32(mem[_199]) + 164] = mem[_199 + -(mem[_199] % 32) + floor32(mem[_199]) + 64 len mem[_199] % 32] or Mask(8 * -(mem[_199] % 32) + 32, -(8 * -(mem[_199] % 32) + 32) + 256, mem[_198 + floor32(mem[_199]) + 164])
        call address(ext_call.return_data[0]).mem[_198 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_198 + 168 len _214 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_198 + 274 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_198 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_198 + 168] = 32
            mem[_198 + 200] = 32
            idx = 0
            while idx < 32:
                mem[_198 + idx + 232] = mem[_198 + idx + 132]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _198 + -mem[64] + 264
        mem[64] = _198 + ceil32(return_data.size) + 165
        mem[_198 + 164] = return_data.size
        mem[_198 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_198 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_198 + ceil32(return_data.size) + 275 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_198 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_198 + ceil32(return_data.size) + 169] = 32
        idx = 0
        while idx < 32:
            mem[_198 + ceil32(return_data.size) + idx + 233] = mem[_198 + idx + 132]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_198 + ceil32(return_data.size) + 233]
    require ext_code.size(sub_3249af49Address)
    staticcall sub_3249af49Address.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_3249af49Address)
        staticcall sub_3249af49Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
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
