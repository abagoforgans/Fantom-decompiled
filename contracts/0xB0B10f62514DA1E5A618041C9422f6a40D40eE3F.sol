contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    return Mask(32, 224, sha3(0xfe6f6e455243373231526563656976656428616464726573732c616464726573732c75696e74323536))
}

function sub_49b4ad82(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = _22
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args _22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        _26 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = this.address
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_26)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = ext_call.return_data[0]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), address(_26), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
