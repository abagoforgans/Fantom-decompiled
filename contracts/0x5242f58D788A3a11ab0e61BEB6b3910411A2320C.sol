contract main {




// =====================  Runtime code  =====================


const sub_4d86931c(?) = 0xf43523e83e1e526c4b1a65250f4d5ebacf60f815

const sub_c0e25263(?) = 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1

const sub_e26afe33(?) = 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address stor0; offset 16
uint256 stor0; offset 8
address stor1;
array of uint256 sub_fd6236c7;

function count() payable {
    require address(stor0.field_16) == msg.sender
    return sub_fd6236c7.length
}

function sub_fd6236c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_fd6236c7.length
    return sub_fd6236c7[arg1]
}

function sub_169f66f5(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_6fe040fe(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require address(stor0.field_16) == msg.sender
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if var81002 >= arg1 + arg2:
    if var83001 >= sub_fd6236c7.length:
        revert with 'NH{q', 50
    mem[0] = 2
    mem[96] = 0xeed2502800000000000000000000000000000000000000000000000000000000
    mem[var93003] = var93001
    require ext_code.size(stor1)
    staticcall stor1.mem[var99003 len 4] with:
            gas gas_remaining wei
           args mem[var99003 + 4 len var99004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var103002 - var103001 >= 32
    # nil
}

function initialize() payable {
    if uint8(stor0.field_8):
        address(stor0.field_16) = 0x954f1d97ae9c4a27d012e70ccaafde29822b3f2b
        stor1 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            address(stor0.field_16) = 0x954f1d97ae9c4a27d012e70ccaafde29822b3f2b
            stor1 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            address(stor0.field_16) = 0x954f1d97ae9c4a27d012e70ccaafde29822b3f2b
            stor1 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
            Mask(248, 0, stor0.field_8) = 0
}

function adventure_all() payable {
    mem[64] = 96
    require address(stor0.field_16) == msg.sender
    idx = 0
    while idx < sub_fd6236c7.length:
        mem[0] = 2
        mem[mem[64] + 4] = sub_fd6236c7[idx]
        require ext_code.size(stor1)
        staticcall stor1.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args sub_fd6236c7[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_12] == mem[_12]
        if block.timestamp > mem[_12]:
            if idx >= sub_fd6236c7.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            require ext_code.size(stor1)
            call stor1.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_fd6236c7[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_9f8e5661(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require address(stor0.field_16) == msg.sender
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 >= sub_fd6236c7.length:
        idx = arg1
        while idx < sub_fd6236c7.length:
            mem[0] = 2
            mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = sub_fd6236c7[idx]
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), sub_fd6236c7[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        idx = arg1
        while idx < arg1 + arg2:
            if idx >= sub_fd6236c7.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = sub_fd6236c7[idx]
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), sub_fd6236c7[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_6b58e49c(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require address(stor0.field_16) == msg.sender
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg2 + arg3 >= sub_fd6236c7.length:
        idx = arg2
        while idx < sub_fd6236c7.length:
            mem[0] = 2
            mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[100] = address(arg4)
            mem[132] = address(arg5)
            mem[164] = sub_fd6236c7[idx]
            require ext_code.size(address(arg1))
            call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg4), address(arg5), sub_fd6236c7[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if arg2 > -arg3 - 1:
            revert with 'NH{q', 17
        idx = arg2
        while idx < arg2 + arg3:
            if idx >= sub_fd6236c7.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[100] = address(arg4)
            mem[132] = address(arg5)
            mem[164] = sub_fd6236c7[idx]
            require ext_code.size(address(arg1))
            call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg4), address(arg5), sub_fd6236c7[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function mint(uint256[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + 98
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require address(stor0.field_16) == msg.sender
    if arg1.length != arg2.length:
        revert with 0, 'LENGTH'
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = 0xa22cb46500000000000000000000000000000000000000000000000000000000
    mem[floor32(arg1.length) + floor32(arg2.length) + 102] = address(stor0.field_16)
    mem[floor32(arg1.length) + floor32(arg2.length) + 134] = 1
    require ext_code.size(stor1)
    call stor1.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(stor0.field_0), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if var122003 >= mem[(32 * idx) + floor32(arg1.length) + 129]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[floor32(arg1.length) + floor32(arg2.length) + 98] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.mem[var126004 len 4] with:
             gas gas_remaining wei
            args mem[var126004 + 4 len var126005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var130002 - var130001 >= 32
        require var140002 == var140001
        sub_fd6236c7.length++
        sub_fd6236c7[sub_fd6236c7.length] = var148001
        if idx >= arg1.length:
            revert with 'NH{q', 50
        # nil
}

function sub_a9d1fa08(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require address(stor0.field_16) == msg.sender
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 >= sub_fd6236c7.length:
        idx = arg1
        while idx < sub_fd6236c7.length:
            mem[0] = 2
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            require ext_code.size(0xf43523e83e1e526c4b1a65250f4d5ebacf60f815)
            staticcall 0xf43523e83e1e526c4b1a65250f4d5ebacf60f815.0xae07b378 with:
                    gas gas_remaining wei
                   args sub_fd6236c7[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == mem[_28]
            if mem[_28] != 1:
                if idx >= sub_fd6236c7.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = sub_fd6236c7[idx]
                require ext_code.size(0xf43523e83e1e526c4b1a65250f4d5ebacf60f815)
                call 0xf43523e83e1e526c4b1a65250f4d5ebacf60f815.0xce0a32ce with:
                     gas gas_remaining wei
                    args sub_fd6236c7[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_38] == bool(mem[_38])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        idx = arg1
        while idx < arg1 + arg2:
            if idx >= sub_fd6236c7.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            require ext_code.size(0xf43523e83e1e526c4b1a65250f4d5ebacf60f815)
            staticcall 0xf43523e83e1e526c4b1a65250f4d5ebacf60f815.0xae07b378 with:
                    gas gas_remaining wei
                   args sub_fd6236c7[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == mem[_27]
            if mem[_27] != 1:
                if idx >= sub_fd6236c7.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = sub_fd6236c7[idx]
                require ext_code.size(0xf43523e83e1e526c4b1a65250f4d5ebacf60f815)
                call 0xf43523e83e1e526c4b1a65250f4d5ebacf60f815.0xce0a32ce with:
                     gas gas_remaining wei
                    args sub_fd6236c7[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _37 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_37] == bool(mem[_37])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_068ebe01(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require address(stor0.field_16) == msg.sender
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 >= sub_fd6236c7.length:
        idx = arg1
        while idx < sub_fd6236c7.length:
            mem[0] = 2
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_fd6236c7[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == mem[_28]
            if block.timestamp > mem[_28]:
                if idx >= sub_fd6236c7.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = sub_fd6236c7[idx]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_fd6236c7[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_38] == mem[_38]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        idx = arg1
        while idx < arg1 + arg2:
            if idx >= sub_fd6236c7.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_fd6236c7[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == mem[_27]
            if block.timestamp > mem[_27]:
                if idx >= sub_fd6236c7.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = sub_fd6236c7[idx]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_fd6236c7[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _37 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_37] == mem[_37]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_02f032f4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == uint32(arg3)
    require arg4 == uint32(arg4)
    require arg5 == uint32(arg5)
    require arg6 == uint32(arg6)
    require arg7 == uint32(arg7)
    require arg8 == uint32(arg8)
    require address(stor0.field_16) == msg.sender
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 >= sub_fd6236c7.length:
        idx = arg1
        while idx < sub_fd6236c7.length:
            mem[0] = 2
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.character_created(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_fd6236c7[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_24] == bool(mem[_24])
            if not mem[_24]:
                if idx >= sub_fd6236c7.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_fd6236c7[idx]
                mem[mem[64] + 36] = uint32(arg3)
                mem[mem[64] + 68] = uint32(arg4)
                mem[mem[64] + 100] = uint32(arg5)
                mem[mem[64] + 132] = uint32(arg6)
                mem[mem[64] + 164] = uint32(arg7)
                mem[mem[64] + 196] = uint32(arg8)
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args sub_fd6236c7[idx], arg3 << 224, arg4 << 224, arg5 << 224, arg6 << 224, arg7 << 224, uint32(arg8)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        idx = arg1
        while idx < arg1 + arg2:
            if idx >= sub_fd6236c7.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.character_created(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_fd6236c7[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_23] == bool(mem[_23])
            if not mem[_23]:
                if idx >= sub_fd6236c7.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_fd6236c7[idx]
                mem[mem[64] + 36] = uint32(arg3)
                mem[mem[64] + 68] = uint32(arg4)
                mem[mem[64] + 100] = uint32(arg5)
                mem[mem[64] + 132] = uint32(arg6)
                mem[mem[64] + 164] = uint32(arg7)
                mem[mem[64] + 196] = uint32(arg8)
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args sub_fd6236c7[idx], arg3 << 224, arg4 << 224, arg5 << 224, arg6 << 224, arg7 << 224, uint32(arg8)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
