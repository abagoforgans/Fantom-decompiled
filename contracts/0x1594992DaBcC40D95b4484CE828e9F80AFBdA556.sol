contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of uint256 sub_03fac3c3;
mapping of uint256 sub_f0475a10;
mapping of uint256 sub_5e6739ac;

function sub_03fac3c3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_03fac3c3[arg1][arg2]
}

function sub_5e6739ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5e6739ac[arg1]
}

function sub_f0475a10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f0475a10[arg1]
}

function _fallback() payable {
    revert
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
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_a2257f8e(?) payable {
    if sub_f0475a10[msg.sender] >= sub_5e6739ac[msg.sender]:
        revert with 0, 'not equals'
    idx = sub_f0475a10[msg.sender]
    while idx < sub_5e6739ac[msg.sender]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 3)
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = sub_03fac3c3[address(msg.sender)][idx]
        require ext_code.size(stor0)
        call stor0.0x42842e0e with:
             gas gas_remaining wei
            args this.address, msg.sender, sub_03fac3c3[address(msg.sender)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_f0475a10[address(msg.sender)] = sub_5e6739ac[msg.sender]
}

function sub_f3a165fe(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Number should not greater than 100'
    mem[0] = msg.sender
    mem[32] = 5
    if sub_f0475a10[msg.sender] != sub_5e6739ac[msg.sender]:
        revert with 0, 'receiving role'
    if sub_5e6739ac[msg.sender] > !arg2:
        revert with 0, 17
    idx = stor[sha3(mem[0 len 64])]
    while idx < sub_5e6739ac[msg.sender] + arg2:
        require ext_code.size(stor0)
        staticcall stor0.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22 = mem[_21]
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor0)
        call stor0.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 3)
        sub_03fac3c3[address(msg.sender)][idx] = _22
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_f0475a10[address(msg.sender)] = sub_5e6739ac[msg.sender]
    sub_5e6739ac[address(msg.sender)] = sub_5e6739ac[msg.sender] + arg2
}

function sub_f48250ec(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of summoners should not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_11] <= block.timestamp:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            call stor0.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_77ecbcd1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of summoners should not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        staticcall stor2.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_17] <= block.timestamp:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor2)
            staticcall stor2.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_21]:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor2)
                call stor2.adventure(uint256 arg1) with:
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

function sub_823e36ed(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of summoners should not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22 = mem[_21]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.xp(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_25]
        mem[mem[64] + 4] = _22
        require ext_code.size(stor0)
        staticcall stor0.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _22
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _26 >= mem[_29]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require ext_code.size(stor0)
            call stor0.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor1)
            call stor1.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
