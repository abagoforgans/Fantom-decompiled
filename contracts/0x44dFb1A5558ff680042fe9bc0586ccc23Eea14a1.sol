contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function batchMint(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
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
    mem[floor32(arg1.length) + 97] = 0xa22cb46500000000000000000000000000000000000000000000000000000000
    mem[floor32(arg1.length) + 101] = msg.sender
    mem[floor32(arg1.length) + 133] = 1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xa22cb465 with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        require mem[_31] == mem[_31]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _32
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
