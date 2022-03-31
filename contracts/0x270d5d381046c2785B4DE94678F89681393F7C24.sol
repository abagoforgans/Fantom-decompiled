contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 sub_b8517dd8;
address owner;
address sub_7b6f1e07Address;
uint256 lastClaimedBlock;
uint256 sub_80793bc6;
uint256 c;
uint256 a;
uint256 sub_7a112c61;
uint256 sub_e2faea20;
uint8 stor10;

function a() payable {
    return a
}

function lastClaimedBlock() payable {
    return lastClaimedBlock
}

function sub_7a112c61(?) payable {
    return sub_7a112c61
}

function sub_7b6f1e07(?) payable {
    return sub_7b6f1e07Address
}

function sub_80793bc6(?) payable {
    return sub_80793bc6
}

function owner() payable {
    return owner
}

function sub_b8517dd8(?) payable {
    return sub_b8517dd8
}

function c() payable {
    return c
}

function sub_e2faea20(?) payable {
    return sub_e2faea20
}

function _fallback() payable {
    revert
}

function setDeprecated() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor10 = 0
}

function roles(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function sub_d9a4230f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_7a112c61 = arg1
}

function sub_dd352760(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_e2faea20 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_5b56dcbe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_7b6f1e07Address = address(arg1)
}

function mintAsset() payable {
    mem[64] = 96
    if not stor10:
        revert with 0, 'This contract is deprecated.'
    if not sub_e2faea20:
        revert with 'NH{q', 18
    if lastClaimedBlock / sub_e2faea20 and sub_7a112c61 > -1 / lastClaimedBlock / sub_e2faea20:
        revert with 'NH{q', 17
    if not sub_e2faea20:
        revert with 'NH{q', 18
    if block.number / sub_e2faea20 and sub_7a112c61 > -1 / block.number / sub_e2faea20:
        revert with 'NH{q', 17
    if not c:
        revert with 'NH{q', 18
    if a / c > -sub_80793bc6 - 1:
        revert with 'NH{q', 17
    if block.number / sub_e2faea20 * sub_7a112c61 > -(a / c) + -sub_80793bc6 - 1:
        revert with 'NH{q', 17
    if not (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6:
        revert with 'NH{q', 18
    if lastClaimedBlock / sub_e2faea20 * sub_7a112c61 > -(a / c) + -sub_80793bc6 - 1:
        revert with 'NH{q', 17
    if not (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6:
        revert with 'NH{q', 18
    if a / (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6 < a / (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6:
        revert with 'NH{q', 17
    if (a / (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6) - (a / (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6) and 10^18 > -1 / (a / (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6) - (a / (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6):
        revert with 'NH{q', 17
    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = (10^18 * a / (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6) - (10^18 * a / (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6)
    require ext_code.size(sub_7b6f1e07Address)
    call sub_7b6f1e07Address.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), (10^18 * a / (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6) - (10^18 * a / (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastClaimedBlock = block.number
    idx = 0
    while idx < sub_b8517dd8:
        mem[0] = idx
        mem[32] = 0
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_7b6f1e07Address)
        staticcall sub_7b6f1e07Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _21 = mem[_20]
        require mem[_20] == mem[_20]
        if mem[_20] / 100 and stor0[idx].field_256 > -1 / mem[_20] / 100:
            revert with 'NH{q', 17
        mem[0] = idx
        mem[32] = 0
        mem[mem[64] + 4] = stor0[idx].field_0
        mem[mem[64] + 36] = _21 / 100 * stor0[idx].field_256
        require ext_code.size(sub_7b6f1e07Address)
        call sub_7b6f1e07Address.0x39509351 with:
             gas gas_remaining wei
            args stor0[idx].field_0, _21 / 100 * stor0[idx].field_256
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        if not mem[_25]:
            revert with 0, 'error transfering grton token'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_540873ff(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'lengths do not match'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + (32 * ('cd', 4).length) + 160] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        continue 
    if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length != 100:
        revert with 0, 'total percent is not 100'
    sub_b8517dd8 = ('cd', 36).length
    idx = 0
    while idx < sub_b8517dd8:
        _51 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_51] = mem[(32 * idx) + 140 len 20]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        mem[_51 + 32] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        mem[0] = idx
        mem[32] = 0
        stor0[idx].field_0 = mem[_51 + 12 len 20]
        stor0[idx].field_256 = mem[_51 + 32]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
