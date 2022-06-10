contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_d486adccAddress;
array of struct sub_994ee5ae;

function owner() payable {
    return owner
}

function sub_994ee5ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_994ee5ae[arg1].field_256
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_b2d33a78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rarityAddress)
    call rarityAddress.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8649fe86(?) payable {
    idx = 0
    while idx < sub_994ee5ae[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 3)
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = sub_994ee5ae[msg.sender][idx].field_0
        require ext_code.size(rarityAddress)
        call rarityAddress.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args sub_994ee5ae[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3d81b8fa(?) payable {
    idx = 0
    while idx < sub_994ee5ae[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 3)
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_994ee5ae[msg.sender][idx].field_0
        require ext_code.size(rarityAddress)
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_994ee5ae[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimGold() payable {
    idx = 0
    while idx < sub_994ee5ae[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 3)
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = sub_994ee5ae[msg.sender][idx].field_0
        require ext_code.size(sub_d486adccAddress)
        call sub_d486adccAddress.claim(uint256 arg1) with:
             gas gas_remaining wei
            args sub_994ee5ae[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4fae4111(?) payable {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != owner:
            revert with 0, 'Only owner or owner party'
    sub_994ee5ae[msg.sender].field_0 = 0
    idx = 0
    while sub_994ee5ae[msg.sender].field_0 > idx:
        sub_994ee5ae[msg.sender][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_994ee5ae[msg.sender].field_256 = 0
}

function sub_cd38d2da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_994ee5ae[address(arg1)].field_0:
        mem[128] = sub_994ee5ae[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_994ee5ae[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_994ee5ae[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_994ee5ae[address(arg1)].field_0, data=mem[128 len 32 * sub_994ee5ae[address(arg1)].field_0]), 
               sub_994ee5ae[address(arg1)].field_256
    mem[(32 * sub_994ee5ae[address(arg1)].field_0) + 128] = 64
    mem[(32 * sub_994ee5ae[address(arg1)].field_0) + 192] = sub_994ee5ae[address(arg1)].field_0
    mem[(32 * sub_994ee5ae[address(arg1)].field_0) + 224 len 32 * sub_994ee5ae[address(arg1)].field_0] = mem[128 len 32 * sub_994ee5ae[address(arg1)].field_0]
    mem[(32 * sub_994ee5ae[address(arg1)].field_0) + 160] = sub_994ee5ae[address(arg1)].field_256
    return memory
      from (32 * sub_994ee5ae[address(arg1)].field_0) + 128
       len (96 * sub_994ee5ae[address(arg1)].field_0) + 96
}

function sub_ff04b4fb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_994ee5ae[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(arg2)
        mem[164] = sub_994ee5ae[address(arg1)][idx].field_0
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), address(arg2), sub_994ee5ae[address(arg1)][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(this.address)
    call this.address.0x4fae4111 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c1a74f7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = msg.sender
    mem[32] = 3
    idx = 0
    while idx < sub_994ee5ae[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 3)
        mem[mem[64] + 4] = sub_994ee5ae[msg.sender][idx].field_0
        require ext_code.size(sub_d486adccAddress)
        staticcall sub_d486adccAddress.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args sub_994ee5ae[msg.sender][idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        if idx >= sub_994ee5ae[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 3)
        mem[mem[64] + 4] = sub_994ee5ae[msg.sender][idx].field_0
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _18
        require ext_code.size(sub_d486adccAddress)
        call sub_d486adccAddress.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_994ee5ae[msg.sender][idx].field_0, arg1, _18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == bool(mem[_22])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_40b9033e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 3
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _28 = mem[_27]
        sub_994ee5ae[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 3)
        sub_994ee5ae[msg.sender][sub_994ee5ae[msg.sender].field_0].field_0 = _28
        if idx >= mem[96]:
            revert with 0, 50
        _31 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _31
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args _31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 1 > !sub_994ee5ae[msg.sender].field_256:
            revert with 0, 17
        sub_994ee5ae[msg.sender].field_256++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_45c4fbef(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0xcd38d2da00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xcd38d2da with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _7 = mem[96 len 4], address(arg2) << 64
    require mem[96 len 4], address(arg2) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg2) << 64 + 127
    _8 = mem[mem[96 len 4], address(arg2) << 64 + 96]
    if mem[mem[96 len 4], address(arg2) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg2) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _8
    require _7 + (32 * _8) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _8] = mem[_7 + 128 len 32 * _8]
    _21 = 0, mem[132 len 28]
    idx = 0
    while idx < _21:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _35 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _35
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), _35
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        sub_994ee5ae[address(arg2)].field_0++
        mem[0] = sha3(address(arg2), 3)
        sub_994ee5ae[address(arg2)][sub_994ee5ae[address(arg2)].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if 1 > !sub_994ee5ae[address(arg2)].field_256:
            revert with 0, 17
        sub_994ee5ae[address(arg2)].field_256++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0x4fae4111 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
