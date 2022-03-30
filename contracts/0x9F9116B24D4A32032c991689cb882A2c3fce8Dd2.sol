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

function roles(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function sub_d9a4230f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_7a112c61 = arg1
}

function sub_dd352760(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_e2faea20 = arg1
}

function sub_5b56dcbe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_7b6f1e07Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function mintAsset() payable {
    require sub_e2faea20
    require c
    require (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6
    require (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6
    require ext_code.size(sub_7b6f1e07Address)
    call sub_7b6f1e07Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), (10^18 * a / (lastClaimedBlock / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6) - (10^18 * a / (block.number / sub_e2faea20 * sub_7a112c61) + (a / c) + sub_80793bc6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastClaimedBlock = block.number
    idx = 0
    while idx < sub_b8517dd8:
        require ext_code.size(sub_7b6f1e07Address)
        staticcall sub_7b6f1e07Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = idx
        mem[32] = 0
        mem[100] = stor0[idx].field_0
        mem[132] = ext_call.return_data[0] / 100 * stor0[idx].field_256
        require ext_code.size(sub_7b6f1e07Address)
        call sub_7b6f1e07Address.0x39509351 with:
             gas gas_remaining wei
            args stor0[idx].field_0, ext_call.return_data[0] / 100 * stor0[idx].field_256
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'error transfering grton token'
        idx = idx + 1
        continue 
}

function sub_540873ff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1.length != arg2.length:
        revert with 0, 'lengths do not match'
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length != 100:
        revert with 0, 'total percent is not 100'
    sub_b8517dd8 = arg2.length
    idx = 0
    while idx < sub_b8517dd8:
        _28 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_28] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        mem[_28 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = idx
        mem[32] = 0
        stor0[idx].field_0 = mem[_28 + 12 len 20]
        stor0[idx].field_256 = mem[_28 + 32]
        idx = idx + 1
        continue 
}



}
