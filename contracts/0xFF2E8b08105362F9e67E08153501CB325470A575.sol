contract main {




// =====================  Runtime code  =====================


address rarityAddress;
address stor1;
array of struct sub_616a97fa;

function sub_616a97fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_616a97fa.length
    return sub_616a97fa[arg1].field_0
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function sub_40579e09(?) payable {
    require ext_code.size(rarityAddress)
    call rarityAddress.summon(uint256 arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a3e82168(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Unauth'
    require ext_code.size(rarityAddress)
    call rarityAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    sub_616a97fa.length++
    sub_616a97fa[sub_616a97fa.length].field_0 = arg3
    return 0
}

function sub_9b6d1f0e(?) payable {
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = mem[96]
    while idx < 3:
        t = 1
        u = s
        while t <= 11:
            mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = t
            require ext_code.size(rarityAddress)
            call rarityAddress.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_616a97fa.length++
            mem[0] = 2
            sub_616a97fa[sub_616a97fa.length].field_0 = u
            if u == -1:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = u + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 11
        continue 
}

function sub_33393a2d(?) payable {
    mem[64] = (32 * sub_616a97fa.length) + 128
    mem[96] = sub_616a97fa.length
    if not sub_616a97fa.length:
        idx = 0
        while idx < sub_616a97fa.length:
            if idx >= mem[96]:
                revert with 0, 50
            _16 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _16
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp > mem[_19]:
                if idx >= mem[96]:
                    revert with 0, 50
                _22 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _22
                require ext_code.size(rarityAddress)
                call rarityAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = 2
        mem[128] = uint256(sub_616a97fa.field_0)
        idx = 128
        s = 0
        while (32 * sub_616a97fa.length) + 96 > idx:
            mem[idx + 32] = sub_616a97fa[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_616a97fa.length:
            if idx >= mem[96]:
                revert with 0, 50
            _38 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _38
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp > mem[_41]:
                if idx >= mem[96]:
                    revert with 0, 50
                _44 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _44
                require ext_code.size(rarityAddress)
                call rarityAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _44
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_75082c82(?) payable {
    mem[64] = (32 * sub_616a97fa.length) + 128
    mem[96] = sub_616a97fa.length
    if not sub_616a97fa.length:
        idx = 0
        while idx < sub_616a97fa.length:
            if idx >= mem[96]:
                revert with 0, 50
            _26 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _26
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _30 = mem[_29]
            mem[mem[64] + 4] = mem[_29]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _30
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _34 = mem[_33]
            if idx >= mem[96]:
                revert with 0, 50
            _36 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _36
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_39] >= _34:
                if idx >= mem[96]:
                    revert with 0, 50
                _42 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _42
                require ext_code.size(rarityAddress)
                call rarityAddress.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args _42
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = 2
        mem[128] = uint256(sub_616a97fa.field_0)
        idx = 128
        s = 0
        while (32 * sub_616a97fa.length) + 96 > idx:
            mem[idx + 32] = sub_616a97fa[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_616a97fa.length:
            if idx >= mem[96]:
                revert with 0, 50
            _68 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _68
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _72 = mem[_71]
            mem[mem[64] + 4] = mem[_71]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _72
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _76 = mem[_75]
            if idx >= mem[96]:
                revert with 0, 50
            _78 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _78
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_81] >= _76:
                if idx >= mem[96]:
                    revert with 0, 50
                _84 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _84
                require ext_code.size(rarityAddress)
                call rarityAddress.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args _84
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
