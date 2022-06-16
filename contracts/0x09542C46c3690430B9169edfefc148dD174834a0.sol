contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit OwnerSet(arg1, arg1);
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

function sub_e1cc140c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < arg1:
        if idx > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if 1 > !(10 * idx % 11):
            revert with 0, 17
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args ((10 * idx % 11) + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mem[_13]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _14
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _14
        continue 
}

function sub_394a2e07(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= arg2
    if arg2 < arg1:
        revert with 0, 17
    if var33002 > arg2 - arg1:
    if var37001 > !arg1:
        revert with 0, 17
    mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = var41001
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[var43004 len 4] with:
         gas gas_remaining wei
        args mem[var43004 + 4 len var43005 - 4]
    if ext_call.success:
        if var47001 > !arg1:
            revert with 0, 17
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args (var49002 + arg1)
        s = var49002 + arg1
        s = var49007
        while ext_call.success:
            if s == -1:
                revert with 0, 17
            if arg2 < arg1:
                revert with 0, 17
            if s + 1 > arg2 - arg1:
            if s + 1 > !arg1:
                revert with 0, 17
            mem[132] = s + arg1 + 1
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, s + arg1 + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s + 1 > !arg1:
                revert with 0, 17
            mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[100] = s + arg1 + 2
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args (s + arg1 + 2)
            s = s + arg1 + 1
            s = s + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 128
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        require arg3 <= test266151307()
        require arg3 + 35 < calldata.size
        if arg3.length > test266151307():
            revert with 0, 65
        if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
            revert with 0, 65
        require arg3 + arg3.length + 36 <= calldata.size
        return 0x150b7a0200000000000000000000000000000000000000000000000000000000
    if uint32(call.func_hash) >> 224 != unknown_0x394a2e07(?????):
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if uint32(call.func_hash) >> 224 != unknown_0xa6f9dae1(?????):
            require unknown_0xe1cc140c(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            idx = 0
            s = 0
            while idx < arg1:
                if idx > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if 1 > !(10 * idx % 11):
                    revert with 0, 17
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _30 = mem[_28]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((10 * idx % 11) + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, mem[_28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _30
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
                     gas gas_remaining wei
                    args this.address, msg.sender, _30
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _30
                continue 
        else:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Caller is not owner'
            owner = address(arg1)
            emit OwnerSet(address(arg1), address(arg1));
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= arg2
    if arg2 < arg1:
        revert with 0, 17
    if var36002 > arg2 - arg1:
    if var40001 > !arg1:
        revert with 0, 17
    mem[128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
    mem[132] = msg.sender
    mem[164] = var44001
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[var46004 len 4] with:
         gas gas_remaining wei
        args mem[var46004 + 4 len var46005 - 4]
    if ext_call.success:
        if var50001 > !arg1:
            revert with 0, 17
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args (var52002 + arg1)
        s = var52002 + arg1
        s = var52007
        while ext_call.success:
            if s == -1:
                revert with 0, 17
            if arg2 < arg1:
                revert with 0, 17
            if s + 1 > arg2 - arg1:
            if s + 1 > !arg1:
                revert with 0, 17
            mem[164] = s + arg1 + 1
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, s + arg1 + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s + 1 > !arg1:
                revert with 0, 17
            mem[128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[132] = s + arg1 + 2
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args (s + arg1 + 2)
            s = s + arg1 + 1
            s = s + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
