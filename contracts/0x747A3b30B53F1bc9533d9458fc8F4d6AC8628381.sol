contract main {




// =====================  Runtime code  =====================


const sub_f2112500(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb


address owner;
uint256 sub_9e45e062;
array of uint256 sub_fd6236c7;
uint8 stor3;
uint256 sub_5084dec1;

function sub_5084dec1(?) payable {
    return sub_5084dec1
}

function owner() payable {
    return owner
}

function sub_9e45e062(?) payable {
    return sub_9e45e062
}

function sub_bb7903b7(?) payable {
    return bool(stor3)
}

function sub_fd6236c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fd6236c7.length
    return sub_fd6236c7[arg1]
}

function _fallback() payable {
    revert
}

function sub_daa02b90(?) payable {
    return (block.timestamp > sub_5084dec1)
}

function balance() payable {
    if 0 >= sub_fd6236c7.length:
        revert with 0, 50
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x9cc7f708 with:
            gas gas_remaining wei
           args sub_fd6236c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if tx.origin == owner:
        if 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb == msg.sender:
            sub_fd6236c7.length++
            sub_fd6236c7[sub_fd6236c7.length] = arg3
            if 1 > !sub_9e45e062:
                revert with 0, 17
            sub_9e45e062++
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function adventure() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, '!owner'
    if not stor3:
        revert with 0, '!inited'
    require block.timestamp > sub_5084dec1
    idx = 0
    while idx < sub_9e45e062:
        if idx >= sub_fd6236c7.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = sub_fd6236c7[idx]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_fd6236c7[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp > -86401:
        revert with 0, 17
    sub_5084dec1 = block.timestamp + (24 * 3600)
}

function sub_d762091d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    if not stor3:
        revert with 0, '!inited'
    idx = 0
    while idx < sub_9e45e062:
        if idx >= sub_fd6236c7.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = sub_fd6236c7[idx]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x9cc7f708 with:
                gas gas_remaining wei
               args sub_fd6236c7[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        if mem[_17]:
            mem[mem[64] + 4] = sub_fd6236c7[idx]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = _18
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0x90dd2627 with:
                 gas gas_remaining wei
                args sub_fd6236c7[idx], arg1, _18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function init(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    if stor3:
        revert with 0, 'inited'
    if arg1 <= 0:
        revert with 0, 'amount must gt zero'
    idx = 0
    while idx < arg1:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_9e45e062 < 1:
            revert with 0, 17
        if sub_9e45e062 - 1 >= sub_fd6236c7.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 36] = 22
        mem[mem[64] + 68] = 8
        mem[mem[64] + 100] = 8
        mem[mem[64] + 132] = 8
        mem[mem[64] + 164] = 8
        mem[mem[64] + 196] = 8
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args sub_fd6236c7[stor1], 22, 8, 8, 8, 8, 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = sub_fd6236c7[stor1]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_fd6236c7[stor1]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp > -86401:
        revert with 0, 17
    sub_5084dec1 = block.timestamp + (24 * 3600)
    stor3 = 1
}



}
