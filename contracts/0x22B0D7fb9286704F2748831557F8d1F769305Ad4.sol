contract main {




// =====================  Runtime code  =====================


address stor0;

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

function sub_374899b8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    require uint32(arg1) >= 1
    require uint32(arg1) <= 11
    idx = 0
    while idx < uint32(arg2):
        require ext_code.size(stor0)
        staticcall stor0.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        require mem[_11] == mem[_11]
        require ext_code.size(stor0)
        call stor0.summon(uint256 arg1) with:
             gas gas_remaining wei
            args (arg1 << 224)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _12
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_58942e28(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    idx = 0
    while idx < uint32(arg1):
        s = 1
        while s <= 11:
            require ext_code.size(stor0)
            staticcall stor0.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _28 = mem[_27]
            require mem[_27] == mem[_27]
            require ext_code.size(stor0)
            call stor0.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _28
            require ext_code.size(stor0)
            call stor0.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _28
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
