contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, '!initialized'
    stor0 = arg1
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.0xa22cb465 with:
         gas gas_remaining wei
        args stor0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9f249662(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_13217f0e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3a091650(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f6bf2e66(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_33dc76f9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ea1f7eb4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = address(cd[36])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(cd[36]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_165c1657(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = cd[68]
        mem[mem[64] + 68] = cd[36]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[68], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f141d916(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = cd[68]
        mem[mem[64] + 68] = cd[36]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[68], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f244a8d0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 1184
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 1188 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < ('cd', 4).length:
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

function sub_645bee80(?) payable {
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

function sub_72e67c47(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, '!len'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = cd[68]
        mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[68], cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_93e3648e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, '!length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = cd[68]
        mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[68], cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1ec3cc37(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (1152 * ('cd', 36).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '!owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, '!len'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        s = 0
        t = (1152 * idx) + cd[36] + 36
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

function craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.simulate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args 0, uint32(arg1), arg2 << 248, arg3 << 248, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[0]:
        revert with 0, '!luck'
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.0x65f1bfc4 with:
         gas gas_remaining wei
        args arg1, arg2 << 248, arg3 << 248, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.next_item() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function sub_923ca674(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, '!len'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        _12 = mem[64]
        mem[64] = mem[64] + 192
        mem[_12 len 192] = call.data[(192 * idx) + cd[36] + 36 len 192]
        mem[_12 + 192] = 0
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = uint32(call.data[(192 * idx) + cd[36] + 36])
        mem[mem[64] + 68] = uint32(call.data[(192 * idx) + cd[36] + 68])
        mem[mem[64] + 100] = uint32(call.data[(192 * idx) + cd[36] + 100])
        mem[mem[64] + 132] = uint32(call.data[(192 * idx) + cd[36] + 132])
        mem[mem[64] + 164] = uint32(call.data[(192 * idx) + cd[36] + 164])
        mem[mem[64] + 196] = uint32(call.data[(192 * idx) + cd[36] + 196])
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], call.data[(192 * idx) + cd[36] + 36] << 224, call.data[(192 * idx) + cd[36] + 68] << 224, call.data[(192 * idx) + cd[36] + 100] << 224, call.data[(192 * idx) + cd[36] + 132] << 224, call.data[(192 * idx) + cd[36] + 164] << 224, uint32(call.data[(192 * idx) + cd[36] + 196])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_37115c66(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.SUMMMONER_ID() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = ext_call.return_data[0]
        mem[mem[64] + 68] = -1
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], ext_call.return_data[0], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 36] = ext_call.return_data[0]
        mem[mem[64] + 68] = -1
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], ext_call.return_data[0], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == bool(mem[_19])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6380b93e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '!owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, '!len'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == uint8(cd[((32 * idx) + cd[36] + 36)])
        if uint8(cd[((32 * idx) + cd[36] + 36)]) == 1:
            mem[96] = 0xde99903900000000000000000000000000000000000000000000000000000000
            mem[100] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.increase_strength(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint8(cd[((32 * idx) + cd[36] + 36)]) == 2:
                mem[96] = 0x5934d9c00000000000000000000000000000000000000000000000000000000
                mem[100] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.increase_dexterity(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint8(cd[((32 * idx) + cd[36] + 36)]) == 3:
                    mem[96] = 0xe0d92c4a00000000000000000000000000000000000000000000000000000000
                    mem[100] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                    call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.increase_constitution(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(cd[((32 * idx) + cd[36] + 36)]) == 4:
                        mem[96] = 0x96cf4c4b00000000000000000000000000000000000000000000000000000000
                        mem[100] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                        call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.increase_intelligence(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if uint8(cd[((32 * idx) + cd[36] + 36)]) == 5:
                            mem[96] = 0xfe6676b300000000000000000000000000000000000000000000000000000000
                            mem[100] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.increase_wisdom(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if uint8(cd[((32 * idx) + cd[36] + 36)]) == 6:
                                mem[96] = 0xbf2bf89500000000000000000000000000000000000000000000000000000000
                                mem[100] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.increase_charisma(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a1fb1847(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '!owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, '!len'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        _24 = mem[64]
        mem[64] = mem[64] + 192
        mem[_24 len 192] = call.data[(192 * idx) + cd[36] + 36 len 192]
        mem[_24 + 192] = 0
        if var43003 < uint8(call.data[(192 * idx) + cd[36] + 36]):
            mem[mem[64]] = 0xde99903900000000000000000000000000000000000000000000000000000000
            mem[var53003] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.mem[var59004 len 4] with:
                 gas gas_remaining wei
                args mem[var59004 + 4 len var59005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var67001 == -1:
                revert with 'NH{q', 17
            # nil
        else:
            if var48003 < uint8(call.data[(192 * idx) + cd[36] + 68]):
                mem[mem[64]] = 0x5934d9c00000000000000000000000000000000000000000000000000000000
                mem[var58003] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.mem[var64004 len 4] with:
                     gas gas_remaining wei
                    args mem[var64004 + 4 len var64005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var72001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                if var53003 < uint8(call.data[(192 * idx) + cd[36] + 100]):
                    mem[mem[64]] = 0xe0d92c4a00000000000000000000000000000000000000000000000000000000
                    mem[var63003] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                    call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.mem[var69004 len 4] with:
                         gas gas_remaining wei
                        args mem[var69004 + 4 len var69005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var77001 == -1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    if var58003 < uint8(call.data[(192 * idx) + cd[36] + 132]):
                        mem[mem[64]] = 0x96cf4c4b00000000000000000000000000000000000000000000000000000000
                        mem[var68003] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                        call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.mem[var74004 len 4] with:
                             gas gas_remaining wei
                            args mem[var74004 + 4 len var74005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        if var63003 >= uint8(call.data[(192 * idx) + cd[36] + 164]):
                            if var68003 < uint8(call.data[(192 * idx) + cd[36] + 196]):
                                # nil
                            else:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            mem[mem[64]] = 0xfe6676b300000000000000000000000000000000000000000000000000000000
                            mem[var73003] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.mem[var79004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var79004 + 4 len var79005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
}



}
