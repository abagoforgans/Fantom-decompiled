contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function claim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    mem[100] = cd[(arg1 + 36)]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args cd[(arg1 + 36)]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = cd[(arg1 + 36)]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), cd[(arg1 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 0x379607f500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[(arg1 + 36)]
    require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
    call 0x00000000000147629f002966c4f2adc1cb4f0aca.claim(uint256 arg1) with:
         gas gas_remaining wei
        args cd[(arg1 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 1
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_41]
        require mem[_41] == mem[_41 + 12 len 20]
        mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
        call 0x00000000000147629f002966c4f2adc1cb4f0aca.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
        staticcall 0x147629f002966c4f2adc1cb4f0aca.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _56 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _57 = mem[_56]
        require mem[_56] == mem[_56]
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 36] = cd[(arg1 + 36)]
        mem[mem[64] + 68] = _57
        require ext_code.size(0x147629f002966c4f2adc1cb4f0aca)
        call 0x00000000000147629f002966c4f2adc1cb4f0aca.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + arg1 + 36)], cd[(arg1 + 36)], _57
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_61] == bool(mem[_61])
        mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_43)
        mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_43), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x817ca23e8393aa3e0075a40ded609684651982d7)
    staticcall 0x817ca23e8393aa3e0075a40ded609684651982d7.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _42 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_42] == mem[_42]
    require ext_code.size(0x817ca23e8393aa3e0075a40ded609684651982d7)
    call 0x817ca23e8393aa3e0075a40ded609684651982d7.wrap(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args cd[(arg1 + 36)], mem[_42]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x817ca23e8393aa3e0075a40ded609684651982d7)
    call 0x817ca23e8393aa3e0075a40ded609684651982d7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, mem[_42]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), cd[(arg1 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
