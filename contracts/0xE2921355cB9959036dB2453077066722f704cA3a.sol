contract main {




// =====================  Runtime code  =====================


const sub_f2112500(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb


address owner;
uint256 sub_9e45e062;
array of uint256 sub_fd6236c7;
uint8 stor3;
uint256 sub_5084dec1;
uint8 adventure_count;

function sub_5084dec1(?) payable {
    return sub_5084dec1
}

function owner() payable {
    return owner
}

function sub_9e45e062(?) payable {
    return sub_9e45e062
}

function adventure_count() payable {
    return adventure_count
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

function sub_ca7b8704(?) payable {
    if 0 >= sub_fd6236c7.length:
        revert with 0, 50
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
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
    if 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb == msg.sender:
        sub_fd6236c7.length++
        sub_fd6236c7[sub_fd6236c7.length] = arg3
        if 1 > !sub_9e45e062:
            revert with 0, 17
        sub_9e45e062++
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function adventure() payable {
    if owner != msg.sender:
        revert with 0, '!owner'
    if not stor3:
        revert with 0, '!inited'
    idx = 0
    while idx < sub_9e45e062:
        if idx >= sub_fd6236c7.length:
            revert with 0, 50
        mem[0] = 2
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_fd6236c7[idx]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_fd6236c7[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp > -86401:
        revert with 0, 17
    sub_5084dec1 = block.timestamp + (24 * 3600)
    if 1 > -adventure_count + 255:
        revert with 0, 17
    adventure_count = uint8(adventure_count + 1)
}

function init(uint256 arg1) payable {
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
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_fd6236c7[stor1]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_fd6236c7[stor1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if block.timestamp > -86401:
        revert with 0, 17
    sub_5084dec1 = block.timestamp + (24 * 3600)
    stor3 = 1
    adventure_count = 1
}

function sub_5a03ec0b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    if adventure_count < 4:
        revert with 0, 'adventure_count<4'
    idx = 0
    while idx < sub_9e45e062:
        if idx >= sub_fd6236c7.length:
            revert with 0, 50
        mem[0] = 2
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args sub_fd6236c7[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
             gas gas_remaining wei
            args sub_fd6236c7[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = sub_fd6236c7[idx]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 1000 * 10^18
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args sub_fd6236c7[idx], arg1, 1000 * 10^18
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
    stor3 = 0
    idx = 0
    while idx < sub_9e45e062:
        if not sub_fd6236c7.length:
            revert with 0, 49
        mem[0] = 2
        sub_fd6236c7[sub_fd6236c7.length] = 0
        sub_fd6236c7.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_9e45e062 = 0
    sub_5084dec1 = 0
    adventure_count = 0
}



}
