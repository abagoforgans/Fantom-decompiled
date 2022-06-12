contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of struct sub_3d287686;
address rarityAddress;
address goldAddress;
address sub_201f35c6Address;
uint256 maxId;

function sub_201f35c6(?) payable {
    return sub_201f35c6Address
}

function sub_3d287686(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_3d287686[arg1].field_0
    return sub_3d287686[arg1][arg2].field_0
}

function owner() payable {
    return owner
}

function maxId() payable {
    return maxId
}

function gold() payable {
    return goldAddress
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

function setMaxId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxId = arg1
}

function removeAllTokens() payable {
    sub_3d287686[msg.sender].field_0 = 0
    idx = 0
    while sub_3d287686[msg.sender].field_0 > idx:
        sub_3d287686[msg.sender][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_ffadcb82(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rarityAddress = address(arg1)
    goldAddress = address(arg2)
    sub_201f35c6Address = address(arg3)
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

function sub_d449fda9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[32] = 101
        sub_3d287686[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 101)
        sub_3d287686[msg.sender][sub_3d287686[msg.sender].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e23e2881(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        call rarityAddress.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function batchTransfer(uint256[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    idx = 0
    while idx < arg1.length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg2), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4079d1f1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rarityAddress)
    call rarityAddress.summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3d287686[msg.sender].field_0++
    sub_3d287686[msg.sender][sub_3d287686[msg.sender].field_0].field_0 = ext_call.return_data[0]
    require ext_code.size(rarityAddress)
    call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_55dec455(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_3d287686[address(arg1)].field_0:
        mem[128] = sub_3d287686[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_3d287686[address(arg1)].field_0, data=mem[128 len 32 * sub_3d287686[address(arg1)].field_0])
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 160] = sub_3d287686[address(arg1)].field_0
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 192 len 32 * sub_3d287686[address(arg1)].field_0] = mem[128 len 32 * sub_3d287686[address(arg1)].field_0]
    return memory
      from (32 * sub_3d287686[address(arg1)].field_0) + 128
       len (96 * sub_3d287686[address(arg1)].field_0) + 64
}

function removeToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_3d287686[msg.sender].field_0:
        if idx >= sub_3d287686[msg.sender].field_0:
            revert with 0, 50
        if sub_3d287686[msg.sender][idx].field_0 == arg1:
            if sub_3d287686[msg.sender].field_0 < 1:
                revert with 0, 17
            if sub_3d287686[msg.sender].field_0 - 1 >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            if idx >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            sub_3d287686[msg.sender][idx].field_0 = sub_3d287686[msg.sender][sub_3d287686[msg.sender].field_0].field_0
            if not sub_3d287686[msg.sender].field_0:
                revert with 0, 49
            sub_3d287686[msg.sender][sub_3d287686[msg.sender].field_0].field_0 = 0
            sub_3d287686[msg.sender].field_0--
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 101
        idx = idx + 1
        continue 
}

function sub_c657c0f7(?) payable {
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = mem[96]
    while idx <= maxId:
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 101
        sub_3d287686[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 101)
        sub_3d287686[msg.sender][sub_3d287686[msg.sender].field_0].field_0 = s
        mem[ceil32(return_data.size) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = s
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function sub_7179e0c9(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = mem[96]
    while idx < arg2:
        require ext_code.size(rarityAddress)
        call rarityAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 101
        sub_3d287686[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 101)
        sub_3d287686[msg.sender][sub_3d287686[msg.sender].field_0].field_0 = s
        mem[ceil32(return_data.size) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = s
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function sub_9181a090(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(rarityAddress)
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_201f35c6Address)
        staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_13] > 0:
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_201f35c6Address)
            call sub_201f35c6Address.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_671b71a0(?) payable {
    if not sub_3d287686[msg.sender].field_0:
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            _11 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[msg.sender].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[msg.sender].field_0) + 132] = _11
            require ext_code.size(goldAddress)
            call goldAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_3d287686[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            _21 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[msg.sender].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[msg.sender].field_0) + 132] = _21
            require ext_code.size(goldAddress)
            call goldAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _21
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_988e2a03(?) payable {
    if not sub_3d287686[msg.sender].field_0:
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            _11 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[msg.sender].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[msg.sender].field_0) + 132] = _11
            require ext_code.size(goldAddress)
            call goldAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_3d287686[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            _21 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[msg.sender].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[msg.sender].field_0) + 132] = _21
            require ext_code.size(goldAddress)
            call goldAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _21
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_f0ee2af9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 24 * 3600 > !mem[_33]:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_33] + (24 * 3600) > block.timestamp:
                mem[(32 * idx) + 128] = 1
            else:
                mem[(32 * idx) + 128] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _22 = mem[64]
        mem[mem[64]] = 32
        _26 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _26:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _22 + (32 * _26) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 24 * 3600 > !mem[_35]:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        if mem[_35] + (24 * 3600) > block.timestamp:
            mem[(32 * idx) + 128] = 1
        else:
            mem[(32 * idx) + 128] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _27:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _24 + (32 * _27) + -mem[64] + 64
}

function sub_ef4ea50e(?) payable {
    mem[0] = msg.sender
    mem[32] = 101
    mem[64] = (32 * sub_3d287686[msg.sender].field_0) + 128
    mem[96] = sub_3d287686[msg.sender].field_0
    if not sub_3d287686[msg.sender].field_0:
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _17 = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(sub_201f35c6Address)
            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _17
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_22] > 0:
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _17
                require ext_code.size(sub_201f35c6Address)
                call sub_201f35c6Address.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _17
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(msg.sender, 101)
        mem[128] = sub_3d287686[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _39 = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(sub_201f35c6Address)
            staticcall sub_201f35c6Address.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _39
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_44] > 0:
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _39
                require ext_code.size(sub_201f35c6Address)
                call sub_201f35c6Address.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _39
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        rarityAddress = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
        goldAddress = 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2
        sub_201f35c6Address = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a
        maxId = 11
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            rarityAddress = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
            goldAddress = 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2
            sub_201f35c6Address = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a
            maxId = 11
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                rarityAddress = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                goldAddress = 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2
                sub_201f35c6Address = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a
                maxId = 11
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    rarityAddress = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                    goldAddress = 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2
                    sub_201f35c6Address = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a
                    maxId = 11
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        rarityAddress = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                        goldAddress = 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2
                        sub_201f35c6Address = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a
                        maxId = 11
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        rarityAddress = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                        goldAddress = 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2
                        sub_201f35c6Address = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a
                        maxId = 11
                        uint8(stor0.field_8) = 0
}

function sub_f90dafc9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = arg2
        s = 0
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_65] == mem[_65 + 12 len 20]
            if mem[_65 + 12 len 20] != address(arg1):
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.next_summoner() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx != mem[_78]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _88 = mem[64]
                mem[mem[64]] = 32
                _90 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _90:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _88 + (32 * _90) + -mem[64] + 64
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = idx
            if s == -1:
                revert with 0, 17
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx != mem[_86]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _98 = mem[64]
            mem[mem[64]] = 32
            _100 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _100:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _98 + (32 * _100) + -mem[64] + 64
        mem[mem[64]] = 32
        _60 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _60] = mem[ceil32(return_data.size) + 128 len 32 * _60]
        return 32, mem[mem[64] + 32 len (32 * _60) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = arg2
    s = 0
    while idx <= arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_67] == mem[_67 + 12 len 20]
        if mem[_67 + 12 len 20] != address(arg1):
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx != mem[_79]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _89 = mem[64]
            mem[mem[64]] = 32
            _92 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _92:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _89 + (32 * _92) + -mem[64] + 64
        if s >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * s) + ceil32(return_data.size) + 128] = idx
        if s == -1:
            revert with 0, 17
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx != mem[_87]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _99 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _101:
            mem[s] = mem[t]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _99 + (32 * _101) + -mem[64] + 64
    mem[mem[64]] = 32
    _62 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _62] = mem[ceil32(return_data.size) + 128 len 32 * _62]
    return 32, mem[mem[64] + 32 len (32 * _62) + 32]
}

function sub_5b1dc97f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 101
    mem[96] = sub_3d287686[address(arg1)].field_0
    if not sub_3d287686[address(arg1)].field_0:
        if sub_3d287686[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * sub_3d287686[address(arg1)].field_0) + 128] = sub_3d287686[address(arg1)].field_0
        mem[64] = (64 * sub_3d287686[address(arg1)].field_0) + 160
        if not sub_3d287686[address(arg1)].field_0:
            idx = 0
            while idx < sub_3d287686[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                _61 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args _61
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _73 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _76 = mem[_73]
                mem[mem[64] + 4] = mem[_73]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _76
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _84 = mem[_82]
                if idx >= mem[96]:
                    revert with 0, 50
                _88 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args _88
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _94 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_94] < _84:
                    if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
                else:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _66 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
            mem[mem[64] + 64 len 32 * _66] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _66]
            return 32, mem[mem[64] + 32 len (32 * _66) + 32]
        mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * sub_3d287686[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_3d287686[address(arg1)].field_0]
        idx = 0
        while idx < sub_3d287686[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _64 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _64
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _77 = mem[_75]
            mem[mem[64] + 4] = mem[_75]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _77
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _85 = mem[_83]
            if idx >= mem[96]:
                revert with 0, 50
            _90 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _90
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_95] < _85:
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
            else:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _67 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 64 len 32 * _67] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _67]
        return 32, mem[mem[64] + 32 len (32 * _67) + 32]
    mem[0] = sha3(address(arg1), 101)
    mem[128] = sub_3d287686[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_3d287686[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_3d287686[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_3d287686[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 128] = sub_3d287686[address(arg1)].field_0
    mem[64] = (64 * sub_3d287686[address(arg1)].field_0) + 160
    if not sub_3d287686[address(arg1)].field_0:
        idx = 0
        while idx < sub_3d287686[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _167 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _182 = mem[_179]
            mem[mem[64] + 4] = mem[_179]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _182
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _190 = mem[_188]
            if idx >= mem[96]:
                revert with 0, 50
            _194 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _194
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_200] < _190:
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
            else:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _172 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 64 len 32 * _172] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _172]
        return 32, mem[mem[64] + 32 len (32 * _172) + 32]
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * sub_3d287686[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_3d287686[address(arg1)].field_0]
    idx = 0
    while idx < sub_3d287686[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        _170 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.level(uint256 arg1) with:
                gas gas_remaining wei
               args _170
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _183 = mem[_181]
        mem[mem[64] + 4] = mem[_181]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _191 = mem[_189]
        if idx >= mem[96]:
            revert with 0, 50
        _196 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp(uint256 arg1) with:
                gas gas_remaining wei
               args _196
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_201] < _191:
            if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
        else:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _173 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
    mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
    mem[mem[64] + 64 len 32 * _173] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _173]
    return 32, mem[mem[64] + 32 len (32 * _173) + 32]
}



}
