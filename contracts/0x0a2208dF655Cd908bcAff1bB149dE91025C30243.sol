contract main {




// =====================  Runtime code  =====================


#
#  - panic()
#  - pause()
#  - retireStrat()
#
const ice = 0x260b3e40c714ce8196465ec824cd8bb915081812

const swap = 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523

const stor = 0x388d523e2ed1759f70eba8a61b9f2e092a80893d

const masterchef = 0x733a33312fbffe22c86bf1204264f3fa06c7ab65

const WITHDRAWAL_MAX = 10000

const WITHDRAWAL_FEE = 10


uint8 stor0; offset 160
address owner;
address lpPairAddress;
array of address sub_fb226230;
uint256 pid;
uint32 stor5;
address vaultAddress;
uint256 stor5;
mapping of uint8 stor6;

function sub_3c635ace(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_44af87f6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor3.length
    require arg2 < uint256(stor3[arg1])
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor3', 3)) + arg2])
}

function lpPair() payable {
    return lpPairAddress
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function pid() payable {
    return pid
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHarvester(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfPool() payable {
    require ext_code.size(0x733a33312fbffe22c86bf1204264f3fa06c7ab65)
    staticcall 0x733a33312fbffe22c86bf1204264f3fa06c7ab65.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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
    if ext_call.return_data[0]:
        require ext_code.size(0x733a33312fbffe22c86bf1204264f3fa06c7ab65)
        call 0x733a33312fbffe22c86bf1204264f3fa06c7ab65.0x8dbdbe6d with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(0x733a33312fbffe22c86bf1204264f3fa06c7ab65)
    staticcall 0x733a33312fbffe22c86bf1204264f3fa06c7ab65.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    mem[100] = this.address
    mem[132] = 0x733a33312fbffe22c86bf1204264f3fa06c7ab65
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x733a33312fbffe22c86bf1204264f3fa06c7ab65
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = 0x733a33312fbffe22c86bf1204264f3fa06c7ab65
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = 0x733a33312fbffe22c86bf1204264f3fa
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), 0x733a33312fbffe22c86bf120, 0, -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call lpPairAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x733a33312fbffe22c86bf120, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x733a33312fbffe22c86bf120, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, 0x733a33312fbffe22c86bf1204264f3fa == bool(0, 0x733a33312fbffe22c86bf1204264f3fa)
            if not 0, 0x733a33312fbffe22c86bf1204264f3fa:
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
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[32] = 6
    if not stor6[msg.sender]:
        revert with 0, 'not allowed'
    mem[132] = this.address
    require ext_code.size(0x733a33312fbffe22c86bf1204264f3fa06c7ab65)
    call 0x733a33312fbffe22c86bf1204264f3fa06c7ab65.harvest(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < stor3.length
    require 0 < uint256(stor3)
    mem[0] = sha3(3)
    mem[100] = this.address
    require ext_code.size(address(stor[sha3(('name', 'stor3', 3))]))
    staticcall address(stor[sha3(('name', 'stor3', 3))]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x388d523e2ed1759f70eba8a61b9f2e092a80893d)
    staticcall 0x388d523e2ed1759f70eba8a61b9f2e092a80893d.defaultFeeBPS() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = 0x388d523e2ed1759f70eba8a61b9f2e092a80893d
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * ext_call.return_data[0] / 10000
    require ext_code.size(address(stor[sha3(('name', 'stor3', 3))]))
    call address(stor[sha3(('name', 'stor3', 3))]).0xa9059cbb with:
         gas gas_remaining wei
        args 0x388d523e2ed1759f70eba8a61b9f2e092a80893d, ext_call.return_data[0] * ext_call.return_data[0] / 10000
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(stor[sha3(('name', 'stor3', 3))]))
    staticcall address(stor[sha3(('name', 'stor3', 3))]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    while idx < sub_fb226230.length:
        mem[0] = 2
        if not sub_fb226230[idx]:
            idx = idx + 1
            continue 
        require idx < sub_fb226230.length
        require idx < stor3.length
        require 0 < uint256(stor3[idx])
        mem[0] = sha3(3) + idx
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor3[idx]))
        staticcall address(stor3[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_106]
        require idx < stor3.length
        _111 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _107
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = uint256(stor3[idx])
        mem[0] = sha3(3) + idx
        s = 0
        t = mem[64] + 196
        u = sha3(mem[0])
        while s < uint256(stor3[idx]):
            mem[t] = address(stor[u])
            s = s + 1
            t = t + 32
            u = u + 1
            continue 
        mem[_111 + 100] = this.address
        mem[_111 + 132] = 999999999999999999999
        require ext_code.size(sub_fb226230[idx])
        call sub_fb226230[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _170 = mem[_167]
        require mem[_167] <= test266151307()
        require _167 + return_data.size > _167 + mem[_167] + 31
        _171 = mem[_167 + mem[_167]]
        require mem[_167 + mem[_167]] <= test266151307()
        require (32 * mem[_167 + mem[_167]]) + 32 >= 0 and _167 + ceil32(return_data.size) + (32 * mem[_167 + mem[_167]]) + 32 <= test266151307()
        mem[64] = _167 + ceil32(return_data.size) + (32 * mem[_167 + mem[_167]]) + 32
        mem[_167 + ceil32(return_data.size)] = _171
        require return_data.size >= _170 + (32 * _171) + 32
        t = _167 + _170 + 32
        u = _167 + ceil32(return_data.size) + 32
        s = 0
        while s < _171:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        t = _167 + _170 + (32 * _171) + 33
        continue 
    require stor3.length - 1 < stor3.length
    require stor3.length - 1 < stor3.length
    require uint256(stor3[stor3.length]) - 1 < uint256(stor3[stor3.length])
    mem[0] = sha3(3) + stor3.length - 1
    mem[mem[64] + 4] = address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])])
    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.getTokenIndex(address arg1) with:
            gas gas_remaining wei
           args address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _105 = mem[_103]
    require mem[_103] == mem[_103 + 31 len 1]
    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
    staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.getNumberOfTokens() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _114 = mem[_112]
    require mem[_112] <= test266151307()
    _116 = mem[64]
    if not mem[_112]:
        mem[mem[64] + (32 * mem[_112]) + 36] = this.address
        require ext_code.size(address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]))
        staticcall address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64] + (32 * _114) + 32] = ext_call.return_data[0]
    else:
        mem[mem[64] + 32 len 32 * mem[_112]] = call.data[calldata.size len 32 * mem[_112]]
        mem[mem[64] + (32 * _114) + 36] = this.address
        require ext_code.size(address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]))
        staticcall address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_116 + (32 * _114) + 32] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _116 + (32 * _114) + ceil32(return_data.size) + 32
    require return_data.size >= 32
    require uint8(_105) < mem[_116]
    mem[(32 * uint8(_105)) + _116 + 32] = ext_call.return_data[0]
    mem[_116 + (32 * _114) + ceil32(return_data.size) + 32] = 0x4d49e87d00000000000000000000000000000000000000000000000000000000
    mem[_116 + (32 * _114) + ceil32(return_data.size) + 36] = 96
    mem[_116 + (32 * _114) + ceil32(return_data.size) + 132] = mem[_116]
    mem[_116 + (32 * _114) + ceil32(return_data.size) + 164 len 32 * mem[_116]] = mem[_116 + 32 len 32 * mem[_116]]
    require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
    call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523 with:
       funct ext_call.return_data[0 len 4]
         gas gas_remaining wei
        args 96, 0, block.timestamp + 1, mem[_116 + (32 * _114) + ceil32(return_data.size) + 132 len (32 * mem[_116]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x733a33312fbffe22c86bf1204264f3fa06c7ab65)
        call 0x733a33312fbffe22c86bf1204264f3fa06c7ab65.0x8dbdbe6d with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        _176 = mem[64]
        require mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_176] = cd[(cd[36] + cd[s] + 36)]
        require calldata.size >= cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68
        u = 0
        v = cd[36] + cd[s] + 68
        w = _176 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _176
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
        stor3.length = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = 3
        if not mem[(32 * ('cd', 4).length) + 128]:
            idx = 0
            while sha3(3) + stor3.length > idx + sha3(mem[0]):
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
                mem[0] = 2
                if sub_fb226230[idx]:
                    require idx < stor3.length
                    require 0 < uint256(stor3[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 2
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor3[idx]))
                    call address(stor3[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_451] == bool(mem[_451])
                idx = idx + 1
                continue 
            require stor3.length - 1 < stor3.length
            require stor3.length - 1 < stor3.length
            require uint256(stor3[stor3.length]) - 1 < uint256(stor3[stor3.length])
            mem[0] = sha3(3) + stor3.length - 1
            mem[mem[64] + 4] = 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523
            mem[mem[64] + 36] = -1
            require ext_code.size(address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]))
            call address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _437 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_437] == bool(mem[_437])
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * mem[(32 * ('cd', 4).length) + 128]) + 160 > idx:
                _339 = mem[idx]
                _340 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _340:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _339 + 32
                    while _339 + (32 * _340) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _340) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(3) + stor3.length > idx:
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
                mem[0] = 2
                if sub_fb226230[idx]:
                    require idx < stor3.length
                    require 0 < uint256(stor3[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 2
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor3[idx]))
                    call address(stor3[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_515] == bool(mem[_515])
                idx = idx + 1
                continue 
            require stor3.length - 1 < stor3.length
            require stor3.length - 1 < stor3.length
            require uint256(stor3[stor3.length]) - 1 < uint256(stor3[stor3.length])
            mem[0] = sha3(3) + stor3.length - 1
            mem[mem[64] + 4] = 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523
            mem[mem[64] + 36] = -1
            require ext_code.size(address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]))
            call address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _506 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_506] == bool(mem[_506])
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
        stor3.length = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = 3
        if not mem[(32 * ('cd', 4).length) + 128]:
            idx = 0
            while sha3(3) + stor3.length > idx + sha3(mem[0]):
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
                mem[0] = 2
                if sub_fb226230[idx]:
                    require idx < stor3.length
                    require 0 < uint256(stor3[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 2
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor3[idx]))
                    call address(stor3[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_517] == bool(mem[_517])
                idx = idx + 1
                continue 
            require stor3.length - 1 < stor3.length
            require stor3.length - 1 < stor3.length
            require uint256(stor3[stor3.length]) - 1 < uint256(stor3[stor3.length])
            mem[0] = sha3(3) + stor3.length - 1
            mem[mem[64] + 4] = 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523
            mem[mem[64] + 36] = -1
            require ext_code.size(address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]))
            call address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _508 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_508] == bool(mem[_508])
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * mem[(32 * ('cd', 4).length) + 128]) + 160 > idx:
                _414 = mem[idx]
                _415 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _415:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _414 + 32
                    while _414 + (32 * _415) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _415) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(3) + stor3.length > idx:
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
                mem[0] = 2
                if sub_fb226230[idx]:
                    require idx < stor3.length
                    require 0 < uint256(stor3[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 2
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor3[idx]))
                    call address(stor3[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_541] == bool(mem[_541])
                idx = idx + 1
                continue 
            require stor3.length - 1 < stor3.length
            require stor3.length - 1 < stor3.length
            require uint256(stor3[stor3.length]) - 1 < uint256(stor3[stor3.length])
            mem[0] = sha3(3) + stor3.length - 1
            mem[mem[64] + 4] = 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523
            mem[mem[64] + 36] = -1
            require ext_code.size(address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]))
            call address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_538] == bool(mem[_538])
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
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 30
                mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = 68
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor5)
                mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 324] = 32
                mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 456] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0) << 288)
            else:
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 30
                mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                if 10 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                mem[ceil32(return_data.size) + 292] = ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)
                mem[ceil32(return_data.size) + 224] = 68
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor5)
                mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 324] = 32
                mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000), 0
                mem[ceil32(return_data.size) + 456] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000), 0) << 288)
        else:
            if not arg1:
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 30
                mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                mem[ceil32(return_data.size) + 292] = arg1
                mem[ceil32(return_data.size) + 224] = 68
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor5)
                mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 324] = 32
                mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1, 0
                mem[ceil32(return_data.size) + 456] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1, 0) << 288)
            else:
                if 10 * arg1 / arg1 != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 160] = 30
                mem[ceil32(return_data.size) + 192] = 'SafeMath: subtraction overflow'
                if 10 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 260] = address(vaultAddress)
                mem[ceil32(return_data.size) + 292] = arg1 - (10 * arg1 / 10000)
                mem[ceil32(return_data.size) + 224] = 68
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 0, stor5)
                mem[ceil32(return_data.size) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 324] = 32
                mem[ceil32(return_data.size) + 356] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1 - (10 * arg1 / 10000), 0
                mem[ceil32(return_data.size) + 456] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1 - (10 * arg1 / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1 - (10 * arg1 / 10000), 0) << 288)
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
            mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                if not mem[ceil32(return_data.size) + 420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 96] = 30
        mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 196] = arg1 - ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = this.address
        require ext_code.size(0x733a33312fbffe22c86bf1204264f3fa06c7ab65)
        call 0x733a33312fbffe22c86bf1204264f3fa06c7ab65.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args pid, arg1 - ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 164] = this.address
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 288] = 68
                mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor5)
                mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 388] = 32
                mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0], 0) << 288)
            else:
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if 10 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)
                mem[(2 * ceil32(return_data.size)) + 288] = 68
                mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor5)
                mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 388] = 32
                mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000), 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000), 0) << 288)
        else:
            if not arg1:
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 356] = arg1
                mem[(2 * ceil32(return_data.size)) + 288] = 68
                mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor5)
                mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 388] = 32
                mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1, 0) << 288)
            else:
                if 10 * arg1 / arg1 != 10:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if 10 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(2 * ceil32(return_data.size)) + 324] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 356] = arg1 - (10 * arg1 / 10000)
                mem[(2 * ceil32(return_data.size)) + 288] = 68
                mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor5)
                mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 388] = 32
                mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                if not ext_code.size(lpPairAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1 - (10 * arg1 / 10000), 0
                mem[(2 * ceil32(return_data.size)) + 520] = 0
                call lpPairAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1 - (10 * arg1 / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), arg1 - (10 * arg1 / 10000), 0) << 288)
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
            mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
                if not mem[(2 * ceil32(return_data.size)) + 484]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
