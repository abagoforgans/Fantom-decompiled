contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 sub_4a2fc9e8;
mapping of uint256 stor2;
array of uint256 itemAt;
mapping of uint256 stor4;

function sub_4a2fc9e8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_4a2fc9e8.length:
        revert with 0, 'error parametars!'
    return sub_4a2fc9e8[arg1]
}

function itemAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= itemAt.length:
        revert with 0, 'error parametars!'
    return itemAt[arg1]
}

function itemCount() payable {
    return itemAt.length
}

function owner() payable {
    return owner
}

function sub_dfad1b51(?) payable {
    return sub_4a2fc9e8.length
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_29db79c5(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    require arg3 == uint32(arg3)
    require arg4 == uint32(arg4)
    require arg5 == uint32(arg5)
    require arg6 == uint32(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var109002 >= sub_4a2fc9e8.length:
    if var115001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    # nil
}

function sub_b2d33a78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d81b8fa(?) payable {
    mem[64] = 96
    if var35002 >= sub_4a2fc9e8.length:
    if var41001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    mem[0] = 1
    mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
    mem[var55003] = var55001
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[var61004 len 4] with:
         gas gas_remaining wei
        args mem[var61004 + 4 len var61005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_8649fe86(?) payable {
    mem[64] = 96
    if var43002 >= sub_4a2fc9e8.length:
    if var49001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    mem[0] = 1
    mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
    mem[var63003] = var63001
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[var69004 len 4] with:
         gas gas_remaining wei
        args mem[var69004 + 4 len var69005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_a0c87877(?) payable {
    mem[64] = 96
    if var45002 >= sub_4a2fc9e8.length:
    if var51001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    mem[0] = 1
    mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
    mem[var65003] = var65001
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.mem[var71004 len 4] with:
         gas gas_remaining wei
        args mem[var71004 + 4 len var71005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_05960ac9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -2:
        revert with 'NH{q', 17
    if arg1 + 1 and arg2 > -1 / arg1 + 1:
        revert with 'NH{q', 17
    if arg2 + (arg1 * arg2) > sub_4a2fc9e8.length:
        revert with 0, 'not batch!'
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 > -2:
        revert with 'NH{q', 17
    if arg1 + 1 and arg2 > -1 / arg1 + 1:
        revert with 'NH{q', 17
    if var116002 >= arg2 + (arg1 * arg2):
    if var122001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    # nil
}

function sub_1a34bd0d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -2:
        revert with 'NH{q', 17
    if arg1 + 1 and arg2 > -1 / arg1 + 1:
        revert with 'NH{q', 17
    if arg2 + (arg1 * arg2) > sub_4a2fc9e8.length:
        revert with 0, 'not batch!'
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 > -2:
        revert with 'NH{q', 17
    if arg1 + 1 and arg2 > -1 / arg1 + 1:
        revert with 'NH{q', 17
    if var118002 >= arg2 + (arg1 * arg2):
    if var124001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    # nil
}

function sub_616be646(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -2:
        revert with 'NH{q', 17
    if arg1 + 1 and arg2 > -1 / arg1 + 1:
        revert with 'NH{q', 17
    if arg2 + (arg1 * arg2) > sub_4a2fc9e8.length:
        revert with 0, 'not batch!'
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 > -2:
        revert with 'NH{q', 17
    if arg1 + 1 and arg2 > -1 / arg1 + 1:
        revert with 'NH{q', 17
    if var108002 >= arg2 + (arg1 * arg2):
    if var114001 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    # nil
}

function removeAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != owner:
            revert with 0, 'Only owner or owner's party!'
    if stor2[arg1]:
        if stor2[arg1] < 1:
            revert with 'NH{q', 17
        if sub_4a2fc9e8.length < 1:
            revert with 'NH{q', 17
        if sub_4a2fc9e8.length - 1 != stor2[arg1] - 1:
            if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                revert with 'NH{q', 50
            if stor2[arg1] - 1 >= sub_4a2fc9e8.length:
                revert with 'NH{q', 50
            sub_4a2fc9e8[stor2[arg1]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
            stor2[stor1[stor1.length]] = stor2[arg1]
        if not sub_4a2fc9e8.length:
            revert with 'NH{q', 49
        sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
        sub_4a2fc9e8.length--
        stor2[arg1] = 0
}

function sub_43b2c542(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[4])
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
             gas gas_remaining wei
            args address(cd[4]), address(this.address), cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 2
        if not stor2[cd[((32 * idx) + cd[36] + 36)]]:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length] = cd[((32 * idx) + cd[36] + 36)]
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = 2
            stor2[cd[((32 * idx) + cd[36] + 36)]] = sub_4a2fc9e8.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fb09ab3a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17 = mem[_16]
        require mem[_16] == mem[_16]
        mem[0] = mem[_16]
        mem[32] = 2
        if not stor2[mem[0]]:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length] = _17
            mem[0] = _17
            mem[32] = 2
            stor2[_17] = sub_4a2fc9e8.length
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d139b447(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint32(cd[36])
    require cd[68] == uint32(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    require cd[164] == uint32(cd[164])
    require cd[196] == uint32(cd[196])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = uint32(cd[36])
        mem[164] = uint32(cd[68])
        mem[196] = uint32(cd[100])
        mem[228] = uint32(cd[132])
        mem[260] = uint32(cd[164])
        mem[292] = uint32(cd[196])
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[36] << 224, cd[68] << 224, cd[100] << 224, cd[132] << 224, cd[164] << 224, uint32(cd[196])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e92526bf(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_12] == mem[_12 + 12 len 20]
        if mem[_12 + 12 len 20] == this.address:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 2
            if not stor2[cd[((32 * idx) + cd[4] + 36)]]:
                sub_4a2fc9e8.length++
                sub_4a2fc9e8[sub_4a2fc9e8.length] = cd[((32 * idx) + cd[4] + 36)]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 2
                stor2[cd[((32 * idx) + cd[4] + 36)]] = sub_4a2fc9e8.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_89706a0b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 1
    while idx < arg1:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17 = mem[_16]
        require mem[_16] == mem[_16]
        mem[0] = mem[_16]
        mem[32] = 2
        if not stor2[mem[0]]:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length] = _17
            mem[0] = _17
            mem[32] = 2
            stor2[_17] = sub_4a2fc9e8.length
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        if s + 1 != 12:
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 1
        s = 1
        continue 
}

function sub_3b76ded5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
             gas gas_remaining wei
            args address(cd[4]), address(this.address), cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[96] = 0xc624c6f200000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xc624c6f2 with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 2
        if not stor2[cd[((32 * idx) + cd[36] + 36)]]:
            sub_4a2fc9e8.length++
            sub_4a2fc9e8[sub_4a2fc9e8.length] = cd[((32 * idx) + cd[36] + 36)]
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = 2
            stor2[cd[((32 * idx) + cd[36] + 36)]] = sub_4a2fc9e8.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_01dd21ce(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > arg2:
        revert with 0, 'Error para!'
    if arg1 < 0:
        revert with 0, 'Error para!'
    if arg2 >= sub_4a2fc9e8.length:
        revert with 0, 'Error para!'
    idx = arg1
    while idx <= arg2:
        if idx >= sub_4a2fc9e8.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64] + 4] = sub_4a2fc9e8[idx]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x9cc7f708 with:
                gas gas_remaining wei
               args sub_4a2fc9e8[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        require mem[_22] == mem[_22]
        if mem[_22] > 0:
            if idx >= sub_4a2fc9e8.length:
                revert with 'NH{q', 50
            mem[0] = 1
            mem[mem[64] + 4] = sub_4a2fc9e8[idx]
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = _23
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x90dd2627 with:
                 gas gas_remaining wei
                args sub_4a2fc9e8[idx], arg3, _23
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e1579668(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > arg2:
        revert with 0, 'Error para!'
    if arg1 < 0:
        revert with 0, 'Error para!'
    if arg2 >= sub_4a2fc9e8.length:
        revert with 0, 'Error para!'
    idx = arg1
    while idx <= arg2:
        if idx >= sub_4a2fc9e8.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64] + 4] = sub_4a2fc9e8[idx]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x9cc7f708 with:
                gas gas_remaining wei
               args sub_4a2fc9e8[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        require mem[_22] == mem[_22]
        if mem[_22] > 0:
            if idx >= sub_4a2fc9e8.length:
                revert with 'NH{q', 50
            mem[0] = 1
            mem[mem[64] + 4] = sub_4a2fc9e8[idx]
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = _23
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x90dd2627 with:
                 gas gas_remaining wei
                args sub_4a2fc9e8[idx], arg3, _23
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6336d309(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[36])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), address(cd[36]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 4
        if stor4[cd[((32 * idx) + cd[4] + 36)]]:
            if stor4[cd[((32 * idx) + cd[4] + 36)]] < 1:
                revert with 'NH{q', 17
            if itemAt.length < 1:
                revert with 'NH{q', 17
            if itemAt.length - 1 != stor4[cd[((32 * idx) + cd[4] + 36)]] - 1:
                if itemAt.length - 1 >= itemAt.length:
                    revert with 'NH{q', 50
                if stor4[cd[((32 * idx) + cd[4] + 36)]] - 1 >= itemAt.length:
                    revert with 'NH{q', 50
                itemAt[stor4[cd[((32 * idx) + cd[4] + 36)]]] = itemAt[itemAt.length]
                stor4[stor3[stor3.length]] = stor4[cd[((32 * idx) + cd[4] + 36)]]
            if not itemAt.length:
                revert with 'NH{q', 49
            itemAt[itemAt.length] = 0
            itemAt.length--
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 4
            stor4[cd[((32 * idx) + cd[4] + 36)]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f9c77e05(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 1184
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 1188 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        s = 0
        t = 36
        u = mem[64] + 36
        while s < 36:
            require cd[t] == uint8(cd[t])
            mem[u] = uint8(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
        staticcall 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0xe67d77e8 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)], mem[mem[64] + 36 len 1152]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if not mem[_11]:
            revert with 0, 'Skills not valid!'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        s = 0
        t = 36
        u = mem[64] + 36
        while s < 36:
            require cd[t] == uint8(cd[t])
            mem[u] = uint8(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
        call 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0x54d3652a with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], mem[mem[64] + 36 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a2bc3e9d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[36])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), address(cd[36]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 2
        if stor2[cd[((32 * idx) + cd[4] + 36)]]:
            if stor2[cd[((32 * idx) + cd[4] + 36)]] < 1:
                revert with 'NH{q', 17
            if sub_4a2fc9e8.length < 1:
                revert with 'NH{q', 17
            if sub_4a2fc9e8.length - 1 != stor2[cd[((32 * idx) + cd[4] + 36)]] - 1:
                if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                    revert with 'NH{q', 50
                if stor2[cd[((32 * idx) + cd[4] + 36)]] - 1 >= sub_4a2fc9e8.length:
                    revert with 'NH{q', 50
                sub_4a2fc9e8[stor2[cd[((32 * idx) + cd[4] + 36)]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                stor2[stor1[stor1.length]] = stor2[cd[((32 * idx) + cd[4] + 36)]]
            if not sub_4a2fc9e8.length:
                revert with 'NH{q', 49
            sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
            sub_4a2fc9e8.length--
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 2
            stor2[cd[((32 * idx) + cd[4] + 36)]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a06ee7f7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xf41270836df4db1d28f7fd0935270e3a603e78cc, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = 1758709
        mem[mem[64] + 68] = 9999999
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xb866c8a4 with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], 1758709, 9999999
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == bool(mem[_17])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = 1758709
        mem[mem[64] + 68] = 9999999
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0xb866c8a4 with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], 1758709, 9999999
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f3c5d087(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == mem[_17 + 12 len 20]
        if mem[_17 + 12 len 20] != this.address:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 2
            if stor2[cd[((32 * idx) + cd[4] + 36)]]:
                if stor2[cd[((32 * idx) + cd[4] + 36)]] < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length - 1 != stor2[cd[((32 * idx) + cd[4] + 36)]] - 1:
                    if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    if stor2[cd[((32 * idx) + cd[4] + 36)]] - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    sub_4a2fc9e8[stor2[cd[((32 * idx) + cd[4] + 36)]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                    stor2[stor1[stor1.length]] = stor2[cd[((32 * idx) + cd[4] + 36)]]
                if not sub_4a2fc9e8.length:
                    revert with 'NH{q', 49
                sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                sub_4a2fc9e8.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 2
                stor2[cd[((32 * idx) + cd[4] + 36)]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1d2436ac(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint8(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 100] = cd[100]
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.simulate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)], cd[36] << 248, cd[68] << 248, cd[100]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_23] == bool(mem[_23])
        require mem[_23 + 32] == mem[_23 + 32]
        require mem[_23 + 64] == mem[_23 + 64]
        require mem[_23 + 96] == mem[_23 + 96]
        if mem[_23]:
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.next_item() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _31 = mem[_30]
            require mem[_30] == mem[_30]
            mem[0] = mem[_30]
            mem[32] = 4
            if not stor4[mem[0]]:
                itemAt.length++
                itemAt[itemAt.length] = _31
                mem[0] = _31
                mem[32] = 4
                stor4[_31] = itemAt.length
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint8(cd[36])
            mem[mem[64] + 68] = uint8(cd[68])
            mem[mem[64] + 100] = cd[100]
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[36] << 248, cd[68] << 248, cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
