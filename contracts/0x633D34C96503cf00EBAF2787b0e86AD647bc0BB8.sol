contract main {




// =====================  Runtime code  =====================


function sub_cd886009(?) payable {
    require calldata.size - 4 >= 32
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_066df279(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    call address(arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
}

function withdrawERC721(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cef13e68(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_eb2861be(?) {
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
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_53237796(?) {
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
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7bb3b5f0(?) {
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
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fd660f20(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    idx = arg3
    while idx <= arg4:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(arg2)
        mem[164] = idx
        require ext_code.size(address(arg1))
        call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, address(arg2), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e87d2399(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[4])
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5df841ac(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f483f6d7(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = 0xe58410bb00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.spend_xp(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a08d5c34(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[132] = address(cd[4])
        mem[164] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fa53280a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg2.length) + (32 * arg3.length) + 356 len arg4.length] = arg4[all]
    mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 356] = 0
    require ext_code.size(address(arg1))
    call address(arg1).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, arg4[all], mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 356 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d7a7c44(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
        idx = 0
        while idx < arg2:
            mem[mem[64] len arg3.length] = arg3[all]
            mem[arg3.length + mem[64]] = 0
            call address(arg1) with:
                 gas gas_remaining wei
                args arg3[all]
            if return_data.size:
                _20 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20] = return_data.size
                mem[_20 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
            idx = 0
            while idx < arg2:
                mem[mem[64] len arg3.length] = arg3[all]
                mem[arg3.length + mem[64]] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args arg3[all]
                if return_data.size:
                    _19 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_19] = return_data.size
                    mem[_19 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
            idx = 0
            while idx < arg2:
                mem[mem[64] len arg3.length] = arg3[all]
                mem[arg3.length + mem[64]] = 0
                call address(arg1) with:
                     gas gas_remaining wei
                    args arg3[all]
                if return_data.size:
                    _18 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18] = return_data.size
                    mem[_18 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_a7a24960(?) {
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
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_29] == mem[_29 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_29 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _20 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _20 + (32 * mem[96]) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_31 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _22 + (32 * mem[96]) + -mem[64] + 64
}

function sub_65b626bf(?) {
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
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_29] == mem[_29 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_29 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _20 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _20 + (32 * mem[96]) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_31 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _22 + (32 * mem[96]) + -mem[64] + 64
}

function sub_9d07914e(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = address(cd[36])
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)]), address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_32] == bool(mem[_32])
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = bool(mem[_32])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _20 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _20 + (32 * mem[96]) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = address(cd[36])
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_33] == bool(mem[_33])
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = bool(mem[_33])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _21 + (32 * mem[96]) + -mem[64] + 64
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
    if not arg2:
        idx = 0
        while idx < arg3:
            mem[96] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.claim() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if 1 == arg2:
            idx = 0
            while idx < arg3:
                mem[96] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.claim() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 2 == arg2:
                idx = 0
                while idx < arg3:
                    mem[96] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.mint() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if 3 == arg2:
                    idx = 0
                    while idx < arg3:
                        mem[96] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.mint() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if 4 == arg2:
                        idx = 0
                        while idx < arg3:
                            mem[96] = 0xa6f2ae3a00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.buy() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if 5 == arg2:
                            idx = 0
                            while idx < arg3:
                                mem[96] = 0xa6f2ae3a00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.buy() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
}

function sub_fa5ab56f(?) {
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
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _40 = mem[_37]
            _41 = mem[_37 + 32]
            _42 = mem[_37 + 64]
            _43 = mem[_37 + 96]
            _46 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[_46] = cd[((32 * idx) + cd[4] + 36)]
            mem[_46 + 32] = _40
            mem[_46 + 64] = _41
            mem[_46 + 96] = _42
            mem[_46 + 128] = _43
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _46
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _34 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _34:
            u = 0
            v = s
            w = mem[t]
            while u < 5:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 6
            s = s + 160
            t = t + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 288
        mem[(32 * ('cd', 4).length) + 128 len 160] = call.data[calldata.size len 160]
        mem[var18001] = (32 * ('cd', 4).length) + 128
        s = var18001
        idx = var18002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(32 * ('cd', 4).length) + 128 len 160] = call.data[calldata.size len 160]
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _87 = mem[_84]
            _88 = mem[_84 + 32]
            _89 = mem[_84 + 64]
            _90 = mem[_84 + 96]
            _91 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[_91] = cd[((32 * idx) + cd[4] + 36)]
            mem[_91 + 32] = _87
            mem[_91 + 64] = _88
            mem[_91 + 96] = _89
            mem[_91 + 128] = _90
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _91
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _81 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _81:
            u = 0
            v = s
            w = mem[t]
            while u < 5:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 6
            s = s + 160
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_61602f8a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _14 = mem[64]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _14 + -mem[64] - 4]
            if return_data.size:
                _20 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20] = return_data.size
                mem[_20 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _19 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_19] = return_data.size
                    mem[_19 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _18 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18] = return_data.size
                    mem[_18 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_bae4012e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _32 = mem[_29]
            require mem[_29] == mem[_29 + 12 len 20]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_32)
            mem[mem[64] + 36] = address(cd[4])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_32), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _31 = mem[_28]
                require mem[_28] == mem[_28 + 12 len 20]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_31)
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_31), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _27 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _30 = mem[_27]
                require mem[_27] == mem[_27 + 12 len 20]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_30)
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_30), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_2e887a42(?) payable {
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[((32 * idx) + cd[4] + 36)]) with:
               value cd[((32 * idx) + cd[36] + 36)] wei
                 gas gas_remaining wei
                args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
            if return_data.size:
                _20 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20] = return_data.size
                mem[_20 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                   value cd[((32 * idx) + cd[36] + 36)] wei
                     gas gas_remaining wei
                    args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _19 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_19] = return_data.size
                    mem[_19 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                revert with 0, 'E1'
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                   value cd[((32 * idx) + cd[36] + 36)] wei
                     gas gas_remaining wei
                    args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _18 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18] = return_data.size
                    mem[_18 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_4e939129(?) {
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
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _34 = mem[_31]
            _37 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[_37] = cd[((32 * idx) + cd[4] + 36)]
            mem[_37 + 32] = _34
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _28:
            u = 0
            v = t
            w = mem[w]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
            t = t + 64
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128 len 64] = call.data[calldata.size len 64]
        mem[var18001] = (32 * ('cd', 4).length) + 128
        s = var18001
        idx = var18002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + 128 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _72 = mem[_69]
            _73 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[_73] = cd[((32 * idx) + cd[4] + 36)]
            mem[_73 + 32] = _72
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _73
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _66 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _66:
            u = 0
            v = t
            w = mem[w]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size >= 4:
        if unknown_0xa08d5c34(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x53237796(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x65b626bf(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x53237796(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        idx = 0
                        while idx < ('cd', 4).length:
                            mem[128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                            mem[132] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x5df841ac(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                                if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                                    if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                        revert with 0, 'E1'
                            idx = 0
                            while idx < ('cd', 4).length:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if unknown_0x61602f8a(?????) == uint32(call.func_hash) >> 224:
                                require calldata.size - 4 >= 64
                                require cd[4] <= test266151307()
                                require cd[4] + 35 < calldata.size
                                require ('cd', 4).length <= test266151307()
                                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                                require cd[36] <= test266151307()
                                require cd[36] + 35 < calldata.size
                                require ('cd', 36).length <= test266151307()
                                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                                if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
                                    idx = 0
                                    while idx < ('cd', 4).length:
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                                        call address(cd[((32 * idx) + cd[4] + 36)]) with:
                                             gas gas_remaining wei
                                            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                        if return_data.size:
                                            _537 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_537] = return_data.size
                                            mem[_537 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                                            call address(cd[((32 * idx) + cd[4] + 36)]) with:
                                                 gas gas_remaining wei
                                                args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                            if return_data.size:
                                                _536 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_536] = return_data.size
                                                mem[_536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                            revert with 0, 'E1'
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                                            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                                            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                                            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                                            call address(cd[((32 * idx) + cd[4] + 36)]) with:
                                                 gas gas_remaining wei
                                                args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                                            if return_data.size:
                                                _535 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_535] = return_data.size
                                                mem[_535 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                if unknown_0x65b626bf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    mem[64] = (32 * ('cd', 4).length) + 160
                    if not ('cd', 4).length:
                        idx = 0
                        while idx < ('cd', 4).length:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _429 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_429] == mem[_429 + 12 len 20]
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = mem[_429 + 12 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _365 = mem[64]
                        mem[mem[64]] = 32
                        _397 = mem[128]
                        mem[mem[64] + 32] = mem[128]
                        idx = 0
                        s = mem[64] + 64
                        t = 160
                        while idx < _397:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _365 + (32 * _397) + -mem[64] + 64
                    mem[160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _431 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_431] == mem[_431 + 12 len 20]
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = mem[_431 + 12 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _367 = mem[64]
                    mem[mem[64]] = 32
                    _399 = mem[128]
                    mem[mem[64] + 32] = mem[128]
                    idx = 0
                    s = mem[64] + 64
                    t = 160
                    while idx < _399:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _367 + (32 * _399) + -mem[64] + 64
                if unknown_0x7bb3b5f0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[132] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if uint32(call.func_hash) >> 224 != unknown_0x9d07914e(?????):
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] == address(cd[36])
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                mem[64] = (32 * ('cd', 4).length) + 160
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[36])
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)]), address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_492] == bool(mem[_492])
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = bool(mem[_492])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _370 = mem[64]
                    mem[mem[64]] = 32
                    _402 = mem[128]
                    mem[mem[64] + 32] = mem[128]
                    idx = 0
                    s = mem[64] + 64
                    t = 160
                    while idx < _402:
                        mem[s] = bool(mem[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _370 + (32 * _402) + -mem[64] + 64
                mem[160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = address(cd[36])
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)]), address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_493] == bool(mem[_493])
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = bool(mem[_493])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _371 = mem[64]
                mem[mem[64]] = 32
                _403 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = mem[64] + 64
                t = 160
                while idx < _403:
                    mem[s] = bool(mem[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _371 + (32 * _403) + -mem[64] + 64
            if unknown_0x2e887a42(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x066df279(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                revert with 0, 'E1'
                    call address(cd[4]) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args call.data[cd[36] + 36 len ('cd', 36).length]
                else:
                    if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        if ('cd', 100).length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                            revert with 0, 65
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        return 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    if unknown_0x156e29f6(?????) == uint32(call.func_hash) >> 224:
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                            if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                                if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                    revert with 0, 'E1'
                        if not cd[36]:
                            idx = 0
                            while idx < cd[68]:
                                mem[128] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).claim() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if 1 == cd[36]:
                                idx = 0
                                while idx < cd[68]:
                                    mem[128] = 0x4e71d92d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).claim() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if 2 == cd[36]:
                                    idx = 0
                                    while idx < cd[68]:
                                        mem[128] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).mint() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 3 == cd[36]:
                                        idx = 0
                                        while idx < cd[68]:
                                            mem[128] = 0x1249c58b00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(cd[4]))
                                            call address(cd[4]).mint() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 4 == cd[36]:
                                            idx = 0
                                            while idx < cd[68]:
                                                mem[128] = 0xa6f2ae3a00000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(cd[4]))
                                                call address(cd[4]).buy() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 5 == cd[36]:
                                                idx = 0
                                                while idx < cd[68]:
                                                    mem[128] = 0xa6f2ae3a00000000000000000000000000000000000000000000000000000000
                                                    require ext_code.size(address(cd[4]))
                                                    call address(cd[4]).buy() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
            if unknown_0x2e887a42(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                        mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                        mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                        call address(cd[((32 * idx) + cd[4] + 36)]) with:
                           value cd[((32 * idx) + cd[36] + 36)] wei
                             gas gas_remaining wei
                            args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                        if return_data.size:
                            _540 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_540] = return_data.size
                            mem[_540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                            call address(cd[((32 * idx) + cd[4] + 36)]) with:
                               value cd[((32 * idx) + cd[36] + 36)] wei
                                 gas gas_remaining wei
                                args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            if return_data.size:
                                _539 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_539] = return_data.size
                                mem[_539 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                            revert with 0, 'E1'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                            call address(cd[((32 * idx) + cd[4] + 36)]) with:
                               value cd[((32 * idx) + cd[36] + 36)] wei
                                 gas gas_remaining wei
                                args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            if return_data.size:
                                _538 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_538] = return_data.size
                                mem[_538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            if unknown_0x3d7a7c44(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + ('cd', 68).length + 36 <= calldata.size
                if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
                    idx = 0
                    while idx < cd[36]:
                        mem[mem[64] len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                        mem[('cd', 68).length + mem[64]] = 0
                        call address(cd[4]) with:
                             gas gas_remaining wei
                            args call.data[cd[68] + 36 len ('cd', 68).length]
                        if return_data.size:
                            _419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_419] = return_data.size
                            mem[_419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
                        idx = 0
                        while idx < cd[36]:
                            mem[mem[64] len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                            mem[('cd', 68).length + mem[64]] = 0
                            call address(cd[4]) with:
                                 gas gas_remaining wei
                                args call.data[cd[68] + 36 len ('cd', 68).length]
                            if return_data.size:
                                _418 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_418] = return_data.size
                                mem[_418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                            revert with 0, 'E1'
                        idx = 0
                        while idx < cd[36]:
                            mem[mem[64] len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                            mem[('cd', 68).length + mem[64]] = 0
                            call address(cd[4]) with:
                                 gas gas_remaining wei
                                args call.data[cd[68] + 36 len ('cd', 68).length]
                            if return_data.size:
                                _417 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_417] = return_data.size
                                mem[_417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            if uint32(call.func_hash) >> 224 != unknown_0x4e939129(?????):
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 4).length
            mem[64] = (32 * ('cd', 4).length) + 160
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _452 = mem[_424]
                    _472 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_472] = cd[((32 * idx) + cd[4] + 36)]
                    mem[_472 + 32] = _452
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _472
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _391 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                while idx < _391:
                    u = 0
                    v = t
                    w = mem[w]
                    while u < 2:
                        mem[v] = mem[w]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    u = 3
                    w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
                    t = t + 64
                    continue 
            else:
                mem[64] = (32 * ('cd', 4).length) + 224
                mem[(32 * ('cd', 4).length) + 160 len 64] = call.data[calldata.size len 64]
                mem[var25001] = (32 * ('cd', 4).length) + 160
                s = var25001
                idx = var25002
                while idx - 1:
                    mem[64] = mem[64] + 64
                    mem[(32 * ('cd', 4).length) + 160 len 64] = call.data[calldata.size len 64]
                    mem[s + 32] = (32 * ('cd', 4).length) + 160
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _597 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _603 = mem[_597]
                    _609 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_609] = cd[((32 * idx) + cd[4] + 36)]
                    mem[_609 + 32] = _603
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _609
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                _591 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                while idx < _591:
                    u = 0
                    v = t
                    w = mem[w]
                    while u < 2:
                        mem[v] = mem[w]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    u = 3
                    w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
                    t = t + 64
                    continue 
            return memory
              from mem[64]
               len t - mem[64]
        if unknown_0xe87d2399(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xbae4012e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xbae4012e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _464 = mem[_440]
                            require mem[_440] == mem[_440 + 12 len 20]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_464)
                            mem[mem[64] + 36] = address(cd[4])
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(_464), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
                            idx = 0
                            while idx < ('cd', 36).length:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _439 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _463 = mem[_439]
                                require mem[_439] == mem[_439 + 12 len 20]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_463)
                                mem[mem[64] + 36] = address(cd[4])
                                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(_463), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                revert with 0, 'E1'
                            idx = 0
                            while idx < ('cd', 36).length:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _438 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _462 = mem[_438]
                                require mem[_438] == mem[_438 + 12 len 20]
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_462)
                                mem[mem[64] + 36] = address(cd[4])
                                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(_462), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                else:
                    if unknown_0xcd886009(?????) == uint32(call.func_hash) >> 224:
                        require calldata.size - 4 >= 32
                        if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                            if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                                if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                    revert with 0, 'E1'
                        call msg.sender with:
                           value cd[4] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0xcef13e68(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                                if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                                    if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                        revert with 0, 'E1'
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if unknown_0xa08d5c34(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                    if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                            revert with 0, 'E1'
                idx = 0
                while idx < ('cd', 68).length:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[164] = address(cd[4])
                    mem[196] = cd[((32 * idx) + cd[68] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]), cd[((32 * idx) + cd[68] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if unknown_0xa1db9782(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                    if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                            revert with 0, 'E1'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint32(call.func_hash) >> 224 != unknown_0xa7a24960(?????):
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 4).length
            mem[64] = (32 * ('cd', 4).length) + 160
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_435] == mem[_435 + 12 len 20]
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = mem[_435 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _372 = mem[64]
                mem[mem[64]] = 32
                _404 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = mem[64] + 64
                t = 160
                while idx < _404:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _372 + (32 * _404) + -mem[64] + 64
            mem[160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _437 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_437] == mem[_437 + 12 len 20]
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = mem[_437 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _374 = mem[64]
            mem[mem[64]] = 32
            _406 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = mem[64] + 64
            t = 160
            while idx < _406:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _374 + (32 * _406) + -mem[64] + 64
        if unknown_0xf483f6d7(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xe87d2399(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                    if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                            revert with 0, 'E1'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[132] = address(cd[4])
                    mem[164] = cd[((32 * idx) + cd[36] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0xeb2861be(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                        mem[132] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if unknown_0xf3e414f8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                            if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                                if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                    revert with 0, 'E1'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xf483f6d7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                    if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                            revert with 0, 'E1'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    mem[128] = 0xe58410bb00000000000000000000000000000000000000000000000000000000
                    mem[132] = cd[((32 * idx) + cd[4] + 36)]
                    mem[164] = cd[((32 * idx) + cd[36] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.spend_xp(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xfa53280a(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xfa5ab56f(?????):
                        if unknown_0xfd660f20(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                                if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                                    if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                                        revert with 0, 'E1'
                            idx = cd[68]
                            while idx <= cd[100]:
                                mem[128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[132] = this.address
                                mem[164] = address(cd[36])
                                mem[196] = idx
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args this.address, address(cd[36]), idx
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    mem[64] = (32 * ('cd', 4).length) + 160
                    if not ('cd', 4).length:
                        idx = 0
                        while idx < ('cd', 4).length:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _466 = mem[_442]
                            _467 = mem[_442 + 32]
                            _468 = mem[_442 + 64]
                            _469 = mem[_442 + 96]
                            _479 = mem[64]
                            mem[64] = mem[64] + 160
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[_479] = cd[((32 * idx) + cd[4] + 36)]
                            mem[_479 + 32] = _466
                            mem[_479 + 64] = _467
                            mem[_479 + 96] = _468
                            mem[_479 + 128] = _469
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _479
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 32
                        _415 = mem[128]
                        mem[mem[64] + 32] = mem[128]
                        idx = 0
                        s = mem[64] + 64
                        t = 160
                        while idx < _415:
                            u = 0
                            v = s
                            w = mem[t]
                            while u < 5:
                                mem[v] = mem[w]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            u = 6
                            s = s + 160
                            t = t + 32
                            continue 
                    else:
                        mem[64] = (32 * ('cd', 4).length) + 320
                        mem[(32 * ('cd', 4).length) + 160 len 160] = call.data[calldata.size len 160]
                        mem[var25001] = (32 * ('cd', 4).length) + 160
                        s = var25001
                        idx = var25002
                        while idx - 1:
                            mem[64] = mem[64] + 160
                            mem[(32 * ('cd', 4).length) + 160 len 160] = call.data[calldata.size len 160]
                            mem[s + 32] = (32 * ('cd', 4).length) + 160
                            s = s + 32
                            idx = idx - 1
                            continue 
                        idx = 0
                        while idx < ('cd', 4).length:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _605 = mem[_599]
                            _606 = mem[_599 + 32]
                            _607 = mem[_599 + 64]
                            _608 = mem[_599 + 96]
                            _610 = mem[64]
                            mem[64] = mem[64] + 160
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[_610] = cd[((32 * idx) + cd[4] + 36)]
                            mem[_610 + 32] = _605
                            mem[_610 + 64] = _606
                            mem[_610 + 96] = _607
                            mem[_610 + 128] = _608
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _610
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 32
                        _594 = mem[128]
                        mem[mem[64] + 32] = mem[128]
                        idx = 0
                        s = mem[64] + 64
                        t = 160
                        while idx < _594:
                            u = 0
                            v = s
                            w = mem[t]
                            while u < 5:
                                mem[v] = mem[w]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            u = 6
                            s = s + 160
                            t = t + 32
                            continue 
                    return memory
                      from mem[64]
                       len s - mem[64]
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                require ('cd', 100).length <= test266151307()
                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
                    if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
                        if 0x9f1226c7f908d608f26f6c5d2916e520db0bc09c != msg.sender:
                            revert with 0, 'E1'
                require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 388 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ('cd', 100).length + 388] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args 0, 0, msg.sender, 160, (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224, ('cd', 36).length, call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, call.data[cd[68] + 36 len 32 * ('cd', 68).length], ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length], mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ('cd', 100).length + 388 len ceil32(('cd', 100).length) - ('cd', 100).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
