contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_d486adccAddress;
array of struct sub_4a2fc9e8;
mapping of uint256 stor4;

function sub_4a2fc9e8(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_4a2fc9e8.length:
        revert with 0, 50
    return sub_4a2fc9e8[arg1].field_0
}

function owner() payable {
    return owner
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
}

function sub_dfad1b51(?) payable {
    return sub_4a2fc9e8.length
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
    call rarityAddress.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d81b8fa(?) payable {
    mem[64] = 96
    if var38002 >= sub_4a2fc9e8.length:
    if var44001 >= sub_4a2fc9e8.length:
        revert with 0, 50
    mem[0] = 3
    mem[100] = var48001
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args var48001
    mem[96] = ext_call.return_data[0]
    s = var48001
    s = var48008
    while ext_call.success:
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp > mem[_86]:
            if s >= sub_4a2fc9e8.length:
                revert with 0, 50
            mem[mem[64] + 4] = sub_4a2fc9e8[s].field_0
            require ext_code.size(rarityAddress)
            call rarityAddress.0xb00b52f1 with:
                 gas gas_remaining wei
                args sub_4a2fc9e8[s].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 0, 17
        if s + 1 >= sub_4a2fc9e8.length:
        mem[0] = 3
        mem[mem[64]] = 0xeed2502800000000000000000000000000000000000000000000000000000000
        mem[100] = sub_4a2fc9e8[s].field_512
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len -mem[64] + 128]
        mem[mem[64]] = ext_call.return_data[0]
        s = sub_4a2fc9e8[s].field_256
        s = s + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_e92526bf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _32 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args _32
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == mem[_35 + 12 len 20]
        if mem[_35 + 12 len 20] == this.address:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if not stor4[mem[(32 * idx) + 128]]:
                sub_4a2fc9e8.length++
                sub_4a2fc9e8[sub_4a2fc9e8.length].field_0 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                stor4[mem[(32 * idx) + 128]] = sub_4a2fc9e8.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_eb572312(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdfad1b51 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x4a2fc9e8 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _23
        require ext_code.size(rarityAddress)
        call rarityAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(arg1), this.address, _23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = _23
        mem[32] = 4
        if not stor4[_23]:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length].field_0 = _23
            mem[0] = _23
            mem[32] = 4
            stor4[_23] = sub_4a2fc9e8.length
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

function sub_40b9033e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _42 = mem[_41]
        mem[0] = mem[_41]
        mem[32] = 4
        if stor4[mem[0]]:
            if idx >= mem[96]:
                revert with 0, 50
            _48 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _48
            require ext_code.size(rarityAddress)
            call rarityAddress.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args _48
        else:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length].field_0 = _42
            mem[0] = _42
            mem[32] = 4
            stor4[_42] = sub_4a2fc9e8.length
            if idx >= mem[96]:
                revert with 0, 50
            _50 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _50
            require ext_code.size(rarityAddress)
            call rarityAddress.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args _50
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f3c5d087(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _42 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args _42
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_45] == mem[_45 + 12 len 20]
        if mem[_45 + 12 len 20] != this.address:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if stor4[mem[(32 * idx) + 128]]:
                if stor4[mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if sub_4a2fc9e8.length < 1:
                    revert with 0, 17
                if sub_4a2fc9e8.length - 1 != stor4[mem[(32 * idx) + 128]] - 1:
                    if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                        revert with 0, 50
                    if stor4[mem[(32 * idx) + 128]] - 1 >= sub_4a2fc9e8.length:
                        revert with 0, 50
                    sub_4a2fc9e8[stor4[mem[(32 * idx) + 128]]].field_0 = sub_4a2fc9e8[sub_4a2fc9e8.length].field_0
                    stor4[stor3[stor3.length].field_0] = stor4[mem[(32 * idx) + 128]]
                if not sub_4a2fc9e8.length:
                    revert with 0, 49
                sub_4a2fc9e8[sub_4a2fc9e8.length].field_0 = 0
                sub_4a2fc9e8.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                stor4[mem[(32 * idx) + 128]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8649fe86(?) payable {
    mem[64] = 96
    if var44002 >= sub_4a2fc9e8.length:
    if var50001 >= sub_4a2fc9e8.length:
        revert with 0, 50
    mem[0] = 3
    mem[96] = 0x5c58df200000000000000000000000000000000000000000000000000000000
    mem[100] = var56001
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.mem[var58003 len 4] with:
            gas gas_remaining wei
           args mem[var58003 + 4 len var58004 - 4]
    mem[var58005] = ext_call.return_data[0]
    if ext_call.success:
        mem[64] = ceil32(return_data.size) + 96
        require var62002 - var62001 >= 32
        _259 = mem[var64002]
        mem[ceil32(return_data.size) + 100] = mem[var64002]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _259
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        s = _259
        s = var64007
        t = var64008
        while ext_call.success:
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _285 = mem[_284]
            mem[mem[64] + 4] = s
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_288] <= _285:
                if t == -1:
                    revert with 0, 17
                if t + 1 >= sub_4a2fc9e8.length:
                mem[0] = 3
                mem[mem[64] + 4] = sub_4a2fc9e8[t].field_256
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_4a2fc9e8[t].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _299 = mem[_297]
                mem[mem[64]] = 0xaca10be300000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = _299
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                mem[mem[64]] = ext_call.return_data[0]
                s = _299
                s = sub_4a2fc9e8[t].field_256
                t = t + 1
                continue 
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_d486adccAddress)
            call sub_d486adccAddress.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if t == -1:
                revert with 0, 17
            if t + 1 >= sub_4a2fc9e8.length:
            mem[0] = 3
            mem[mem[64] + 4] = sub_4a2fc9e8[t].field_256
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_4a2fc9e8[t].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _303 = mem[_302]
            mem[mem[64]] = 0xaca10be300000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = _303
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
            mem[mem[64]] = ext_call.return_data[0]
            s = _303
            s = sub_4a2fc9e8[t].field_256
            t = t + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_4fae4111(?) payable {
    mem[64] = 96
    if msg.sender == owner:
        if var34002 >= sub_4a2fc9e8.length:
            sub_4a2fc9e8.length = 0
            idx = 0
            while sub_4a2fc9e8.length > idx:
                sub_4a2fc9e8[idx].field_0 = 0
                idx = idx + 1
                continue 
        if 0 >= sub_4a2fc9e8.length:
            revert with 0, 50
        mem[0] = 3
        mem[100] = var44001
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args var44001
        mem[96] = ext_call.return_data[0]
        s = var44001
        t = var44009
        while ext_call.success:
            _175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_175] == mem[_175 + 12 len 20]
            if mem[_175 + 12 len 20] == this.address:
                revert with 0, 'Contract still has adventurers'
            if t == -1:
                revert with 0, 17
            if t + 1 >= sub_4a2fc9e8.length:
                sub_4a2fc9e8.length = 0
                mem[0] = 3
                idx = sha3(mem[0])
                while sha3(3) + sub_4a2fc9e8.length > idx:
                    stor[idx] = 0
                    mem[mem[64]] = 0x6352211e00000000000000000000000000000000000000000000000000000000
                    mem[100] = idx + 1
                    require ext_code.size(rarityAddress)
                    staticcall rarityAddress.0x6352211e with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            if 0 >= sub_4a2fc9e8.length:
                revert with 0, 50
            mem[0] = 3
            mem[mem[64]] = 0x6352211e00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(sub_4a2fc9e8.field_0)
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.0x6352211e with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len -mem[64] + 128]
            mem[mem[64]] = ext_call.return_data[0]
            s = uint256(sub_4a2fc9e8.field_0)
            t = t + 1
            continue 
    else:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x8da5cb5b with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if ext_call.success:
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != owner:
                revert with 0, 'Only owner or owner party'
            if var43002 >= sub_4a2fc9e8.length:
                sub_4a2fc9e8.length = 0
                idx = 0
                while sub_4a2fc9e8.length > idx:
                    sub_4a2fc9e8[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            if 0 >= sub_4a2fc9e8.length:
                revert with 0, 50
            mem[0] = 3
            mem[ceil32(return_data.size) + 100] = var53001
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.0x6352211e with:
                    gas gas_remaining wei
                   args var53001
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            s = var53001
            t = var53009
            while ext_call.success:
                _176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_176] == mem[_176 + 12 len 20]
                if mem[_176 + 12 len 20] == this.address:
                    revert with 0, 'Contract still has adventurers'
                if t == -1:
                    revert with 0, 17
                if t + 1 >= sub_4a2fc9e8.length:
                    sub_4a2fc9e8.length = 0
                    mem[0] = 3
                    idx = sha3(mem[0])
                    while sha3(3) + sub_4a2fc9e8.length > idx:
                        stor[idx] = 0
                        mem[mem[64]] = 0x6352211e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = idx + 1
                        require ext_code.size(rarityAddress)
                        staticcall rarityAddress.0x6352211e with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                if 0 >= sub_4a2fc9e8.length:
                    revert with 0, 50
                mem[0] = 3
                mem[mem[64]] = 0x6352211e00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = uint256(sub_4a2fc9e8.field_0)
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.0x6352211e with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 128]
                mem[mem[64]] = ext_call.return_data[0]
                s = uint256(sub_4a2fc9e8.field_0)
                t = t + 1
                continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
