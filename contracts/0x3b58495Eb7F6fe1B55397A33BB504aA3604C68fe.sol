contract main {




// =====================  Runtime code  =====================


#
#  - pause()
#
const funds = 0x388d523e2ed1759f70eba8a61b9f2e092a80893d


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
address lpPairAddress;
uint32 stor3;
address iTokenAddress;
uint256 stor3;
address comptrollerAddress;
array of address markets;
uint256 balanceOfPool;
array of address sub_fb226230;
address sub_21d16b8cAddress;
uint32 stor10;
address vaultAddress;
uint256 stor10;

function balanceOfPool() payable {
    return balanceOfPool
}

function sub_21d16b8c(?) payable {
    return sub_21d16b8cAddress
}

function sub_3c635ace(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function iToken() payable {
    return address(iTokenAddress)
}

function sub_44af87f6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor8.length
    require arg2 < uint256(stor8[arg1])
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor8', 8)) + arg2])
}

function lpPair() payable {
    return lpPairAddress
}

function paused() payable {
    return bool(stor0)
}

function comptroller() payable {
    return comptrollerAddress
}

function owner() payable {
    return owner
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1]
}

function sub_fb226230(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fb226230.length
    return sub_fb226230[arg1]
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function setHarvester(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function updateBalance() payable {
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOfPool = ext_call.return_data[0]
    return 0
}

function balanceOf() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOfPool + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (balanceOfPool + ext_call.return_data[0])
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOfPool = ext_call.return_data[0]
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(iTokenAddress))
    staticcall address(iTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpPairAddress)
    call lpPairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(iTokenAddress))
    staticcall address(iTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    mem[(2 * ceil32(return_data.size)) + 132] = address(iTokenAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = 0
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call lpPairAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    mem[100] = this.address
    mem[132] = address(iTokenAddress)
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(iTokenAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(iTokenAddress)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call lpPairAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor3) == bool(0, Mask(224, 0, stor3))
            if not 0, Mask(224, 0, stor3):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOfPool = ext_call.return_data[0]
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'not allowed'
    mem[132] = 64
    mem[164] = markets.length
    idx = 0
    s = 0
    t = 196
    while idx < markets.length:
        mem[t] = markets[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.claimComp(address arg1, address[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=markets.length, data=mem[196 len 32 * markets.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < stor8.length
    require 0 < uint256(stor8)
    mem[0] = sha3(8)
    mem[100] = this.address
    require ext_code.size(address(stor[sha3(('name', 'stor8', 8))]))
    staticcall address(stor[sha3(('name', 'stor8', 8))]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x388d523e2ed1759f70eba8a61b9f2e092a80893d)
    staticcall 0x388d523e2ed1759f70eba8a61b9f2e092a80893d.0xbcae25a4 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = 0x388d523e2ed1759f70eba8a61b9f2e092a80893d
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * ext_call.return_data[0] / 10000
    require ext_code.size(address(stor[sha3(('name', 'stor8', 8))]))
    call address(stor[sha3(('name', 'stor8', 8))]).0xa9059cbb with:
         gas gas_remaining wei
        args 0x388d523e2ed1759f70eba8a61b9f2e092a80893d, ext_call.return_data[0] * ext_call.return_data[0] / 10000
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < sub_fb226230.length:
        mem[0] = 7
        if sub_fb226230[idx] == 57005:
            idx = idx + 1
            continue 
        require idx < sub_fb226230.length
        require idx < stor8.length
        require 0 < uint256(stor8[idx])
        mem[0] = sha3(8) + idx
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor8[idx]))
        staticcall address(stor8[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _121 = mem[_119]
        require idx < stor8.length
        _124 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _121
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = uint256(stor8[idx])
        mem[0] = sha3(8) + idx
        s = 0
        t = sha3(mem[0])
        u = mem[64] + 196
        while s < uint256(stor8[idx]):
            mem[u] = address(stor[t])
            s = s + 1
            t = t + 1
            u = u + 32
            continue 
        mem[_124 + 100] = this.address
        mem[_124 + 132] = 999999999999999999999
        require ext_code.size(sub_fb226230[idx])
        call sub_fb226230[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _145 = mem[_144]
        require mem[_144] <= test266151307()
        require _144 + return_data.size > _144 + mem[_144] + 31
        _146 = mem[_144 + mem[_144]]
        require mem[_144 + mem[_144]] <= test266151307()
        require (32 * mem[_144 + mem[_144]]) + 32 >= 0 and _144 + ceil32(return_data.size) + (32 * mem[_144 + mem[_144]]) + 32 <= test266151307()
        mem[64] = _144 + ceil32(return_data.size) + (32 * mem[_144 + mem[_144]]) + 32
        mem[_144 + ceil32(return_data.size)] = _146
        require return_data.size >= _145 + (32 * _146) + 32
        t = _144 + _145 + 32
        u = _144 + ceil32(return_data.size) + 32
        s = 0
        while s < _146:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        t = _144 + _145 + (32 * _146) + 33
        continue 
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[mem[64] + 4] = this.address
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).mint(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_118]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _134 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    balanceOfPool = mem[_134]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    balanceOfPool = mem[_141]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
        if ext_call.return_data[0] <= arg1:
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor10)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call lpPairAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) << 288)
        else:
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor10)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call lpPairAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(iTokenAddress))
        staticcall address(iTokenAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(address(iTokenAddress))
        call address(iTokenAddress).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 132] = address(vaultAddress)
        if ext_call.return_data[0] <= arg1:
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor10)
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call lpPairAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) << 288)
        else:
            mem[(6 * ceil32(return_data.size)) + 164] = arg1
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor10)
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(lpPairAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call lpPairAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                if not mem[(6 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOfPool = ext_call.return_data[0]
    require ext_code.size(address(iTokenAddress))
    call address(iTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOfPool = ext_call.return_data[0]
}

function sub_31243315(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _120 = mem[64]
        require mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_120] = cd[(cd[36] + cd[s] + 36)]
        require calldata.size >= cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68
        u = 0
        v = cd[36] + cd[s] + 68
        w = _120 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _120
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'wrong parameters'
    sub_fb226230.length = mem[96]
    if not mem[96]:
        idx = 0
        while sub_fb226230.length > idx:
            sub_fb226230[idx] = 0
            idx = idx + 1
            continue 
        stor8.length = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = 8
        if not mem[(32 * ('cd', 4).length) + 128]:
            idx = 0
            while sha3(8) + stor8.length > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 7
                if sub_fb226230[idx]:
                    require idx < stor8.length
                    require 0 < uint256(stor8[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 7
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor8[idx]))
                    call address(stor8[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_294] == bool(mem[_294])
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * mem[(32 * ('cd', 4).length) + 128]) + 160 > idx:
                _227 = mem[idx]
                _228 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _228:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _227 + 32
                    while _227 + (32 * _228) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _228) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(8) + stor8.length > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 7
                if sub_fb226230[idx]:
                    require idx < stor8.length
                    require 0 < uint256(stor8[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 7
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor8[idx]))
                    call address(stor8[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_330] == bool(mem[_330])
                idx = idx + 1
                continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            sub_fb226230[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while sub_fb226230.length > idx:
            sub_fb226230[idx] = 0
            idx = idx + 1
            continue 
        stor8.length = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = 8
        if not mem[(32 * ('cd', 4).length) + 128]:
            idx = 0
            while sha3(8) + stor8.length > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 7
                if sub_fb226230[idx]:
                    require idx < stor8.length
                    require 0 < uint256(stor8[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 7
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor8[idx]))
                    call address(stor8[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_331] == bool(mem[_331])
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * mem[(32 * ('cd', 4).length) + 128]) + 160 > idx:
                _274 = mem[idx]
                _275 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _275:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _274 + 32
                    while _274 + (32 * _275) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _275) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(8) + stor8.length > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 7
                if sub_fb226230[idx]:
                    require idx < stor8.length
                    require 0 < uint256(stor8[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 7
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor8[idx]))
                    call address(stor8[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_345] == bool(mem[_345])
                idx = idx + 1
                continue 
}



}
