contract main {




// =====================  Runtime code  =====================


#
#  - performTriangularTradeWithFlashswap(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, uint256 arg5)
#
address stor0;
mapping of uint8 stor1;
address stor3;

function _fallback() payable {
  stop
}

function addWallet(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor1[address(arg1)] = 1
}

function getAll() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAllTokens(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        revert with 0, 'Library: IDENTICAL_ADDRESSES'
    if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
        if not address(ext_call.return_data[0]):
            revert with 0, 'Library: ZERO_ADDRESS'
        mem[128] = address(ext_call.return_data[0])
        mem[148] = address(ext_call.return_data[0])
        mem[96] = 40
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = 0xc35dadb65012ec5796536bd9864ed8773abc74c4000000000000000000000000
        mem[221] = sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0]))
        mem[253] = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303
        mem[168] = 85
        if address(sha3(0, 14077599008769109079, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)) != msg.sender:
            revert with 0, 'Unauthorized'
        if not arg2:
            require arg4.length >= 128
            require cd[(arg4 + 68)] <= 4294967296
            require cd[(arg4 + 68)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
            mem[285] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[317 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
            require cd[(arg4 + 100)] <= 4294967296
            require cd[(arg4 + 100)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 349 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            require cd[(arg4 + 132)] <= 4294967296
            require cd[(arg4 + 132)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
            require 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 385] = mem[361 len 20]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2191 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2480 = mem[(32 * idx) + 317]
                                    _2608 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2608 + 36] = 0
                                    mem[_2608 + 68] = _2191
                                    mem[_2608 + 100] = this.address
                                    mem[_2608 + 132] = 128
                                    mem[_2608 + 164] = mem[_2608]
                                    s = 0
                                    while s < mem[_2608]:
                                        mem[_2608 + s + 196] = mem[_2608 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2608] % 32:
                                        require ext_code.size(address(_2480))
                                        call address(_2480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2191, address(this.address), 128, mem[_2608 + 164 len mem[_2608] + 32]
                                    else:
                                        mem[floor32(mem[_2608]) + _2608 + 196] = mem[floor32(mem[_2608]) + _2608 + -(mem[_2608] % 32) + 228 len mem[_2608] % 32]
                                        require ext_code.size(address(_2480))
                                        call address(_2480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2191, address(this.address), 128, mem[_2608], mem[_2608 + 196 len floor32(mem[_2608]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2351 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2607 = mem[(32 * idx) + 317]
                                    _2735 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2735 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2735 + 36] = 0
                                    mem[_2735 + 68] = _2191
                                    mem[_2735 + 100] = address(_2351)
                                    mem[_2735 + 132] = 128
                                    mem[_2735 + 164] = mem[_2735]
                                    s = 0
                                    while s < mem[_2735]:
                                        mem[_2735 + s + 196] = mem[_2735 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2735] % 32:
                                        require ext_code.size(address(_2607))
                                        call address(_2607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2191, address(_2351), 128, mem[_2735 + 164 len mem[_2735] + 32]
                                    else:
                                        mem[floor32(mem[_2735]) + _2735 + 196] = mem[floor32(mem[_2735]) + _2735 + -(mem[_2735] % 32) + 228 len mem[_2735] % 32]
                                        require ext_code.size(address(_2607))
                                        call address(_2607).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2191, address(_2351), 128, mem[_2735], mem[_2735 + 196 len floor32(mem[_2735]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2482 = mem[(32 * idx) + 317]
                                    _2610 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2610 + 36] = _2191
                                    mem[_2610 + 68] = 0
                                    mem[_2610 + 100] = this.address
                                    mem[_2610 + 132] = 128
                                    mem[_2610 + 164] = mem[_2610]
                                    s = 0
                                    while s < mem[_2610]:
                                        mem[_2610 + s + 196] = mem[_2610 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2610] % 32:
                                        require ext_code.size(address(_2482))
                                        call address(_2482).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2191, 0, address(this.address), 128, mem[_2610 + 164 len mem[_2610] + 32]
                                    else:
                                        mem[floor32(mem[_2610]) + _2610 + 196] = mem[floor32(mem[_2610]) + _2610 + -(mem[_2610] % 32) + 228 len mem[_2610] % 32]
                                        require ext_code.size(address(_2482))
                                        call address(_2482).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2191, 0, address(this.address), 128, mem[_2610], mem[_2610 + 196 len floor32(mem[_2610]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2353 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2609 = mem[(32 * idx) + 317]
                                    _2739 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2739 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2739 + 36] = _2191
                                    mem[_2739 + 68] = 0
                                    mem[_2739 + 100] = address(_2353)
                                    mem[_2739 + 132] = 128
                                    mem[_2739 + 164] = mem[_2739]
                                    s = 0
                                    while s < mem[_2739]:
                                        mem[_2739 + s + 196] = mem[_2739 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2739] % 32:
                                        require ext_code.size(address(_2609))
                                        call address(_2609).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2191, 0, address(_2353), 128, mem[_2739 + 164 len mem[_2739] + 32]
                                    else:
                                        mem[floor32(mem[_2739]) + _2739 + 196] = mem[floor32(mem[_2739]) + _2739 + -(mem[_2739] % 32) + 228 len mem[_2739] % 32]
                                        require ext_code.size(address(_2609))
                                        call address(_2609).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2191, 0, address(_2353), 128, mem[_2739], mem[_2739 + 196 len floor32(mem[_2739]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2192 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2484 = mem[(32 * idx) + 317]
                                    _2612 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2612 + 36] = 0
                                    mem[_2612 + 68] = _2192
                                    mem[_2612 + 100] = this.address
                                    mem[_2612 + 132] = 128
                                    mem[_2612 + 164] = mem[_2612]
                                    s = 0
                                    while s < mem[_2612]:
                                        mem[_2612 + s + 196] = mem[_2612 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2612] % 32:
                                        require ext_code.size(address(_2484))
                                        call address(_2484).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2192, address(this.address), 128, mem[_2612 + 164 len mem[_2612] + 32]
                                    else:
                                        mem[floor32(mem[_2612]) + _2612 + 196] = mem[floor32(mem[_2612]) + _2612 + -(mem[_2612] % 32) + 228 len mem[_2612] % 32]
                                        require ext_code.size(address(_2484))
                                        call address(_2484).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2192, address(this.address), 128, mem[_2612], mem[_2612 + 196 len floor32(mem[_2612]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2355 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2611 = mem[(32 * idx) + 317]
                                    _2743 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2743 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2743 + 36] = 0
                                    mem[_2743 + 68] = _2192
                                    mem[_2743 + 100] = address(_2355)
                                    mem[_2743 + 132] = 128
                                    mem[_2743 + 164] = mem[_2743]
                                    s = 0
                                    while s < mem[_2743]:
                                        mem[_2743 + s + 196] = mem[_2743 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2743] % 32:
                                        require ext_code.size(address(_2611))
                                        call address(_2611).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2192, address(_2355), 128, mem[_2743 + 164 len mem[_2743] + 32]
                                    else:
                                        mem[floor32(mem[_2743]) + _2743 + 196] = mem[floor32(mem[_2743]) + _2743 + -(mem[_2743] % 32) + 228 len mem[_2743] % 32]
                                        require ext_code.size(address(_2611))
                                        call address(_2611).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2192, address(_2355), 128, mem[_2743], mem[_2743 + 196 len floor32(mem[_2743]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2486 = mem[(32 * idx) + 317]
                                    _2614 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2614 + 36] = _2192
                                    mem[_2614 + 68] = 0
                                    mem[_2614 + 100] = this.address
                                    mem[_2614 + 132] = 128
                                    mem[_2614 + 164] = mem[_2614]
                                    s = 0
                                    while s < mem[_2614]:
                                        mem[_2614 + s + 196] = mem[_2614 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2614] % 32:
                                        require ext_code.size(address(_2486))
                                        call address(_2486).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2192, 0, address(this.address), 128, mem[_2614 + 164 len mem[_2614] + 32]
                                    else:
                                        mem[floor32(mem[_2614]) + _2614 + 196] = mem[floor32(mem[_2614]) + _2614 + -(mem[_2614] % 32) + 228 len mem[_2614] % 32]
                                        require ext_code.size(address(_2486))
                                        call address(_2486).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2192, 0, address(this.address), 128, mem[_2614], mem[_2614 + 196 len floor32(mem[_2614]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2357 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2613 = mem[(32 * idx) + 317]
                                    _2747 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2747 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2747 + 36] = _2192
                                    mem[_2747 + 68] = 0
                                    mem[_2747 + 100] = address(_2357)
                                    mem[_2747 + 132] = 128
                                    mem[_2747 + 164] = mem[_2747]
                                    s = 0
                                    while s < mem[_2747]:
                                        mem[_2747 + s + 196] = mem[_2747 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2747] % 32:
                                        require ext_code.size(address(_2613))
                                        call address(_2613).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2192, 0, address(_2357), 128, mem[_2747 + 164 len mem[_2747] + 32]
                                    else:
                                        mem[floor32(mem[_2747]) + _2747 + 196] = mem[floor32(mem[_2747]) + _2747 + -(mem[_2747] % 32) + 228 len mem[_2747] % 32]
                                        require ext_code.size(address(_2613))
                                        call address(_2613).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2192, 0, address(_2357), 128, mem[_2747], mem[_2747 + 196 len floor32(mem[_2747]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2193 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2488 = mem[(32 * idx) + 317]
                                    _2616 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2616 + 36] = 0
                                    mem[_2616 + 68] = _2193
                                    mem[_2616 + 100] = this.address
                                    mem[_2616 + 132] = 128
                                    mem[_2616 + 164] = mem[_2616]
                                    s = 0
                                    while s < mem[_2616]:
                                        mem[_2616 + s + 196] = mem[_2616 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2616] % 32:
                                        require ext_code.size(address(_2488))
                                        call address(_2488).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2193, address(this.address), 128, mem[_2616 + 164 len mem[_2616] + 32]
                                    else:
                                        mem[floor32(mem[_2616]) + _2616 + 196] = mem[floor32(mem[_2616]) + _2616 + -(mem[_2616] % 32) + 228 len mem[_2616] % 32]
                                        require ext_code.size(address(_2488))
                                        call address(_2488).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2193, address(this.address), 128, mem[_2616], mem[_2616 + 196 len floor32(mem[_2616]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2359 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2615 = mem[(32 * idx) + 317]
                                    _2751 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2751 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2751 + 36] = 0
                                    mem[_2751 + 68] = _2193
                                    mem[_2751 + 100] = address(_2359)
                                    mem[_2751 + 132] = 128
                                    mem[_2751 + 164] = mem[_2751]
                                    s = 0
                                    while s < mem[_2751]:
                                        mem[_2751 + s + 196] = mem[_2751 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2751] % 32:
                                        require ext_code.size(address(_2615))
                                        call address(_2615).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2193, address(_2359), 128, mem[_2751 + 164 len mem[_2751] + 32]
                                    else:
                                        mem[floor32(mem[_2751]) + _2751 + 196] = mem[floor32(mem[_2751]) + _2751 + -(mem[_2751] % 32) + 228 len mem[_2751] % 32]
                                        require ext_code.size(address(_2615))
                                        call address(_2615).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2193, address(_2359), 128, mem[_2751], mem[_2751 + 196 len floor32(mem[_2751]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2490 = mem[(32 * idx) + 317]
                                    _2618 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2618 + 36] = _2193
                                    mem[_2618 + 68] = 0
                                    mem[_2618 + 100] = this.address
                                    mem[_2618 + 132] = 128
                                    mem[_2618 + 164] = mem[_2618]
                                    s = 0
                                    while s < mem[_2618]:
                                        mem[_2618 + s + 196] = mem[_2618 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2618] % 32:
                                        require ext_code.size(address(_2490))
                                        call address(_2490).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2193, 0, address(this.address), 128, mem[_2618 + 164 len mem[_2618] + 32]
                                    else:
                                        mem[floor32(mem[_2618]) + _2618 + 196] = mem[floor32(mem[_2618]) + _2618 + -(mem[_2618] % 32) + 228 len mem[_2618] % 32]
                                        require ext_code.size(address(_2490))
                                        call address(_2490).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2193, 0, address(this.address), 128, mem[_2618], mem[_2618 + 196 len floor32(mem[_2618]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2361 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2617 = mem[(32 * idx) + 317]
                                    _2755 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2755 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2755 + 36] = _2193
                                    mem[_2755 + 68] = 0
                                    mem[_2755 + 100] = address(_2361)
                                    mem[_2755 + 132] = 128
                                    mem[_2755 + 164] = mem[_2755]
                                    s = 0
                                    while s < mem[_2755]:
                                        mem[_2755 + s + 196] = mem[_2755 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2755] % 32:
                                        require ext_code.size(address(_2617))
                                        call address(_2617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2193, 0, address(_2361), 128, mem[_2755 + 164 len mem[_2755] + 32]
                                    else:
                                        mem[floor32(mem[_2755]) + _2755 + 196] = mem[floor32(mem[_2755]) + _2755 + -(mem[_2755] % 32) + 228 len mem[_2755] % 32]
                                        require ext_code.size(address(_2617))
                                        call address(_2617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2193, 0, address(_2361), 128, mem[_2755], mem[_2755 + 196 len floor32(mem[_2755]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2194 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2492 = mem[(32 * idx) + 317]
                                    _2620 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2620 + 36] = 0
                                    mem[_2620 + 68] = _2194
                                    mem[_2620 + 100] = this.address
                                    mem[_2620 + 132] = 128
                                    mem[_2620 + 164] = mem[_2620]
                                    s = 0
                                    while s < mem[_2620]:
                                        mem[_2620 + s + 196] = mem[_2620 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2620] % 32:
                                        require ext_code.size(address(_2492))
                                        call address(_2492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2194, address(this.address), 128, mem[_2620 + 164 len mem[_2620] + 32]
                                    else:
                                        mem[floor32(mem[_2620]) + _2620 + 196] = mem[floor32(mem[_2620]) + _2620 + -(mem[_2620] % 32) + 228 len mem[_2620] % 32]
                                        require ext_code.size(address(_2492))
                                        call address(_2492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2194, address(this.address), 128, mem[_2620], mem[_2620 + 196 len floor32(mem[_2620]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2363 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2619 = mem[(32 * idx) + 317]
                                    _2759 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2759 + 36] = 0
                                    mem[_2759 + 68] = _2194
                                    mem[_2759 + 100] = address(_2363)
                                    mem[_2759 + 132] = 128
                                    mem[_2759 + 164] = mem[_2759]
                                    s = 0
                                    while s < mem[_2759]:
                                        mem[_2759 + s + 196] = mem[_2759 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2759] % 32:
                                        require ext_code.size(address(_2619))
                                        call address(_2619).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2194, address(_2363), 128, mem[_2759 + 164 len mem[_2759] + 32]
                                    else:
                                        mem[floor32(mem[_2759]) + _2759 + 196] = mem[floor32(mem[_2759]) + _2759 + -(mem[_2759] % 32) + 228 len mem[_2759] % 32]
                                        require ext_code.size(address(_2619))
                                        call address(_2619).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2194, address(_2363), 128, mem[_2759], mem[_2759 + 196 len floor32(mem[_2759]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2494 = mem[(32 * idx) + 317]
                                    _2622 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2622 + 36] = _2194
                                    mem[_2622 + 68] = 0
                                    mem[_2622 + 100] = this.address
                                    mem[_2622 + 132] = 128
                                    mem[_2622 + 164] = mem[_2622]
                                    s = 0
                                    while s < mem[_2622]:
                                        mem[_2622 + s + 196] = mem[_2622 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2622] % 32:
                                        require ext_code.size(address(_2494))
                                        call address(_2494).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2194, 0, address(this.address), 128, mem[_2622 + 164 len mem[_2622] + 32]
                                    else:
                                        mem[floor32(mem[_2622]) + _2622 + 196] = mem[floor32(mem[_2622]) + _2622 + -(mem[_2622] % 32) + 228 len mem[_2622] % 32]
                                        require ext_code.size(address(_2494))
                                        call address(_2494).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2194, 0, address(this.address), 128, mem[_2622], mem[_2622 + 196 len floor32(mem[_2622]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2365 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2621 = mem[(32 * idx) + 317]
                                    _2763 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2763 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2763 + 36] = _2194
                                    mem[_2763 + 68] = 0
                                    mem[_2763 + 100] = address(_2365)
                                    mem[_2763 + 132] = 128
                                    mem[_2763 + 164] = mem[_2763]
                                    s = 0
                                    while s < mem[_2763]:
                                        mem[_2763 + s + 196] = mem[_2763 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2763] % 32:
                                        require ext_code.size(address(_2621))
                                        call address(_2621).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2194, 0, address(_2365), 128, mem[_2763 + 164 len mem[_2763] + 32]
                                    else:
                                        mem[floor32(mem[_2763]) + _2763 + 196] = mem[floor32(mem[_2763]) + _2763 + -(mem[_2763] % 32) + 228 len mem[_2763] % 32]
                                        require ext_code.size(address(_2621))
                                        call address(_2621).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2194, 0, address(_2365), 128, mem[_2763], mem[_2763 + 196 len floor32(mem[_2763]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2195 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2496 = mem[(32 * idx) + 317]
                                    _2624 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2624 + 36] = 0
                                    mem[_2624 + 68] = _2195
                                    mem[_2624 + 100] = this.address
                                    mem[_2624 + 132] = 128
                                    mem[_2624 + 164] = mem[_2624]
                                    s = 0
                                    while s < mem[_2624]:
                                        mem[_2624 + s + 196] = mem[_2624 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2624] % 32:
                                        require ext_code.size(address(_2496))
                                        call address(_2496).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2195, address(this.address), 128, mem[_2624 + 164 len mem[_2624] + 32]
                                    else:
                                        mem[floor32(mem[_2624]) + _2624 + 196] = mem[floor32(mem[_2624]) + _2624 + -(mem[_2624] % 32) + 228 len mem[_2624] % 32]
                                        require ext_code.size(address(_2496))
                                        call address(_2496).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2195, address(this.address), 128, mem[_2624], mem[_2624 + 196 len floor32(mem[_2624]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2367 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2623 = mem[(32 * idx) + 317]
                                    _2767 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2767 + 36] = 0
                                    mem[_2767 + 68] = _2195
                                    mem[_2767 + 100] = address(_2367)
                                    mem[_2767 + 132] = 128
                                    mem[_2767 + 164] = mem[_2767]
                                    s = 0
                                    while s < mem[_2767]:
                                        mem[_2767 + s + 196] = mem[_2767 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2767] % 32:
                                        require ext_code.size(address(_2623))
                                        call address(_2623).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2195, address(_2367), 128, mem[_2767 + 164 len mem[_2767] + 32]
                                    else:
                                        mem[floor32(mem[_2767]) + _2767 + 196] = mem[floor32(mem[_2767]) + _2767 + -(mem[_2767] % 32) + 228 len mem[_2767] % 32]
                                        require ext_code.size(address(_2623))
                                        call address(_2623).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2195, address(_2367), 128, mem[_2767], mem[_2767 + 196 len floor32(mem[_2767]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2498 = mem[(32 * idx) + 317]
                                    _2626 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2626 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2626 + 36] = _2195
                                    mem[_2626 + 68] = 0
                                    mem[_2626 + 100] = this.address
                                    mem[_2626 + 132] = 128
                                    mem[_2626 + 164] = mem[_2626]
                                    s = 0
                                    while s < mem[_2626]:
                                        mem[_2626 + s + 196] = mem[_2626 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2626] % 32:
                                        require ext_code.size(address(_2498))
                                        call address(_2498).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2195, 0, address(this.address), 128, mem[_2626 + 164 len mem[_2626] + 32]
                                    else:
                                        mem[floor32(mem[_2626]) + _2626 + 196] = mem[floor32(mem[_2626]) + _2626 + -(mem[_2626] % 32) + 228 len mem[_2626] % 32]
                                        require ext_code.size(address(_2498))
                                        call address(_2498).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2195, 0, address(this.address), 128, mem[_2626], mem[_2626 + 196 len floor32(mem[_2626]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2369 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2625 = mem[(32 * idx) + 317]
                                    _2771 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2771 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2771 + 36] = _2195
                                    mem[_2771 + 68] = 0
                                    mem[_2771 + 100] = address(_2369)
                                    mem[_2771 + 132] = 128
                                    mem[_2771 + 164] = mem[_2771]
                                    s = 0
                                    while s < mem[_2771]:
                                        mem[_2771 + s + 196] = mem[_2771 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2771] % 32:
                                        require ext_code.size(address(_2625))
                                        call address(_2625).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2195, 0, address(_2369), 128, mem[_2771 + 164 len mem[_2771] + 32]
                                    else:
                                        mem[floor32(mem[_2771]) + _2771 + 196] = mem[floor32(mem[_2771]) + _2771 + -(mem[_2771] % 32) + 228 len mem[_2771] % 32]
                                        require ext_code.size(address(_2625))
                                        call address(_2625).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2195, 0, address(_2369), 128, mem[_2771], mem[_2771 + 196 len floor32(mem[_2771]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2196 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2500 = mem[(32 * idx) + 317]
                                    _2628 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2628 + 36] = 0
                                    mem[_2628 + 68] = _2196
                                    mem[_2628 + 100] = this.address
                                    mem[_2628 + 132] = 128
                                    mem[_2628 + 164] = mem[_2628]
                                    s = 0
                                    while s < mem[_2628]:
                                        mem[_2628 + s + 196] = mem[_2628 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2628] % 32:
                                        require ext_code.size(address(_2500))
                                        call address(_2500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2196, address(this.address), 128, mem[_2628 + 164 len mem[_2628] + 32]
                                    else:
                                        mem[floor32(mem[_2628]) + _2628 + 196] = mem[floor32(mem[_2628]) + _2628 + -(mem[_2628] % 32) + 228 len mem[_2628] % 32]
                                        require ext_code.size(address(_2500))
                                        call address(_2500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2196, address(this.address), 128, mem[_2628], mem[_2628 + 196 len floor32(mem[_2628]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2371 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2627 = mem[(32 * idx) + 317]
                                    _2775 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2775 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2775 + 36] = 0
                                    mem[_2775 + 68] = _2196
                                    mem[_2775 + 100] = address(_2371)
                                    mem[_2775 + 132] = 128
                                    mem[_2775 + 164] = mem[_2775]
                                    s = 0
                                    while s < mem[_2775]:
                                        mem[_2775 + s + 196] = mem[_2775 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2775] % 32:
                                        require ext_code.size(address(_2627))
                                        call address(_2627).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2196, address(_2371), 128, mem[_2775 + 164 len mem[_2775] + 32]
                                    else:
                                        mem[floor32(mem[_2775]) + _2775 + 196] = mem[floor32(mem[_2775]) + _2775 + -(mem[_2775] % 32) + 228 len mem[_2775] % 32]
                                        require ext_code.size(address(_2627))
                                        call address(_2627).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2196, address(_2371), 128, mem[_2775], mem[_2775 + 196 len floor32(mem[_2775]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2502 = mem[(32 * idx) + 317]
                                    _2630 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2630 + 36] = _2196
                                    mem[_2630 + 68] = 0
                                    mem[_2630 + 100] = this.address
                                    mem[_2630 + 132] = 128
                                    mem[_2630 + 164] = mem[_2630]
                                    s = 0
                                    while s < mem[_2630]:
                                        mem[_2630 + s + 196] = mem[_2630 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2630] % 32:
                                        require ext_code.size(address(_2502))
                                        call address(_2502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2196, 0, address(this.address), 128, mem[_2630 + 164 len mem[_2630] + 32]
                                    else:
                                        mem[floor32(mem[_2630]) + _2630 + 196] = mem[floor32(mem[_2630]) + _2630 + -(mem[_2630] % 32) + 228 len mem[_2630] % 32]
                                        require ext_code.size(address(_2502))
                                        call address(_2502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2196, 0, address(this.address), 128, mem[_2630], mem[_2630 + 196 len floor32(mem[_2630]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2373 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2629 = mem[(32 * idx) + 317]
                                    _2779 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2779 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2779 + 36] = _2196
                                    mem[_2779 + 68] = 0
                                    mem[_2779 + 100] = address(_2373)
                                    mem[_2779 + 132] = 128
                                    mem[_2779 + 164] = mem[_2779]
                                    s = 0
                                    while s < mem[_2779]:
                                        mem[_2779 + s + 196] = mem[_2779 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2779] % 32:
                                        require ext_code.size(address(_2629))
                                        call address(_2629).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2196, 0, address(_2373), 128, mem[_2779 + 164 len mem[_2779] + 32]
                                    else:
                                        mem[floor32(mem[_2779]) + _2779 + 196] = mem[floor32(mem[_2779]) + _2779 + -(mem[_2779] % 32) + 228 len mem[_2779] % 32]
                                        require ext_code.size(address(_2629))
                                        call address(_2629).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2196, 0, address(_2373), 128, mem[_2779], mem[_2779 + 196 len floor32(mem[_2779]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2197 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2504 = mem[(32 * idx) + 317]
                                    _2632 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2632 + 36] = 0
                                    mem[_2632 + 68] = _2197
                                    mem[_2632 + 100] = this.address
                                    mem[_2632 + 132] = 128
                                    mem[_2632 + 164] = mem[_2632]
                                    s = 0
                                    while s < mem[_2632]:
                                        mem[_2632 + s + 196] = mem[_2632 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2632] % 32:
                                        require ext_code.size(address(_2504))
                                        call address(_2504).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2197, address(this.address), 128, mem[_2632 + 164 len mem[_2632] + 32]
                                    else:
                                        mem[floor32(mem[_2632]) + _2632 + 196] = mem[floor32(mem[_2632]) + _2632 + -(mem[_2632] % 32) + 228 len mem[_2632] % 32]
                                        require ext_code.size(address(_2504))
                                        call address(_2504).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2197, address(this.address), 128, mem[_2632], mem[_2632 + 196 len floor32(mem[_2632]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2375 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2631 = mem[(32 * idx) + 317]
                                    _2783 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2783 + 36] = 0
                                    mem[_2783 + 68] = _2197
                                    mem[_2783 + 100] = address(_2375)
                                    mem[_2783 + 132] = 128
                                    mem[_2783 + 164] = mem[_2783]
                                    s = 0
                                    while s < mem[_2783]:
                                        mem[_2783 + s + 196] = mem[_2783 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2783] % 32:
                                        require ext_code.size(address(_2631))
                                        call address(_2631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2197, address(_2375), 128, mem[_2783 + 164 len mem[_2783] + 32]
                                    else:
                                        mem[floor32(mem[_2783]) + _2783 + 196] = mem[floor32(mem[_2783]) + _2783 + -(mem[_2783] % 32) + 228 len mem[_2783] % 32]
                                        require ext_code.size(address(_2631))
                                        call address(_2631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2197, address(_2375), 128, mem[_2783], mem[_2783 + 196 len floor32(mem[_2783]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2506 = mem[(32 * idx) + 317]
                                    _2634 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2634 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2634 + 36] = _2197
                                    mem[_2634 + 68] = 0
                                    mem[_2634 + 100] = this.address
                                    mem[_2634 + 132] = 128
                                    mem[_2634 + 164] = mem[_2634]
                                    s = 0
                                    while s < mem[_2634]:
                                        mem[_2634 + s + 196] = mem[_2634 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2634] % 32:
                                        require ext_code.size(address(_2506))
                                        call address(_2506).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2197, 0, address(this.address), 128, mem[_2634 + 164 len mem[_2634] + 32]
                                    else:
                                        mem[floor32(mem[_2634]) + _2634 + 196] = mem[floor32(mem[_2634]) + _2634 + -(mem[_2634] % 32) + 228 len mem[_2634] % 32]
                                        require ext_code.size(address(_2506))
                                        call address(_2506).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2197, 0, address(this.address), 128, mem[_2634], mem[_2634 + 196 len floor32(mem[_2634]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2377 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2633 = mem[(32 * idx) + 317]
                                    _2787 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2787 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2787 + 36] = _2197
                                    mem[_2787 + 68] = 0
                                    mem[_2787 + 100] = address(_2377)
                                    mem[_2787 + 132] = 128
                                    mem[_2787 + 164] = mem[_2787]
                                    s = 0
                                    while s < mem[_2787]:
                                        mem[_2787 + s + 196] = mem[_2787 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2787] % 32:
                                        require ext_code.size(address(_2633))
                                        call address(_2633).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2197, 0, address(_2377), 128, mem[_2787 + 164 len mem[_2787] + 32]
                                    else:
                                        mem[floor32(mem[_2787]) + _2787 + 196] = mem[floor32(mem[_2787]) + _2787 + -(mem[_2787] % 32) + 228 len mem[_2787] % 32]
                                        require ext_code.size(address(_2633))
                                        call address(_2633).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2197, 0, address(_2377), 128, mem[_2787], mem[_2787 + 196 len floor32(mem[_2787]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2198 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2508 = mem[(32 * idx) + 317]
                                    _2636 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2636 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2636 + 36] = 0
                                    mem[_2636 + 68] = _2198
                                    mem[_2636 + 100] = this.address
                                    mem[_2636 + 132] = 128
                                    mem[_2636 + 164] = mem[_2636]
                                    s = 0
                                    while s < mem[_2636]:
                                        mem[_2636 + s + 196] = mem[_2636 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2636] % 32:
                                        require ext_code.size(address(_2508))
                                        call address(_2508).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2198, address(this.address), 128, mem[_2636 + 164 len mem[_2636] + 32]
                                    else:
                                        mem[floor32(mem[_2636]) + _2636 + 196] = mem[floor32(mem[_2636]) + _2636 + -(mem[_2636] % 32) + 228 len mem[_2636] % 32]
                                        require ext_code.size(address(_2508))
                                        call address(_2508).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2198, address(this.address), 128, mem[_2636], mem[_2636 + 196 len floor32(mem[_2636]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2379 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2635 = mem[(32 * idx) + 317]
                                    _2791 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2791 + 36] = 0
                                    mem[_2791 + 68] = _2198
                                    mem[_2791 + 100] = address(_2379)
                                    mem[_2791 + 132] = 128
                                    mem[_2791 + 164] = mem[_2791]
                                    s = 0
                                    while s < mem[_2791]:
                                        mem[_2791 + s + 196] = mem[_2791 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2791] % 32:
                                        require ext_code.size(address(_2635))
                                        call address(_2635).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2198, address(_2379), 128, mem[_2791 + 164 len mem[_2791] + 32]
                                    else:
                                        mem[floor32(mem[_2791]) + _2791 + 196] = mem[floor32(mem[_2791]) + _2791 + -(mem[_2791] % 32) + 228 len mem[_2791] % 32]
                                        require ext_code.size(address(_2635))
                                        call address(_2635).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2198, address(_2379), 128, mem[_2791], mem[_2791 + 196 len floor32(mem[_2791]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2510 = mem[(32 * idx) + 317]
                                    _2638 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2638 + 36] = _2198
                                    mem[_2638 + 68] = 0
                                    mem[_2638 + 100] = this.address
                                    mem[_2638 + 132] = 128
                                    mem[_2638 + 164] = mem[_2638]
                                    s = 0
                                    while s < mem[_2638]:
                                        mem[_2638 + s + 196] = mem[_2638 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2638] % 32:
                                        require ext_code.size(address(_2510))
                                        call address(_2510).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2198, 0, address(this.address), 128, mem[_2638 + 164 len mem[_2638] + 32]
                                    else:
                                        mem[floor32(mem[_2638]) + _2638 + 196] = mem[floor32(mem[_2638]) + _2638 + -(mem[_2638] % 32) + 228 len mem[_2638] % 32]
                                        require ext_code.size(address(_2510))
                                        call address(_2510).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2198, 0, address(this.address), 128, mem[_2638], mem[_2638 + 196 len floor32(mem[_2638]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2381 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2637 = mem[(32 * idx) + 317]
                                    _2795 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2795 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2795 + 36] = _2198
                                    mem[_2795 + 68] = 0
                                    mem[_2795 + 100] = address(_2381)
                                    mem[_2795 + 132] = 128
                                    mem[_2795 + 164] = mem[_2795]
                                    s = 0
                                    while s < mem[_2795]:
                                        mem[_2795 + s + 196] = mem[_2795 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2795] % 32:
                                        require ext_code.size(address(_2637))
                                        call address(_2637).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2198, 0, address(_2381), 128, mem[_2795 + 164 len mem[_2795] + 32]
                                    else:
                                        mem[floor32(mem[_2795]) + _2795 + 196] = mem[floor32(mem[_2795]) + _2795 + -(mem[_2795] % 32) + 228 len mem[_2795] % 32]
                                        require ext_code.size(address(_2637))
                                        call address(_2637).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2198, 0, address(_2381), 128, mem[_2795], mem[_2795 + 196 len floor32(mem[_2795]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
        else:
            require not arg3
            require arg4.length >= 128
            require cd[(arg4 + 68)] <= 4294967296
            require cd[(arg4 + 68)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
            mem[285] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[317 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
            require cd[(arg4 + 100)] <= 4294967296
            require cd[(arg4 + 100)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 349 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            require cd[(arg4 + 132)] <= 4294967296
            require cd[(arg4 + 132)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
            require 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 385] = mem[361 len 20]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2199 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2512 = mem[(32 * idx) + 317]
                                    _2640 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2640 + 36] = 0
                                    mem[_2640 + 68] = _2199
                                    mem[_2640 + 100] = this.address
                                    mem[_2640 + 132] = 128
                                    mem[_2640 + 164] = mem[_2640]
                                    s = 0
                                    while s < mem[_2640]:
                                        mem[_2640 + s + 196] = mem[_2640 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2640] % 32:
                                        require ext_code.size(address(_2512))
                                        call address(_2512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2199, address(this.address), 128, mem[_2640 + 164 len mem[_2640] + 32]
                                    else:
                                        mem[floor32(mem[_2640]) + _2640 + 196] = mem[floor32(mem[_2640]) + _2640 + -(mem[_2640] % 32) + 228 len mem[_2640] % 32]
                                        require ext_code.size(address(_2512))
                                        call address(_2512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2199, address(this.address), 128, mem[_2640], mem[_2640 + 196 len floor32(mem[_2640]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2383 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2639 = mem[(32 * idx) + 317]
                                    _2799 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2799 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2799 + 36] = 0
                                    mem[_2799 + 68] = _2199
                                    mem[_2799 + 100] = address(_2383)
                                    mem[_2799 + 132] = 128
                                    mem[_2799 + 164] = mem[_2799]
                                    s = 0
                                    while s < mem[_2799]:
                                        mem[_2799 + s + 196] = mem[_2799 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2799] % 32:
                                        require ext_code.size(address(_2639))
                                        call address(_2639).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2199, address(_2383), 128, mem[_2799 + 164 len mem[_2799] + 32]
                                    else:
                                        mem[floor32(mem[_2799]) + _2799 + 196] = mem[floor32(mem[_2799]) + _2799 + -(mem[_2799] % 32) + 228 len mem[_2799] % 32]
                                        require ext_code.size(address(_2639))
                                        call address(_2639).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2199, address(_2383), 128, mem[_2799], mem[_2799 + 196 len floor32(mem[_2799]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2514 = mem[(32 * idx) + 317]
                                    _2642 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2642 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2642 + 36] = _2199
                                    mem[_2642 + 68] = 0
                                    mem[_2642 + 100] = this.address
                                    mem[_2642 + 132] = 128
                                    mem[_2642 + 164] = mem[_2642]
                                    s = 0
                                    while s < mem[_2642]:
                                        mem[_2642 + s + 196] = mem[_2642 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2642] % 32:
                                        require ext_code.size(address(_2514))
                                        call address(_2514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2199, 0, address(this.address), 128, mem[_2642 + 164 len mem[_2642] + 32]
                                    else:
                                        mem[floor32(mem[_2642]) + _2642 + 196] = mem[floor32(mem[_2642]) + _2642 + -(mem[_2642] % 32) + 228 len mem[_2642] % 32]
                                        require ext_code.size(address(_2514))
                                        call address(_2514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2199, 0, address(this.address), 128, mem[_2642], mem[_2642 + 196 len floor32(mem[_2642]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2385 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2641 = mem[(32 * idx) + 317]
                                    _2803 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2803 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2803 + 36] = _2199
                                    mem[_2803 + 68] = 0
                                    mem[_2803 + 100] = address(_2385)
                                    mem[_2803 + 132] = 128
                                    mem[_2803 + 164] = mem[_2803]
                                    s = 0
                                    while s < mem[_2803]:
                                        mem[_2803 + s + 196] = mem[_2803 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2803] % 32:
                                        require ext_code.size(address(_2641))
                                        call address(_2641).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2199, 0, address(_2385), 128, mem[_2803 + 164 len mem[_2803] + 32]
                                    else:
                                        mem[floor32(mem[_2803]) + _2803 + 196] = mem[floor32(mem[_2803]) + _2803 + -(mem[_2803] % 32) + 228 len mem[_2803] % 32]
                                        require ext_code.size(address(_2641))
                                        call address(_2641).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2199, 0, address(_2385), 128, mem[_2803], mem[_2803 + 196 len floor32(mem[_2803]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2200 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2516 = mem[(32 * idx) + 317]
                                    _2644 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2644 + 36] = 0
                                    mem[_2644 + 68] = _2200
                                    mem[_2644 + 100] = this.address
                                    mem[_2644 + 132] = 128
                                    mem[_2644 + 164] = mem[_2644]
                                    s = 0
                                    while s < mem[_2644]:
                                        mem[_2644 + s + 196] = mem[_2644 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2644] % 32:
                                        require ext_code.size(address(_2516))
                                        call address(_2516).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2200, address(this.address), 128, mem[_2644 + 164 len mem[_2644] + 32]
                                    else:
                                        mem[floor32(mem[_2644]) + _2644 + 196] = mem[floor32(mem[_2644]) + _2644 + -(mem[_2644] % 32) + 228 len mem[_2644] % 32]
                                        require ext_code.size(address(_2516))
                                        call address(_2516).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2200, address(this.address), 128, mem[_2644], mem[_2644 + 196 len floor32(mem[_2644]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2387 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2643 = mem[(32 * idx) + 317]
                                    _2807 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2807 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2807 + 36] = 0
                                    mem[_2807 + 68] = _2200
                                    mem[_2807 + 100] = address(_2387)
                                    mem[_2807 + 132] = 128
                                    mem[_2807 + 164] = mem[_2807]
                                    s = 0
                                    while s < mem[_2807]:
                                        mem[_2807 + s + 196] = mem[_2807 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2807] % 32:
                                        require ext_code.size(address(_2643))
                                        call address(_2643).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2200, address(_2387), 128, mem[_2807 + 164 len mem[_2807] + 32]
                                    else:
                                        mem[floor32(mem[_2807]) + _2807 + 196] = mem[floor32(mem[_2807]) + _2807 + -(mem[_2807] % 32) + 228 len mem[_2807] % 32]
                                        require ext_code.size(address(_2643))
                                        call address(_2643).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2200, address(_2387), 128, mem[_2807], mem[_2807 + 196 len floor32(mem[_2807]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2518 = mem[(32 * idx) + 317]
                                    _2646 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2646 + 36] = _2200
                                    mem[_2646 + 68] = 0
                                    mem[_2646 + 100] = this.address
                                    mem[_2646 + 132] = 128
                                    mem[_2646 + 164] = mem[_2646]
                                    s = 0
                                    while s < mem[_2646]:
                                        mem[_2646 + s + 196] = mem[_2646 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2646] % 32:
                                        require ext_code.size(address(_2518))
                                        call address(_2518).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2200, 0, address(this.address), 128, mem[_2646 + 164 len mem[_2646] + 32]
                                    else:
                                        mem[floor32(mem[_2646]) + _2646 + 196] = mem[floor32(mem[_2646]) + _2646 + -(mem[_2646] % 32) + 228 len mem[_2646] % 32]
                                        require ext_code.size(address(_2518))
                                        call address(_2518).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2200, 0, address(this.address), 128, mem[_2646], mem[_2646 + 196 len floor32(mem[_2646]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2389 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2645 = mem[(32 * idx) + 317]
                                    _2811 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2811 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2811 + 36] = _2200
                                    mem[_2811 + 68] = 0
                                    mem[_2811 + 100] = address(_2389)
                                    mem[_2811 + 132] = 128
                                    mem[_2811 + 164] = mem[_2811]
                                    s = 0
                                    while s < mem[_2811]:
                                        mem[_2811 + s + 196] = mem[_2811 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2811] % 32:
                                        require ext_code.size(address(_2645))
                                        call address(_2645).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2200, 0, address(_2389), 128, mem[_2811 + 164 len mem[_2811] + 32]
                                    else:
                                        mem[floor32(mem[_2811]) + _2811 + 196] = mem[floor32(mem[_2811]) + _2811 + -(mem[_2811] % 32) + 228 len mem[_2811] % 32]
                                        require ext_code.size(address(_2645))
                                        call address(_2645).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2200, 0, address(_2389), 128, mem[_2811], mem[_2811 + 196 len floor32(mem[_2811]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2201 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2520 = mem[(32 * idx) + 317]
                                    _2648 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2648 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2648 + 36] = 0
                                    mem[_2648 + 68] = _2201
                                    mem[_2648 + 100] = this.address
                                    mem[_2648 + 132] = 128
                                    mem[_2648 + 164] = mem[_2648]
                                    s = 0
                                    while s < mem[_2648]:
                                        mem[_2648 + s + 196] = mem[_2648 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2648] % 32:
                                        require ext_code.size(address(_2520))
                                        call address(_2520).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2201, address(this.address), 128, mem[_2648 + 164 len mem[_2648] + 32]
                                    else:
                                        mem[floor32(mem[_2648]) + _2648 + 196] = mem[floor32(mem[_2648]) + _2648 + -(mem[_2648] % 32) + 228 len mem[_2648] % 32]
                                        require ext_code.size(address(_2520))
                                        call address(_2520).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2201, address(this.address), 128, mem[_2648], mem[_2648 + 196 len floor32(mem[_2648]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2391 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2647 = mem[(32 * idx) + 317]
                                    _2815 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2815 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2815 + 36] = 0
                                    mem[_2815 + 68] = _2201
                                    mem[_2815 + 100] = address(_2391)
                                    mem[_2815 + 132] = 128
                                    mem[_2815 + 164] = mem[_2815]
                                    s = 0
                                    while s < mem[_2815]:
                                        mem[_2815 + s + 196] = mem[_2815 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2815] % 32:
                                        require ext_code.size(address(_2647))
                                        call address(_2647).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2201, address(_2391), 128, mem[_2815 + 164 len mem[_2815] + 32]
                                    else:
                                        mem[floor32(mem[_2815]) + _2815 + 196] = mem[floor32(mem[_2815]) + _2815 + -(mem[_2815] % 32) + 228 len mem[_2815] % 32]
                                        require ext_code.size(address(_2647))
                                        call address(_2647).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2201, address(_2391), 128, mem[_2815], mem[_2815 + 196 len floor32(mem[_2815]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2522 = mem[(32 * idx) + 317]
                                    _2650 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2650 + 36] = _2201
                                    mem[_2650 + 68] = 0
                                    mem[_2650 + 100] = this.address
                                    mem[_2650 + 132] = 128
                                    mem[_2650 + 164] = mem[_2650]
                                    s = 0
                                    while s < mem[_2650]:
                                        mem[_2650 + s + 196] = mem[_2650 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2650] % 32:
                                        require ext_code.size(address(_2522))
                                        call address(_2522).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2201, 0, address(this.address), 128, mem[_2650 + 164 len mem[_2650] + 32]
                                    else:
                                        mem[floor32(mem[_2650]) + _2650 + 196] = mem[floor32(mem[_2650]) + _2650 + -(mem[_2650] % 32) + 228 len mem[_2650] % 32]
                                        require ext_code.size(address(_2522))
                                        call address(_2522).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2201, 0, address(this.address), 128, mem[_2650], mem[_2650 + 196 len floor32(mem[_2650]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2393 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2649 = mem[(32 * idx) + 317]
                                    _2819 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2819 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2819 + 36] = _2201
                                    mem[_2819 + 68] = 0
                                    mem[_2819 + 100] = address(_2393)
                                    mem[_2819 + 132] = 128
                                    mem[_2819 + 164] = mem[_2819]
                                    s = 0
                                    while s < mem[_2819]:
                                        mem[_2819 + s + 196] = mem[_2819 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2819] % 32:
                                        require ext_code.size(address(_2649))
                                        call address(_2649).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2201, 0, address(_2393), 128, mem[_2819 + 164 len mem[_2819] + 32]
                                    else:
                                        mem[floor32(mem[_2819]) + _2819 + 196] = mem[floor32(mem[_2819]) + _2819 + -(mem[_2819] % 32) + 228 len mem[_2819] % 32]
                                        require ext_code.size(address(_2649))
                                        call address(_2649).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2201, 0, address(_2393), 128, mem[_2819], mem[_2819 + 196 len floor32(mem[_2819]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2202 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2524 = mem[(32 * idx) + 317]
                                    _2652 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2652 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2652 + 36] = 0
                                    mem[_2652 + 68] = _2202
                                    mem[_2652 + 100] = this.address
                                    mem[_2652 + 132] = 128
                                    mem[_2652 + 164] = mem[_2652]
                                    s = 0
                                    while s < mem[_2652]:
                                        mem[_2652 + s + 196] = mem[_2652 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2652] % 32:
                                        require ext_code.size(address(_2524))
                                        call address(_2524).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2202, address(this.address), 128, mem[_2652 + 164 len mem[_2652] + 32]
                                    else:
                                        mem[floor32(mem[_2652]) + _2652 + 196] = mem[floor32(mem[_2652]) + _2652 + -(mem[_2652] % 32) + 228 len mem[_2652] % 32]
                                        require ext_code.size(address(_2524))
                                        call address(_2524).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2202, address(this.address), 128, mem[_2652], mem[_2652 + 196 len floor32(mem[_2652]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2395 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2651 = mem[(32 * idx) + 317]
                                    _2823 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2823 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2823 + 36] = 0
                                    mem[_2823 + 68] = _2202
                                    mem[_2823 + 100] = address(_2395)
                                    mem[_2823 + 132] = 128
                                    mem[_2823 + 164] = mem[_2823]
                                    s = 0
                                    while s < mem[_2823]:
                                        mem[_2823 + s + 196] = mem[_2823 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2823] % 32:
                                        require ext_code.size(address(_2651))
                                        call address(_2651).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2202, address(_2395), 128, mem[_2823 + 164 len mem[_2823] + 32]
                                    else:
                                        mem[floor32(mem[_2823]) + _2823 + 196] = mem[floor32(mem[_2823]) + _2823 + -(mem[_2823] % 32) + 228 len mem[_2823] % 32]
                                        require ext_code.size(address(_2651))
                                        call address(_2651).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2202, address(_2395), 128, mem[_2823], mem[_2823 + 196 len floor32(mem[_2823]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2526 = mem[(32 * idx) + 317]
                                    _2654 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2654 + 36] = _2202
                                    mem[_2654 + 68] = 0
                                    mem[_2654 + 100] = this.address
                                    mem[_2654 + 132] = 128
                                    mem[_2654 + 164] = mem[_2654]
                                    s = 0
                                    while s < mem[_2654]:
                                        mem[_2654 + s + 196] = mem[_2654 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2654] % 32:
                                        require ext_code.size(address(_2526))
                                        call address(_2526).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2202, 0, address(this.address), 128, mem[_2654 + 164 len mem[_2654] + 32]
                                    else:
                                        mem[floor32(mem[_2654]) + _2654 + 196] = mem[floor32(mem[_2654]) + _2654 + -(mem[_2654] % 32) + 228 len mem[_2654] % 32]
                                        require ext_code.size(address(_2526))
                                        call address(_2526).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2202, 0, address(this.address), 128, mem[_2654], mem[_2654 + 196 len floor32(mem[_2654]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2397 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2653 = mem[(32 * idx) + 317]
                                    _2827 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2827 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2827 + 36] = _2202
                                    mem[_2827 + 68] = 0
                                    mem[_2827 + 100] = address(_2397)
                                    mem[_2827 + 132] = 128
                                    mem[_2827 + 164] = mem[_2827]
                                    s = 0
                                    while s < mem[_2827]:
                                        mem[_2827 + s + 196] = mem[_2827 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2827] % 32:
                                        require ext_code.size(address(_2653))
                                        call address(_2653).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2202, 0, address(_2397), 128, mem[_2827 + 164 len mem[_2827] + 32]
                                    else:
                                        mem[floor32(mem[_2827]) + _2827 + 196] = mem[floor32(mem[_2827]) + _2827 + -(mem[_2827] % 32) + 228 len mem[_2827] % 32]
                                        require ext_code.size(address(_2653))
                                        call address(_2653).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2202, 0, address(_2397), 128, mem[_2827], mem[_2827 + 196 len floor32(mem[_2827]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2203 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2528 = mem[(32 * idx) + 317]
                                    _2656 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2656 + 36] = 0
                                    mem[_2656 + 68] = _2203
                                    mem[_2656 + 100] = this.address
                                    mem[_2656 + 132] = 128
                                    mem[_2656 + 164] = mem[_2656]
                                    s = 0
                                    while s < mem[_2656]:
                                        mem[_2656 + s + 196] = mem[_2656 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2656] % 32:
                                        require ext_code.size(address(_2528))
                                        call address(_2528).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2203, address(this.address), 128, mem[_2656 + 164 len mem[_2656] + 32]
                                    else:
                                        mem[floor32(mem[_2656]) + _2656 + 196] = mem[floor32(mem[_2656]) + _2656 + -(mem[_2656] % 32) + 228 len mem[_2656] % 32]
                                        require ext_code.size(address(_2528))
                                        call address(_2528).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2203, address(this.address), 128, mem[_2656], mem[_2656 + 196 len floor32(mem[_2656]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2399 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2655 = mem[(32 * idx) + 317]
                                    _2831 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2831 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2831 + 36] = 0
                                    mem[_2831 + 68] = _2203
                                    mem[_2831 + 100] = address(_2399)
                                    mem[_2831 + 132] = 128
                                    mem[_2831 + 164] = mem[_2831]
                                    s = 0
                                    while s < mem[_2831]:
                                        mem[_2831 + s + 196] = mem[_2831 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2831] % 32:
                                        require ext_code.size(address(_2655))
                                        call address(_2655).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2203, address(_2399), 128, mem[_2831 + 164 len mem[_2831] + 32]
                                    else:
                                        mem[floor32(mem[_2831]) + _2831 + 196] = mem[floor32(mem[_2831]) + _2831 + -(mem[_2831] % 32) + 228 len mem[_2831] % 32]
                                        require ext_code.size(address(_2655))
                                        call address(_2655).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2203, address(_2399), 128, mem[_2831], mem[_2831 + 196 len floor32(mem[_2831]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2530 = mem[(32 * idx) + 317]
                                    _2658 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2658 + 36] = _2203
                                    mem[_2658 + 68] = 0
                                    mem[_2658 + 100] = this.address
                                    mem[_2658 + 132] = 128
                                    mem[_2658 + 164] = mem[_2658]
                                    s = 0
                                    while s < mem[_2658]:
                                        mem[_2658 + s + 196] = mem[_2658 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2658] % 32:
                                        require ext_code.size(address(_2530))
                                        call address(_2530).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2203, 0, address(this.address), 128, mem[_2658 + 164 len mem[_2658] + 32]
                                    else:
                                        mem[floor32(mem[_2658]) + _2658 + 196] = mem[floor32(mem[_2658]) + _2658 + -(mem[_2658] % 32) + 228 len mem[_2658] % 32]
                                        require ext_code.size(address(_2530))
                                        call address(_2530).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2203, 0, address(this.address), 128, mem[_2658], mem[_2658 + 196 len floor32(mem[_2658]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2401 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2657 = mem[(32 * idx) + 317]
                                    _2835 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2835 + 36] = _2203
                                    mem[_2835 + 68] = 0
                                    mem[_2835 + 100] = address(_2401)
                                    mem[_2835 + 132] = 128
                                    mem[_2835 + 164] = mem[_2835]
                                    s = 0
                                    while s < mem[_2835]:
                                        mem[_2835 + s + 196] = mem[_2835 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2835] % 32:
                                        require ext_code.size(address(_2657))
                                        call address(_2657).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2203, 0, address(_2401), 128, mem[_2835 + 164 len mem[_2835] + 32]
                                    else:
                                        mem[floor32(mem[_2835]) + _2835 + 196] = mem[floor32(mem[_2835]) + _2835 + -(mem[_2835] % 32) + 228 len mem[_2835] % 32]
                                        require ext_code.size(address(_2657))
                                        call address(_2657).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2203, 0, address(_2401), 128, mem[_2835], mem[_2835 + 196 len floor32(mem[_2835]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2204 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2532 = mem[(32 * idx) + 317]
                                    _2660 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2660 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2660 + 36] = 0
                                    mem[_2660 + 68] = _2204
                                    mem[_2660 + 100] = this.address
                                    mem[_2660 + 132] = 128
                                    mem[_2660 + 164] = mem[_2660]
                                    s = 0
                                    while s < mem[_2660]:
                                        mem[_2660 + s + 196] = mem[_2660 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2660] % 32:
                                        require ext_code.size(address(_2532))
                                        call address(_2532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2204, address(this.address), 128, mem[_2660 + 164 len mem[_2660] + 32]
                                    else:
                                        mem[floor32(mem[_2660]) + _2660 + 196] = mem[floor32(mem[_2660]) + _2660 + -(mem[_2660] % 32) + 228 len mem[_2660] % 32]
                                        require ext_code.size(address(_2532))
                                        call address(_2532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2204, address(this.address), 128, mem[_2660], mem[_2660 + 196 len floor32(mem[_2660]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2403 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2659 = mem[(32 * idx) + 317]
                                    _2839 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2839 + 36] = 0
                                    mem[_2839 + 68] = _2204
                                    mem[_2839 + 100] = address(_2403)
                                    mem[_2839 + 132] = 128
                                    mem[_2839 + 164] = mem[_2839]
                                    s = 0
                                    while s < mem[_2839]:
                                        mem[_2839 + s + 196] = mem[_2839 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2839] % 32:
                                        require ext_code.size(address(_2659))
                                        call address(_2659).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2204, address(_2403), 128, mem[_2839 + 164 len mem[_2839] + 32]
                                    else:
                                        mem[floor32(mem[_2839]) + _2839 + 196] = mem[floor32(mem[_2839]) + _2839 + -(mem[_2839] % 32) + 228 len mem[_2839] % 32]
                                        require ext_code.size(address(_2659))
                                        call address(_2659).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2204, address(_2403), 128, mem[_2839], mem[_2839 + 196 len floor32(mem[_2839]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2534 = mem[(32 * idx) + 317]
                                    _2662 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2662 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2662 + 36] = _2204
                                    mem[_2662 + 68] = 0
                                    mem[_2662 + 100] = this.address
                                    mem[_2662 + 132] = 128
                                    mem[_2662 + 164] = mem[_2662]
                                    s = 0
                                    while s < mem[_2662]:
                                        mem[_2662 + s + 196] = mem[_2662 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2662] % 32:
                                        require ext_code.size(address(_2534))
                                        call address(_2534).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2204, 0, address(this.address), 128, mem[_2662 + 164 len mem[_2662] + 32]
                                    else:
                                        mem[floor32(mem[_2662]) + _2662 + 196] = mem[floor32(mem[_2662]) + _2662 + -(mem[_2662] % 32) + 228 len mem[_2662] % 32]
                                        require ext_code.size(address(_2534))
                                        call address(_2534).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2204, 0, address(this.address), 128, mem[_2662], mem[_2662 + 196 len floor32(mem[_2662]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2405 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2661 = mem[(32 * idx) + 317]
                                    _2843 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2843 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2843 + 36] = _2204
                                    mem[_2843 + 68] = 0
                                    mem[_2843 + 100] = address(_2405)
                                    mem[_2843 + 132] = 128
                                    mem[_2843 + 164] = mem[_2843]
                                    s = 0
                                    while s < mem[_2843]:
                                        mem[_2843 + s + 196] = mem[_2843 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2843] % 32:
                                        require ext_code.size(address(_2661))
                                        call address(_2661).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2204, 0, address(_2405), 128, mem[_2843 + 164 len mem[_2843] + 32]
                                    else:
                                        mem[floor32(mem[_2843]) + _2843 + 196] = mem[floor32(mem[_2843]) + _2843 + -(mem[_2843] % 32) + 228 len mem[_2843] % 32]
                                        require ext_code.size(address(_2661))
                                        call address(_2661).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2204, 0, address(_2405), 128, mem[_2843], mem[_2843 + 196 len floor32(mem[_2843]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2205 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2536 = mem[(32 * idx) + 317]
                                    _2664 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2664 + 36] = 0
                                    mem[_2664 + 68] = _2205
                                    mem[_2664 + 100] = this.address
                                    mem[_2664 + 132] = 128
                                    mem[_2664 + 164] = mem[_2664]
                                    s = 0
                                    while s < mem[_2664]:
                                        mem[_2664 + s + 196] = mem[_2664 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2664] % 32:
                                        require ext_code.size(address(_2536))
                                        call address(_2536).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2205, address(this.address), 128, mem[_2664 + 164 len mem[_2664] + 32]
                                    else:
                                        mem[floor32(mem[_2664]) + _2664 + 196] = mem[floor32(mem[_2664]) + _2664 + -(mem[_2664] % 32) + 228 len mem[_2664] % 32]
                                        require ext_code.size(address(_2536))
                                        call address(_2536).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2205, address(this.address), 128, mem[_2664], mem[_2664 + 196 len floor32(mem[_2664]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2407 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2663 = mem[(32 * idx) + 317]
                                    _2847 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2847 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2847 + 36] = 0
                                    mem[_2847 + 68] = _2205
                                    mem[_2847 + 100] = address(_2407)
                                    mem[_2847 + 132] = 128
                                    mem[_2847 + 164] = mem[_2847]
                                    s = 0
                                    while s < mem[_2847]:
                                        mem[_2847 + s + 196] = mem[_2847 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2847] % 32:
                                        require ext_code.size(address(_2663))
                                        call address(_2663).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2205, address(_2407), 128, mem[_2847 + 164 len mem[_2847] + 32]
                                    else:
                                        mem[floor32(mem[_2847]) + _2847 + 196] = mem[floor32(mem[_2847]) + _2847 + -(mem[_2847] % 32) + 228 len mem[_2847] % 32]
                                        require ext_code.size(address(_2663))
                                        call address(_2663).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2205, address(_2407), 128, mem[_2847], mem[_2847 + 196 len floor32(mem[_2847]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2538 = mem[(32 * idx) + 317]
                                    _2666 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2666 + 36] = _2205
                                    mem[_2666 + 68] = 0
                                    mem[_2666 + 100] = this.address
                                    mem[_2666 + 132] = 128
                                    mem[_2666 + 164] = mem[_2666]
                                    s = 0
                                    while s < mem[_2666]:
                                        mem[_2666 + s + 196] = mem[_2666 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2666] % 32:
                                        require ext_code.size(address(_2538))
                                        call address(_2538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2205, 0, address(this.address), 128, mem[_2666 + 164 len mem[_2666] + 32]
                                    else:
                                        mem[floor32(mem[_2666]) + _2666 + 196] = mem[floor32(mem[_2666]) + _2666 + -(mem[_2666] % 32) + 228 len mem[_2666] % 32]
                                        require ext_code.size(address(_2538))
                                        call address(_2538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2205, 0, address(this.address), 128, mem[_2666], mem[_2666 + 196 len floor32(mem[_2666]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2409 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2665 = mem[(32 * idx) + 317]
                                    _2851 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2851 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2851 + 36] = _2205
                                    mem[_2851 + 68] = 0
                                    mem[_2851 + 100] = address(_2409)
                                    mem[_2851 + 132] = 128
                                    mem[_2851 + 164] = mem[_2851]
                                    s = 0
                                    while s < mem[_2851]:
                                        mem[_2851 + s + 196] = mem[_2851 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2851] % 32:
                                        require ext_code.size(address(_2665))
                                        call address(_2665).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2205, 0, address(_2409), 128, mem[_2851 + 164 len mem[_2851] + 32]
                                    else:
                                        mem[floor32(mem[_2851]) + _2851 + 196] = mem[floor32(mem[_2851]) + _2851 + -(mem[_2851] % 32) + 228 len mem[_2851] % 32]
                                        require ext_code.size(address(_2665))
                                        call address(_2665).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2205, 0, address(_2409), 128, mem[_2851], mem[_2851 + 196 len floor32(mem[_2851]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2206 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2540 = mem[(32 * idx) + 317]
                                    _2668 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2668 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2668 + 36] = 0
                                    mem[_2668 + 68] = _2206
                                    mem[_2668 + 100] = this.address
                                    mem[_2668 + 132] = 128
                                    mem[_2668 + 164] = mem[_2668]
                                    s = 0
                                    while s < mem[_2668]:
                                        mem[_2668 + s + 196] = mem[_2668 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2668] % 32:
                                        require ext_code.size(address(_2540))
                                        call address(_2540).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2206, address(this.address), 128, mem[_2668 + 164 len mem[_2668] + 32]
                                    else:
                                        mem[floor32(mem[_2668]) + _2668 + 196] = mem[floor32(mem[_2668]) + _2668 + -(mem[_2668] % 32) + 228 len mem[_2668] % 32]
                                        require ext_code.size(address(_2540))
                                        call address(_2540).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2206, address(this.address), 128, mem[_2668], mem[_2668 + 196 len floor32(mem[_2668]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2411 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2667 = mem[(32 * idx) + 317]
                                    _2855 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2855 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2855 + 36] = 0
                                    mem[_2855 + 68] = _2206
                                    mem[_2855 + 100] = address(_2411)
                                    mem[_2855 + 132] = 128
                                    mem[_2855 + 164] = mem[_2855]
                                    s = 0
                                    while s < mem[_2855]:
                                        mem[_2855 + s + 196] = mem[_2855 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2855] % 32:
                                        require ext_code.size(address(_2667))
                                        call address(_2667).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2206, address(_2411), 128, mem[_2855 + 164 len mem[_2855] + 32]
                                    else:
                                        mem[floor32(mem[_2855]) + _2855 + 196] = mem[floor32(mem[_2855]) + _2855 + -(mem[_2855] % 32) + 228 len mem[_2855] % 32]
                                        require ext_code.size(address(_2667))
                                        call address(_2667).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2206, address(_2411), 128, mem[_2855], mem[_2855 + 196 len floor32(mem[_2855]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2542 = mem[(32 * idx) + 317]
                                    _2670 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2670 + 36] = _2206
                                    mem[_2670 + 68] = 0
                                    mem[_2670 + 100] = this.address
                                    mem[_2670 + 132] = 128
                                    mem[_2670 + 164] = mem[_2670]
                                    s = 0
                                    while s < mem[_2670]:
                                        mem[_2670 + s + 196] = mem[_2670 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2670] % 32:
                                        require ext_code.size(address(_2542))
                                        call address(_2542).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2206, 0, address(this.address), 128, mem[_2670 + 164 len mem[_2670] + 32]
                                    else:
                                        mem[floor32(mem[_2670]) + _2670 + 196] = mem[floor32(mem[_2670]) + _2670 + -(mem[_2670] % 32) + 228 len mem[_2670] % 32]
                                        require ext_code.size(address(_2542))
                                        call address(_2542).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2206, 0, address(this.address), 128, mem[_2670], mem[_2670 + 196 len floor32(mem[_2670]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2413 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2669 = mem[(32 * idx) + 317]
                                    _2859 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2859 + 36] = _2206
                                    mem[_2859 + 68] = 0
                                    mem[_2859 + 100] = address(_2413)
                                    mem[_2859 + 132] = 128
                                    mem[_2859 + 164] = mem[_2859]
                                    s = 0
                                    while s < mem[_2859]:
                                        mem[_2859 + s + 196] = mem[_2859 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2859] % 32:
                                        require ext_code.size(address(_2669))
                                        call address(_2669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2206, 0, address(_2413), 128, mem[_2859 + 164 len mem[_2859] + 32]
                                    else:
                                        mem[floor32(mem[_2859]) + _2859 + 196] = mem[floor32(mem[_2859]) + _2859 + -(mem[_2859] % 32) + 228 len mem[_2859] % 32]
                                        require ext_code.size(address(_2669))
                                        call address(_2669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2206, 0, address(_2413), 128, mem[_2859], mem[_2859 + 196 len floor32(mem[_2859]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
    else:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Library: ZERO_ADDRESS'
        mem[128] = address(ext_call.return_data[0])
        mem[148] = address(ext_call.return_data[0])
        mem[96] = 40
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = 0xc35dadb65012ec5796536bd9864ed8773abc74c4000000000000000000000000
        mem[221] = sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0]))
        mem[253] = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303
        mem[168] = 85
        if address(sha3(0, 14077599008769109079, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303)) != msg.sender:
            revert with 0, 'Unauthorized'
        if not arg2:
            require arg4.length >= 128
            require cd[(arg4 + 68)] <= 4294967296
            require cd[(arg4 + 68)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
            mem[285] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[317 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
            require cd[(arg4 + 100)] <= 4294967296
            require cd[(arg4 + 100)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 349 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            require cd[(arg4 + 132)] <= 4294967296
            require cd[(arg4 + 132)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
            require 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 385] = mem[361 len 20]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2207 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2544 = mem[(32 * idx) + 317]
                                    _2672 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2672 + 36] = 0
                                    mem[_2672 + 68] = _2207
                                    mem[_2672 + 100] = this.address
                                    mem[_2672 + 132] = 128
                                    mem[_2672 + 164] = mem[_2672]
                                    s = 0
                                    while s < mem[_2672]:
                                        mem[_2672 + s + 196] = mem[_2672 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2672] % 32:
                                        require ext_code.size(address(_2544))
                                        call address(_2544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2207, address(this.address), 128, mem[_2672 + 164 len mem[_2672] + 32]
                                    else:
                                        mem[floor32(mem[_2672]) + _2672 + 196] = mem[floor32(mem[_2672]) + _2672 + -(mem[_2672] % 32) + 228 len mem[_2672] % 32]
                                        require ext_code.size(address(_2544))
                                        call address(_2544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2207, address(this.address), 128, mem[_2672], mem[_2672 + 196 len floor32(mem[_2672]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2415 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2671 = mem[(32 * idx) + 317]
                                    _2863 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2863 + 36] = 0
                                    mem[_2863 + 68] = _2207
                                    mem[_2863 + 100] = address(_2415)
                                    mem[_2863 + 132] = 128
                                    mem[_2863 + 164] = mem[_2863]
                                    s = 0
                                    while s < mem[_2863]:
                                        mem[_2863 + s + 196] = mem[_2863 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2863] % 32:
                                        require ext_code.size(address(_2671))
                                        call address(_2671).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2207, address(_2415), 128, mem[_2863 + 164 len mem[_2863] + 32]
                                    else:
                                        mem[floor32(mem[_2863]) + _2863 + 196] = mem[floor32(mem[_2863]) + _2863 + -(mem[_2863] % 32) + 228 len mem[_2863] % 32]
                                        require ext_code.size(address(_2671))
                                        call address(_2671).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2207, address(_2415), 128, mem[_2863], mem[_2863 + 196 len floor32(mem[_2863]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2546 = mem[(32 * idx) + 317]
                                    _2674 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2674 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2674 + 36] = _2207
                                    mem[_2674 + 68] = 0
                                    mem[_2674 + 100] = this.address
                                    mem[_2674 + 132] = 128
                                    mem[_2674 + 164] = mem[_2674]
                                    s = 0
                                    while s < mem[_2674]:
                                        mem[_2674 + s + 196] = mem[_2674 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2674] % 32:
                                        require ext_code.size(address(_2546))
                                        call address(_2546).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2207, 0, address(this.address), 128, mem[_2674 + 164 len mem[_2674] + 32]
                                    else:
                                        mem[floor32(mem[_2674]) + _2674 + 196] = mem[floor32(mem[_2674]) + _2674 + -(mem[_2674] % 32) + 228 len mem[_2674] % 32]
                                        require ext_code.size(address(_2546))
                                        call address(_2546).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2207, 0, address(this.address), 128, mem[_2674], mem[_2674 + 196 len floor32(mem[_2674]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2417 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2673 = mem[(32 * idx) + 317]
                                    _2867 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2867 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2867 + 36] = _2207
                                    mem[_2867 + 68] = 0
                                    mem[_2867 + 100] = address(_2417)
                                    mem[_2867 + 132] = 128
                                    mem[_2867 + 164] = mem[_2867]
                                    s = 0
                                    while s < mem[_2867]:
                                        mem[_2867 + s + 196] = mem[_2867 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2867] % 32:
                                        require ext_code.size(address(_2673))
                                        call address(_2673).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2207, 0, address(_2417), 128, mem[_2867 + 164 len mem[_2867] + 32]
                                    else:
                                        mem[floor32(mem[_2867]) + _2867 + 196] = mem[floor32(mem[_2867]) + _2867 + -(mem[_2867] % 32) + 228 len mem[_2867] % 32]
                                        require ext_code.size(address(_2673))
                                        call address(_2673).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2207, 0, address(_2417), 128, mem[_2867], mem[_2867 + 196 len floor32(mem[_2867]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2208 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2548 = mem[(32 * idx) + 317]
                                    _2676 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2676 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2676 + 36] = 0
                                    mem[_2676 + 68] = _2208
                                    mem[_2676 + 100] = this.address
                                    mem[_2676 + 132] = 128
                                    mem[_2676 + 164] = mem[_2676]
                                    s = 0
                                    while s < mem[_2676]:
                                        mem[_2676 + s + 196] = mem[_2676 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2676] % 32:
                                        require ext_code.size(address(_2548))
                                        call address(_2548).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2208, address(this.address), 128, mem[_2676 + 164 len mem[_2676] + 32]
                                    else:
                                        mem[floor32(mem[_2676]) + _2676 + 196] = mem[floor32(mem[_2676]) + _2676 + -(mem[_2676] % 32) + 228 len mem[_2676] % 32]
                                        require ext_code.size(address(_2548))
                                        call address(_2548).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2208, address(this.address), 128, mem[_2676], mem[_2676 + 196 len floor32(mem[_2676]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2419 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2675 = mem[(32 * idx) + 317]
                                    _2871 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2871 + 36] = 0
                                    mem[_2871 + 68] = _2208
                                    mem[_2871 + 100] = address(_2419)
                                    mem[_2871 + 132] = 128
                                    mem[_2871 + 164] = mem[_2871]
                                    s = 0
                                    while s < mem[_2871]:
                                        mem[_2871 + s + 196] = mem[_2871 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2871] % 32:
                                        require ext_code.size(address(_2675))
                                        call address(_2675).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2208, address(_2419), 128, mem[_2871 + 164 len mem[_2871] + 32]
                                    else:
                                        mem[floor32(mem[_2871]) + _2871 + 196] = mem[floor32(mem[_2871]) + _2871 + -(mem[_2871] % 32) + 228 len mem[_2871] % 32]
                                        require ext_code.size(address(_2675))
                                        call address(_2675).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2208, address(_2419), 128, mem[_2871], mem[_2871 + 196 len floor32(mem[_2871]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2550 = mem[(32 * idx) + 317]
                                    _2678 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2678 + 36] = _2208
                                    mem[_2678 + 68] = 0
                                    mem[_2678 + 100] = this.address
                                    mem[_2678 + 132] = 128
                                    mem[_2678 + 164] = mem[_2678]
                                    s = 0
                                    while s < mem[_2678]:
                                        mem[_2678 + s + 196] = mem[_2678 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2678] % 32:
                                        require ext_code.size(address(_2550))
                                        call address(_2550).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2208, 0, address(this.address), 128, mem[_2678 + 164 len mem[_2678] + 32]
                                    else:
                                        mem[floor32(mem[_2678]) + _2678 + 196] = mem[floor32(mem[_2678]) + _2678 + -(mem[_2678] % 32) + 228 len mem[_2678] % 32]
                                        require ext_code.size(address(_2550))
                                        call address(_2550).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2208, 0, address(this.address), 128, mem[_2678], mem[_2678 + 196 len floor32(mem[_2678]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2421 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2677 = mem[(32 * idx) + 317]
                                    _2875 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2875 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2875 + 36] = _2208
                                    mem[_2875 + 68] = 0
                                    mem[_2875 + 100] = address(_2421)
                                    mem[_2875 + 132] = 128
                                    mem[_2875 + 164] = mem[_2875]
                                    s = 0
                                    while s < mem[_2875]:
                                        mem[_2875 + s + 196] = mem[_2875 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2875] % 32:
                                        require ext_code.size(address(_2677))
                                        call address(_2677).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2208, 0, address(_2421), 128, mem[_2875 + 164 len mem[_2875] + 32]
                                    else:
                                        mem[floor32(mem[_2875]) + _2875 + 196] = mem[floor32(mem[_2875]) + _2875 + -(mem[_2875] % 32) + 228 len mem[_2875] % 32]
                                        require ext_code.size(address(_2677))
                                        call address(_2677).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2208, 0, address(_2421), 128, mem[_2875], mem[_2875 + 196 len floor32(mem[_2875]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2209 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2552 = mem[(32 * idx) + 317]
                                    _2680 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2680 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2680 + 36] = 0
                                    mem[_2680 + 68] = _2209
                                    mem[_2680 + 100] = this.address
                                    mem[_2680 + 132] = 128
                                    mem[_2680 + 164] = mem[_2680]
                                    s = 0
                                    while s < mem[_2680]:
                                        mem[_2680 + s + 196] = mem[_2680 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2680] % 32:
                                        require ext_code.size(address(_2552))
                                        call address(_2552).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2209, address(this.address), 128, mem[_2680 + 164 len mem[_2680] + 32]
                                    else:
                                        mem[floor32(mem[_2680]) + _2680 + 196] = mem[floor32(mem[_2680]) + _2680 + -(mem[_2680] % 32) + 228 len mem[_2680] % 32]
                                        require ext_code.size(address(_2552))
                                        call address(_2552).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2209, address(this.address), 128, mem[_2680], mem[_2680 + 196 len floor32(mem[_2680]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2423 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2679 = mem[(32 * idx) + 317]
                                    _2879 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2879 + 36] = 0
                                    mem[_2879 + 68] = _2209
                                    mem[_2879 + 100] = address(_2423)
                                    mem[_2879 + 132] = 128
                                    mem[_2879 + 164] = mem[_2879]
                                    s = 0
                                    while s < mem[_2879]:
                                        mem[_2879 + s + 196] = mem[_2879 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2879] % 32:
                                        require ext_code.size(address(_2679))
                                        call address(_2679).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2209, address(_2423), 128, mem[_2879 + 164 len mem[_2879] + 32]
                                    else:
                                        mem[floor32(mem[_2879]) + _2879 + 196] = mem[floor32(mem[_2879]) + _2879 + -(mem[_2879] % 32) + 228 len mem[_2879] % 32]
                                        require ext_code.size(address(_2679))
                                        call address(_2679).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2209, address(_2423), 128, mem[_2879], mem[_2879 + 196 len floor32(mem[_2879]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2554 = mem[(32 * idx) + 317]
                                    _2682 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2682 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2682 + 36] = _2209
                                    mem[_2682 + 68] = 0
                                    mem[_2682 + 100] = this.address
                                    mem[_2682 + 132] = 128
                                    mem[_2682 + 164] = mem[_2682]
                                    s = 0
                                    while s < mem[_2682]:
                                        mem[_2682 + s + 196] = mem[_2682 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2682] % 32:
                                        require ext_code.size(address(_2554))
                                        call address(_2554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2209, 0, address(this.address), 128, mem[_2682 + 164 len mem[_2682] + 32]
                                    else:
                                        mem[floor32(mem[_2682]) + _2682 + 196] = mem[floor32(mem[_2682]) + _2682 + -(mem[_2682] % 32) + 228 len mem[_2682] % 32]
                                        require ext_code.size(address(_2554))
                                        call address(_2554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2209, 0, address(this.address), 128, mem[_2682], mem[_2682 + 196 len floor32(mem[_2682]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2425 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2681 = mem[(32 * idx) + 317]
                                    _2883 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2883 + 36] = _2209
                                    mem[_2883 + 68] = 0
                                    mem[_2883 + 100] = address(_2425)
                                    mem[_2883 + 132] = 128
                                    mem[_2883 + 164] = mem[_2883]
                                    s = 0
                                    while s < mem[_2883]:
                                        mem[_2883 + s + 196] = mem[_2883 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2883] % 32:
                                        require ext_code.size(address(_2681))
                                        call address(_2681).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2209, 0, address(_2425), 128, mem[_2883 + 164 len mem[_2883] + 32]
                                    else:
                                        mem[floor32(mem[_2883]) + _2883 + 196] = mem[floor32(mem[_2883]) + _2883 + -(mem[_2883] % 32) + 228 len mem[_2883] % 32]
                                        require ext_code.size(address(_2681))
                                        call address(_2681).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2209, 0, address(_2425), 128, mem[_2883], mem[_2883 + 196 len floor32(mem[_2883]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2210 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2556 = mem[(32 * idx) + 317]
                                    _2684 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2684 + 36] = 0
                                    mem[_2684 + 68] = _2210
                                    mem[_2684 + 100] = this.address
                                    mem[_2684 + 132] = 128
                                    mem[_2684 + 164] = mem[_2684]
                                    s = 0
                                    while s < mem[_2684]:
                                        mem[_2684 + s + 196] = mem[_2684 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2684] % 32:
                                        require ext_code.size(address(_2556))
                                        call address(_2556).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2210, address(this.address), 128, mem[_2684 + 164 len mem[_2684] + 32]
                                    else:
                                        mem[floor32(mem[_2684]) + _2684 + 196] = mem[floor32(mem[_2684]) + _2684 + -(mem[_2684] % 32) + 228 len mem[_2684] % 32]
                                        require ext_code.size(address(_2556))
                                        call address(_2556).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2210, address(this.address), 128, mem[_2684], mem[_2684 + 196 len floor32(mem[_2684]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2427 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2683 = mem[(32 * idx) + 317]
                                    _2887 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2887 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2887 + 36] = 0
                                    mem[_2887 + 68] = _2210
                                    mem[_2887 + 100] = address(_2427)
                                    mem[_2887 + 132] = 128
                                    mem[_2887 + 164] = mem[_2887]
                                    s = 0
                                    while s < mem[_2887]:
                                        mem[_2887 + s + 196] = mem[_2887 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2887] % 32:
                                        require ext_code.size(address(_2683))
                                        call address(_2683).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2210, address(_2427), 128, mem[_2887 + 164 len mem[_2887] + 32]
                                    else:
                                        mem[floor32(mem[_2887]) + _2887 + 196] = mem[floor32(mem[_2887]) + _2887 + -(mem[_2887] % 32) + 228 len mem[_2887] % 32]
                                        require ext_code.size(address(_2683))
                                        call address(_2683).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2210, address(_2427), 128, mem[_2887], mem[_2887 + 196 len floor32(mem[_2887]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2558 = mem[(32 * idx) + 317]
                                    _2686 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2686 + 36] = _2210
                                    mem[_2686 + 68] = 0
                                    mem[_2686 + 100] = this.address
                                    mem[_2686 + 132] = 128
                                    mem[_2686 + 164] = mem[_2686]
                                    s = 0
                                    while s < mem[_2686]:
                                        mem[_2686 + s + 196] = mem[_2686 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2686] % 32:
                                        require ext_code.size(address(_2558))
                                        call address(_2558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2210, 0, address(this.address), 128, mem[_2686 + 164 len mem[_2686] + 32]
                                    else:
                                        mem[floor32(mem[_2686]) + _2686 + 196] = mem[floor32(mem[_2686]) + _2686 + -(mem[_2686] % 32) + 228 len mem[_2686] % 32]
                                        require ext_code.size(address(_2558))
                                        call address(_2558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2210, 0, address(this.address), 128, mem[_2686], mem[_2686 + 196 len floor32(mem[_2686]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2429 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2685 = mem[(32 * idx) + 317]
                                    _2891 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2891 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2891 + 36] = _2210
                                    mem[_2891 + 68] = 0
                                    mem[_2891 + 100] = address(_2429)
                                    mem[_2891 + 132] = 128
                                    mem[_2891 + 164] = mem[_2891]
                                    s = 0
                                    while s < mem[_2891]:
                                        mem[_2891 + s + 196] = mem[_2891 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2891] % 32:
                                        require ext_code.size(address(_2685))
                                        call address(_2685).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2210, 0, address(_2429), 128, mem[_2891 + 164 len mem[_2891] + 32]
                                    else:
                                        mem[floor32(mem[_2891]) + _2891 + 196] = mem[floor32(mem[_2891]) + _2891 + -(mem[_2891] % 32) + 228 len mem[_2891] % 32]
                                        require ext_code.size(address(_2685))
                                        call address(_2685).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2210, 0, address(_2429), 128, mem[_2891], mem[_2891 + 196 len floor32(mem[_2891]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2211 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2560 = mem[(32 * idx) + 317]
                                    _2688 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2688 + 36] = 0
                                    mem[_2688 + 68] = _2211
                                    mem[_2688 + 100] = this.address
                                    mem[_2688 + 132] = 128
                                    mem[_2688 + 164] = mem[_2688]
                                    s = 0
                                    while s < mem[_2688]:
                                        mem[_2688 + s + 196] = mem[_2688 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2688] % 32:
                                        require ext_code.size(address(_2560))
                                        call address(_2560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2211, address(this.address), 128, mem[_2688 + 164 len mem[_2688] + 32]
                                    else:
                                        mem[floor32(mem[_2688]) + _2688 + 196] = mem[floor32(mem[_2688]) + _2688 + -(mem[_2688] % 32) + 228 len mem[_2688] % 32]
                                        require ext_code.size(address(_2560))
                                        call address(_2560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2211, address(this.address), 128, mem[_2688], mem[_2688 + 196 len floor32(mem[_2688]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2431 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2687 = mem[(32 * idx) + 317]
                                    _2895 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2895 + 36] = 0
                                    mem[_2895 + 68] = _2211
                                    mem[_2895 + 100] = address(_2431)
                                    mem[_2895 + 132] = 128
                                    mem[_2895 + 164] = mem[_2895]
                                    s = 0
                                    while s < mem[_2895]:
                                        mem[_2895 + s + 196] = mem[_2895 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2895] % 32:
                                        require ext_code.size(address(_2687))
                                        call address(_2687).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2211, address(_2431), 128, mem[_2895 + 164 len mem[_2895] + 32]
                                    else:
                                        mem[floor32(mem[_2895]) + _2895 + 196] = mem[floor32(mem[_2895]) + _2895 + -(mem[_2895] % 32) + 228 len mem[_2895] % 32]
                                        require ext_code.size(address(_2687))
                                        call address(_2687).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2211, address(_2431), 128, mem[_2895], mem[_2895 + 196 len floor32(mem[_2895]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2562 = mem[(32 * idx) + 317]
                                    _2690 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2690 + 36] = _2211
                                    mem[_2690 + 68] = 0
                                    mem[_2690 + 100] = this.address
                                    mem[_2690 + 132] = 128
                                    mem[_2690 + 164] = mem[_2690]
                                    s = 0
                                    while s < mem[_2690]:
                                        mem[_2690 + s + 196] = mem[_2690 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2690] % 32:
                                        require ext_code.size(address(_2562))
                                        call address(_2562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2211, 0, address(this.address), 128, mem[_2690 + 164 len mem[_2690] + 32]
                                    else:
                                        mem[floor32(mem[_2690]) + _2690 + 196] = mem[floor32(mem[_2690]) + _2690 + -(mem[_2690] % 32) + 228 len mem[_2690] % 32]
                                        require ext_code.size(address(_2562))
                                        call address(_2562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2211, 0, address(this.address), 128, mem[_2690], mem[_2690 + 196 len floor32(mem[_2690]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2433 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2689 = mem[(32 * idx) + 317]
                                    _2899 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2899 + 36] = _2211
                                    mem[_2899 + 68] = 0
                                    mem[_2899 + 100] = address(_2433)
                                    mem[_2899 + 132] = 128
                                    mem[_2899 + 164] = mem[_2899]
                                    s = 0
                                    while s < mem[_2899]:
                                        mem[_2899 + s + 196] = mem[_2899 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2899] % 32:
                                        require ext_code.size(address(_2689))
                                        call address(_2689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2211, 0, address(_2433), 128, mem[_2899 + 164 len mem[_2899] + 32]
                                    else:
                                        mem[floor32(mem[_2899]) + _2899 + 196] = mem[floor32(mem[_2899]) + _2899 + -(mem[_2899] % 32) + 228 len mem[_2899] % 32]
                                        require ext_code.size(address(_2689))
                                        call address(_2689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2211, 0, address(_2433), 128, mem[_2899], mem[_2899 + 196 len floor32(mem[_2899]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2212 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2564 = mem[(32 * idx) + 317]
                                    _2692 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2692 + 36] = 0
                                    mem[_2692 + 68] = _2212
                                    mem[_2692 + 100] = this.address
                                    mem[_2692 + 132] = 128
                                    mem[_2692 + 164] = mem[_2692]
                                    s = 0
                                    while s < mem[_2692]:
                                        mem[_2692 + s + 196] = mem[_2692 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2692] % 32:
                                        require ext_code.size(address(_2564))
                                        call address(_2564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2212, address(this.address), 128, mem[_2692 + 164 len mem[_2692] + 32]
                                    else:
                                        mem[floor32(mem[_2692]) + _2692 + 196] = mem[floor32(mem[_2692]) + _2692 + -(mem[_2692] % 32) + 228 len mem[_2692] % 32]
                                        require ext_code.size(address(_2564))
                                        call address(_2564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2212, address(this.address), 128, mem[_2692], mem[_2692 + 196 len floor32(mem[_2692]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2435 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2691 = mem[(32 * idx) + 317]
                                    _2903 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2903 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2903 + 36] = 0
                                    mem[_2903 + 68] = _2212
                                    mem[_2903 + 100] = address(_2435)
                                    mem[_2903 + 132] = 128
                                    mem[_2903 + 164] = mem[_2903]
                                    s = 0
                                    while s < mem[_2903]:
                                        mem[_2903 + s + 196] = mem[_2903 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2903] % 32:
                                        require ext_code.size(address(_2691))
                                        call address(_2691).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2212, address(_2435), 128, mem[_2903 + 164 len mem[_2903] + 32]
                                    else:
                                        mem[floor32(mem[_2903]) + _2903 + 196] = mem[floor32(mem[_2903]) + _2903 + -(mem[_2903] % 32) + 228 len mem[_2903] % 32]
                                        require ext_code.size(address(_2691))
                                        call address(_2691).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2212, address(_2435), 128, mem[_2903], mem[_2903 + 196 len floor32(mem[_2903]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2566 = mem[(32 * idx) + 317]
                                    _2694 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2694 + 36] = _2212
                                    mem[_2694 + 68] = 0
                                    mem[_2694 + 100] = this.address
                                    mem[_2694 + 132] = 128
                                    mem[_2694 + 164] = mem[_2694]
                                    s = 0
                                    while s < mem[_2694]:
                                        mem[_2694 + s + 196] = mem[_2694 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2694] % 32:
                                        require ext_code.size(address(_2566))
                                        call address(_2566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2212, 0, address(this.address), 128, mem[_2694 + 164 len mem[_2694] + 32]
                                    else:
                                        mem[floor32(mem[_2694]) + _2694 + 196] = mem[floor32(mem[_2694]) + _2694 + -(mem[_2694] % 32) + 228 len mem[_2694] % 32]
                                        require ext_code.size(address(_2566))
                                        call address(_2566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2212, 0, address(this.address), 128, mem[_2694], mem[_2694 + 196 len floor32(mem[_2694]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2437 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2693 = mem[(32 * idx) + 317]
                                    _2907 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2907 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2907 + 36] = _2212
                                    mem[_2907 + 68] = 0
                                    mem[_2907 + 100] = address(_2437)
                                    mem[_2907 + 132] = 128
                                    mem[_2907 + 164] = mem[_2907]
                                    s = 0
                                    while s < mem[_2907]:
                                        mem[_2907 + s + 196] = mem[_2907 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2907] % 32:
                                        require ext_code.size(address(_2693))
                                        call address(_2693).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2212, 0, address(_2437), 128, mem[_2907 + 164 len mem[_2907] + 32]
                                    else:
                                        mem[floor32(mem[_2907]) + _2907 + 196] = mem[floor32(mem[_2907]) + _2907 + -(mem[_2907] % 32) + 228 len mem[_2907] % 32]
                                        require ext_code.size(address(_2693))
                                        call address(_2693).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2212, 0, address(_2437), 128, mem[_2907], mem[_2907 + 196 len floor32(mem[_2907]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2213 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2568 = mem[(32 * idx) + 317]
                                    _2696 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2696 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2696 + 36] = 0
                                    mem[_2696 + 68] = _2213
                                    mem[_2696 + 100] = this.address
                                    mem[_2696 + 132] = 128
                                    mem[_2696 + 164] = mem[_2696]
                                    s = 0
                                    while s < mem[_2696]:
                                        mem[_2696 + s + 196] = mem[_2696 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2696] % 32:
                                        require ext_code.size(address(_2568))
                                        call address(_2568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2213, address(this.address), 128, mem[_2696 + 164 len mem[_2696] + 32]
                                    else:
                                        mem[floor32(mem[_2696]) + _2696 + 196] = mem[floor32(mem[_2696]) + _2696 + -(mem[_2696] % 32) + 228 len mem[_2696] % 32]
                                        require ext_code.size(address(_2568))
                                        call address(_2568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2213, address(this.address), 128, mem[_2696], mem[_2696 + 196 len floor32(mem[_2696]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2439 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2695 = mem[(32 * idx) + 317]
                                    _2911 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2911 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2911 + 36] = 0
                                    mem[_2911 + 68] = _2213
                                    mem[_2911 + 100] = address(_2439)
                                    mem[_2911 + 132] = 128
                                    mem[_2911 + 164] = mem[_2911]
                                    s = 0
                                    while s < mem[_2911]:
                                        mem[_2911 + s + 196] = mem[_2911 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2911] % 32:
                                        require ext_code.size(address(_2695))
                                        call address(_2695).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2213, address(_2439), 128, mem[_2911 + 164 len mem[_2911] + 32]
                                    else:
                                        mem[floor32(mem[_2911]) + _2911 + 196] = mem[floor32(mem[_2911]) + _2911 + -(mem[_2911] % 32) + 228 len mem[_2911] % 32]
                                        require ext_code.size(address(_2695))
                                        call address(_2695).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2213, address(_2439), 128, mem[_2911], mem[_2911 + 196 len floor32(mem[_2911]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2570 = mem[(32 * idx) + 317]
                                    _2698 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2698 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2698 + 36] = _2213
                                    mem[_2698 + 68] = 0
                                    mem[_2698 + 100] = this.address
                                    mem[_2698 + 132] = 128
                                    mem[_2698 + 164] = mem[_2698]
                                    s = 0
                                    while s < mem[_2698]:
                                        mem[_2698 + s + 196] = mem[_2698 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2698] % 32:
                                        require ext_code.size(address(_2570))
                                        call address(_2570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2213, 0, address(this.address), 128, mem[_2698 + 164 len mem[_2698] + 32]
                                    else:
                                        mem[floor32(mem[_2698]) + _2698 + 196] = mem[floor32(mem[_2698]) + _2698 + -(mem[_2698] % 32) + 228 len mem[_2698] % 32]
                                        require ext_code.size(address(_2570))
                                        call address(_2570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2213, 0, address(this.address), 128, mem[_2698], mem[_2698 + 196 len floor32(mem[_2698]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2441 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2697 = mem[(32 * idx) + 317]
                                    _2915 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2915 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2915 + 36] = _2213
                                    mem[_2915 + 68] = 0
                                    mem[_2915 + 100] = address(_2441)
                                    mem[_2915 + 132] = 128
                                    mem[_2915 + 164] = mem[_2915]
                                    s = 0
                                    while s < mem[_2915]:
                                        mem[_2915 + s + 196] = mem[_2915 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2915] % 32:
                                        require ext_code.size(address(_2697))
                                        call address(_2697).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2213, 0, address(_2441), 128, mem[_2915 + 164 len mem[_2915] + 32]
                                    else:
                                        mem[floor32(mem[_2915]) + _2915 + 196] = mem[floor32(mem[_2915]) + _2915 + -(mem[_2915] % 32) + 228 len mem[_2915] % 32]
                                        require ext_code.size(address(_2697))
                                        call address(_2697).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2213, 0, address(_2441), 128, mem[_2915], mem[_2915 + 196 len floor32(mem[_2915]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2214 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2572 = mem[(32 * idx) + 317]
                                    _2700 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2700 + 36] = 0
                                    mem[_2700 + 68] = _2214
                                    mem[_2700 + 100] = this.address
                                    mem[_2700 + 132] = 128
                                    mem[_2700 + 164] = mem[_2700]
                                    s = 0
                                    while s < mem[_2700]:
                                        mem[_2700 + s + 196] = mem[_2700 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2700] % 32:
                                        require ext_code.size(address(_2572))
                                        call address(_2572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2214, address(this.address), 128, mem[_2700 + 164 len mem[_2700] + 32]
                                    else:
                                        mem[floor32(mem[_2700]) + _2700 + 196] = mem[floor32(mem[_2700]) + _2700 + -(mem[_2700] % 32) + 228 len mem[_2700] % 32]
                                        require ext_code.size(address(_2572))
                                        call address(_2572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2214, address(this.address), 128, mem[_2700], mem[_2700 + 196 len floor32(mem[_2700]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2443 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2699 = mem[(32 * idx) + 317]
                                    _2919 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2919 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2919 + 36] = 0
                                    mem[_2919 + 68] = _2214
                                    mem[_2919 + 100] = address(_2443)
                                    mem[_2919 + 132] = 128
                                    mem[_2919 + 164] = mem[_2919]
                                    s = 0
                                    while s < mem[_2919]:
                                        mem[_2919 + s + 196] = mem[_2919 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2919] % 32:
                                        require ext_code.size(address(_2699))
                                        call address(_2699).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2214, address(_2443), 128, mem[_2919 + 164 len mem[_2919] + 32]
                                    else:
                                        mem[floor32(mem[_2919]) + _2919 + 196] = mem[floor32(mem[_2919]) + _2919 + -(mem[_2919] % 32) + 228 len mem[_2919] % 32]
                                        require ext_code.size(address(_2699))
                                        call address(_2699).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2214, address(_2443), 128, mem[_2919], mem[_2919 + 196 len floor32(mem[_2919]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2574 = mem[(32 * idx) + 317]
                                    _2702 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2702 + 36] = _2214
                                    mem[_2702 + 68] = 0
                                    mem[_2702 + 100] = this.address
                                    mem[_2702 + 132] = 128
                                    mem[_2702 + 164] = mem[_2702]
                                    s = 0
                                    while s < mem[_2702]:
                                        mem[_2702 + s + 196] = mem[_2702 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2702] % 32:
                                        require ext_code.size(address(_2574))
                                        call address(_2574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2214, 0, address(this.address), 128, mem[_2702 + 164 len mem[_2702] + 32]
                                    else:
                                        mem[floor32(mem[_2702]) + _2702 + 196] = mem[floor32(mem[_2702]) + _2702 + -(mem[_2702] % 32) + 228 len mem[_2702] % 32]
                                        require ext_code.size(address(_2574))
                                        call address(_2574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2214, 0, address(this.address), 128, mem[_2702], mem[_2702 + 196 len floor32(mem[_2702]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2445 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2701 = mem[(32 * idx) + 317]
                                    _2923 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2923 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2923 + 36] = _2214
                                    mem[_2923 + 68] = 0
                                    mem[_2923 + 100] = address(_2445)
                                    mem[_2923 + 132] = 128
                                    mem[_2923 + 164] = mem[_2923]
                                    s = 0
                                    while s < mem[_2923]:
                                        mem[_2923 + s + 196] = mem[_2923 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2923] % 32:
                                        require ext_code.size(address(_2701))
                                        call address(_2701).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2214, 0, address(_2445), 128, mem[_2923 + 164 len mem[_2923] + 32]
                                    else:
                                        mem[floor32(mem[_2923]) + _2923 + 196] = mem[floor32(mem[_2923]) + _2923 + -(mem[_2923] % 32) + 228 len mem[_2923] % 32]
                                        require ext_code.size(address(_2701))
                                        call address(_2701).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2214, 0, address(_2445), 128, mem[_2923], mem[_2923 + 196 len floor32(mem[_2923]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
        else:
            require not arg3
            require arg4.length >= 128
            require cd[(arg4 + 68)] <= 4294967296
            require cd[(arg4 + 68)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
            mem[285] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[317 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
            require cd[(arg4 + 100)] <= 4294967296
            require cd[(arg4 + 100)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 349 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
            require cd[(arg4 + 132)] <= 4294967296
            require cd[(arg4 + 132)] + 68 <= arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
            require 1 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 385] = mem[361 len 20]
            if address(ext_call.return_data[0]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2215 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2576 = mem[(32 * idx) + 317]
                                    _2704 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2704 + 36] = 0
                                    mem[_2704 + 68] = _2215
                                    mem[_2704 + 100] = this.address
                                    mem[_2704 + 132] = 128
                                    mem[_2704 + 164] = mem[_2704]
                                    s = 0
                                    while s < mem[_2704]:
                                        mem[_2704 + s + 196] = mem[_2704 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2704] % 32:
                                        require ext_code.size(address(_2576))
                                        call address(_2576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2215, address(this.address), 128, mem[_2704 + 164 len mem[_2704] + 32]
                                    else:
                                        mem[floor32(mem[_2704]) + _2704 + 196] = mem[floor32(mem[_2704]) + _2704 + -(mem[_2704] % 32) + 228 len mem[_2704] % 32]
                                        require ext_code.size(address(_2576))
                                        call address(_2576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2215, address(this.address), 128, mem[_2704], mem[_2704 + 196 len floor32(mem[_2704]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2447 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2703 = mem[(32 * idx) + 317]
                                    _2927 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2927 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2927 + 36] = 0
                                    mem[_2927 + 68] = _2215
                                    mem[_2927 + 100] = address(_2447)
                                    mem[_2927 + 132] = 128
                                    mem[_2927 + 164] = mem[_2927]
                                    s = 0
                                    while s < mem[_2927]:
                                        mem[_2927 + s + 196] = mem[_2927 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2927] % 32:
                                        require ext_code.size(address(_2703))
                                        call address(_2703).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2215, address(_2447), 128, mem[_2927 + 164 len mem[_2927] + 32]
                                    else:
                                        mem[floor32(mem[_2927]) + _2927 + 196] = mem[floor32(mem[_2927]) + _2927 + -(mem[_2927] % 32) + 228 len mem[_2927] % 32]
                                        require ext_code.size(address(_2703))
                                        call address(_2703).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2215, address(_2447), 128, mem[_2927], mem[_2927 + 196 len floor32(mem[_2927]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2578 = mem[(32 * idx) + 317]
                                    _2706 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2706 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2706 + 36] = _2215
                                    mem[_2706 + 68] = 0
                                    mem[_2706 + 100] = this.address
                                    mem[_2706 + 132] = 128
                                    mem[_2706 + 164] = mem[_2706]
                                    s = 0
                                    while s < mem[_2706]:
                                        mem[_2706 + s + 196] = mem[_2706 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2706] % 32:
                                        require ext_code.size(address(_2578))
                                        call address(_2578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2215, 0, address(this.address), 128, mem[_2706 + 164 len mem[_2706] + 32]
                                    else:
                                        mem[floor32(mem[_2706]) + _2706 + 196] = mem[floor32(mem[_2706]) + _2706 + -(mem[_2706] % 32) + 228 len mem[_2706] % 32]
                                        require ext_code.size(address(_2578))
                                        call address(_2578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2215, 0, address(this.address), 128, mem[_2706], mem[_2706 + 196 len floor32(mem[_2706]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2449 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2705 = mem[(32 * idx) + 317]
                                    _2931 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2931 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2931 + 36] = _2215
                                    mem[_2931 + 68] = 0
                                    mem[_2931 + 100] = address(_2449)
                                    mem[_2931 + 132] = 128
                                    mem[_2931 + 164] = mem[_2931]
                                    s = 0
                                    while s < mem[_2931]:
                                        mem[_2931 + s + 196] = mem[_2931 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2931] % 32:
                                        require ext_code.size(address(_2705))
                                        call address(_2705).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2215, 0, address(_2449), 128, mem[_2931 + 164 len mem[_2931] + 32]
                                    else:
                                        mem[floor32(mem[_2931]) + _2931 + 196] = mem[floor32(mem[_2931]) + _2931 + -(mem[_2931] % 32) + 228 len mem[_2931] % 32]
                                        require ext_code.size(address(_2705))
                                        call address(_2705).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2215, 0, address(_2449), 128, mem[_2931], mem[_2931 + 196 len floor32(mem[_2931]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2216 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2580 = mem[(32 * idx) + 317]
                                    _2708 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2708 + 36] = 0
                                    mem[_2708 + 68] = _2216
                                    mem[_2708 + 100] = this.address
                                    mem[_2708 + 132] = 128
                                    mem[_2708 + 164] = mem[_2708]
                                    s = 0
                                    while s < mem[_2708]:
                                        mem[_2708 + s + 196] = mem[_2708 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2708] % 32:
                                        require ext_code.size(address(_2580))
                                        call address(_2580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2216, address(this.address), 128, mem[_2708 + 164 len mem[_2708] + 32]
                                    else:
                                        mem[floor32(mem[_2708]) + _2708 + 196] = mem[floor32(mem[_2708]) + _2708 + -(mem[_2708] % 32) + 228 len mem[_2708] % 32]
                                        require ext_code.size(address(_2580))
                                        call address(_2580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2216, address(this.address), 128, mem[_2708], mem[_2708 + 196 len floor32(mem[_2708]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2451 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2707 = mem[(32 * idx) + 317]
                                    _2935 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2935 + 36] = 0
                                    mem[_2935 + 68] = _2216
                                    mem[_2935 + 100] = address(_2451)
                                    mem[_2935 + 132] = 128
                                    mem[_2935 + 164] = mem[_2935]
                                    s = 0
                                    while s < mem[_2935]:
                                        mem[_2935 + s + 196] = mem[_2935 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2935] % 32:
                                        require ext_code.size(address(_2707))
                                        call address(_2707).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2216, address(_2451), 128, mem[_2935 + 164 len mem[_2935] + 32]
                                    else:
                                        mem[floor32(mem[_2935]) + _2935 + 196] = mem[floor32(mem[_2935]) + _2935 + -(mem[_2935] % 32) + 228 len mem[_2935] % 32]
                                        require ext_code.size(address(_2707))
                                        call address(_2707).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2216, address(_2451), 128, mem[_2935], mem[_2935 + 196 len floor32(mem[_2935]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2582 = mem[(32 * idx) + 317]
                                    _2710 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2710 + 36] = _2216
                                    mem[_2710 + 68] = 0
                                    mem[_2710 + 100] = this.address
                                    mem[_2710 + 132] = 128
                                    mem[_2710 + 164] = mem[_2710]
                                    s = 0
                                    while s < mem[_2710]:
                                        mem[_2710 + s + 196] = mem[_2710 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2710] % 32:
                                        require ext_code.size(address(_2582))
                                        call address(_2582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2216, 0, address(this.address), 128, mem[_2710 + 164 len mem[_2710] + 32]
                                    else:
                                        mem[floor32(mem[_2710]) + _2710 + 196] = mem[floor32(mem[_2710]) + _2710 + -(mem[_2710] % 32) + 228 len mem[_2710] % 32]
                                        require ext_code.size(address(_2582))
                                        call address(_2582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2216, 0, address(this.address), 128, mem[_2710], mem[_2710 + 196 len floor32(mem[_2710]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2453 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2709 = mem[(32 * idx) + 317]
                                    _2939 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2939 + 36] = _2216
                                    mem[_2939 + 68] = 0
                                    mem[_2939 + 100] = address(_2453)
                                    mem[_2939 + 132] = 128
                                    mem[_2939 + 164] = mem[_2939]
                                    s = 0
                                    while s < mem[_2939]:
                                        mem[_2939 + s + 196] = mem[_2939 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2939] % 32:
                                        require ext_code.size(address(_2709))
                                        call address(_2709).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2216, 0, address(_2453), 128, mem[_2939 + 164 len mem[_2939] + 32]
                                    else:
                                        mem[floor32(mem[_2939]) + _2939 + 196] = mem[floor32(mem[_2939]) + _2939 + -(mem[_2939] % 32) + 228 len mem[_2939] % 32]
                                        require ext_code.size(address(_2709))
                                        call address(_2709).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2216, 0, address(_2453), 128, mem[_2939], mem[_2939 + 196 len floor32(mem[_2939]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2217 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2584 = mem[(32 * idx) + 317]
                                    _2712 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2712 + 36] = 0
                                    mem[_2712 + 68] = _2217
                                    mem[_2712 + 100] = this.address
                                    mem[_2712 + 132] = 128
                                    mem[_2712 + 164] = mem[_2712]
                                    s = 0
                                    while s < mem[_2712]:
                                        mem[_2712 + s + 196] = mem[_2712 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2712] % 32:
                                        require ext_code.size(address(_2584))
                                        call address(_2584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2217, address(this.address), 128, mem[_2712 + 164 len mem[_2712] + 32]
                                    else:
                                        mem[floor32(mem[_2712]) + _2712 + 196] = mem[floor32(mem[_2712]) + _2712 + -(mem[_2712] % 32) + 228 len mem[_2712] % 32]
                                        require ext_code.size(address(_2584))
                                        call address(_2584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2217, address(this.address), 128, mem[_2712], mem[_2712 + 196 len floor32(mem[_2712]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2455 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2711 = mem[(32 * idx) + 317]
                                    _2943 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2943 + 36] = 0
                                    mem[_2943 + 68] = _2217
                                    mem[_2943 + 100] = address(_2455)
                                    mem[_2943 + 132] = 128
                                    mem[_2943 + 164] = mem[_2943]
                                    s = 0
                                    while s < mem[_2943]:
                                        mem[_2943 + s + 196] = mem[_2943 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2943] % 32:
                                        require ext_code.size(address(_2711))
                                        call address(_2711).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2217, address(_2455), 128, mem[_2943 + 164 len mem[_2943] + 32]
                                    else:
                                        mem[floor32(mem[_2943]) + _2943 + 196] = mem[floor32(mem[_2943]) + _2943 + -(mem[_2943] % 32) + 228 len mem[_2943] % 32]
                                        require ext_code.size(address(_2711))
                                        call address(_2711).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2217, address(_2455), 128, mem[_2943], mem[_2943 + 196 len floor32(mem[_2943]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2586 = mem[(32 * idx) + 317]
                                    _2714 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2714 + 36] = _2217
                                    mem[_2714 + 68] = 0
                                    mem[_2714 + 100] = this.address
                                    mem[_2714 + 132] = 128
                                    mem[_2714 + 164] = mem[_2714]
                                    s = 0
                                    while s < mem[_2714]:
                                        mem[_2714 + s + 196] = mem[_2714 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2714] % 32:
                                        require ext_code.size(address(_2586))
                                        call address(_2586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2217, 0, address(this.address), 128, mem[_2714 + 164 len mem[_2714] + 32]
                                    else:
                                        mem[floor32(mem[_2714]) + _2714 + 196] = mem[floor32(mem[_2714]) + _2714 + -(mem[_2714] % 32) + 228 len mem[_2714] % 32]
                                        require ext_code.size(address(_2586))
                                        call address(_2586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2217, 0, address(this.address), 128, mem[_2714], mem[_2714 + 196 len floor32(mem[_2714]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2457 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2713 = mem[(32 * idx) + 317]
                                    _2947 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2947 + 36] = _2217
                                    mem[_2947 + 68] = 0
                                    mem[_2947 + 100] = address(_2457)
                                    mem[_2947 + 132] = 128
                                    mem[_2947 + 164] = mem[_2947]
                                    s = 0
                                    while s < mem[_2947]:
                                        mem[_2947 + s + 196] = mem[_2947 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2947] % 32:
                                        require ext_code.size(address(_2713))
                                        call address(_2713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2217, 0, address(_2457), 128, mem[_2947 + 164 len mem[_2947] + 32]
                                    else:
                                        mem[floor32(mem[_2947]) + _2947 + 196] = mem[floor32(mem[_2947]) + _2947 + -(mem[_2947] % 32) + 228 len mem[_2947] % 32]
                                        require ext_code.size(address(_2713))
                                        call address(_2713).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2217, 0, address(_2457), 128, mem[_2947], mem[_2947 + 196 len floor32(mem[_2947]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2218 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2588 = mem[(32 * idx) + 317]
                                    _2716 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2716 + 36] = 0
                                    mem[_2716 + 68] = _2218
                                    mem[_2716 + 100] = this.address
                                    mem[_2716 + 132] = 128
                                    mem[_2716 + 164] = mem[_2716]
                                    s = 0
                                    while s < mem[_2716]:
                                        mem[_2716 + s + 196] = mem[_2716 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2716] % 32:
                                        require ext_code.size(address(_2588))
                                        call address(_2588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2218, address(this.address), 128, mem[_2716 + 164 len mem[_2716] + 32]
                                    else:
                                        mem[floor32(mem[_2716]) + _2716 + 196] = mem[floor32(mem[_2716]) + _2716 + -(mem[_2716] % 32) + 228 len mem[_2716] % 32]
                                        require ext_code.size(address(_2588))
                                        call address(_2588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2218, address(this.address), 128, mem[_2716], mem[_2716 + 196 len floor32(mem[_2716]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2459 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2715 = mem[(32 * idx) + 317]
                                    _2951 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2951 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2951 + 36] = 0
                                    mem[_2951 + 68] = _2218
                                    mem[_2951 + 100] = address(_2459)
                                    mem[_2951 + 132] = 128
                                    mem[_2951 + 164] = mem[_2951]
                                    s = 0
                                    while s < mem[_2951]:
                                        mem[_2951 + s + 196] = mem[_2951 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2951] % 32:
                                        require ext_code.size(address(_2715))
                                        call address(_2715).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2218, address(_2459), 128, mem[_2951 + 164 len mem[_2951] + 32]
                                    else:
                                        mem[floor32(mem[_2951]) + _2951 + 196] = mem[floor32(mem[_2951]) + _2951 + -(mem[_2951] % 32) + 228 len mem[_2951] % 32]
                                        require ext_code.size(address(_2715))
                                        call address(_2715).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2218, address(_2459), 128, mem[_2951], mem[_2951 + 196 len floor32(mem[_2951]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2590 = mem[(32 * idx) + 317]
                                    _2718 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2718 + 36] = _2218
                                    mem[_2718 + 68] = 0
                                    mem[_2718 + 100] = this.address
                                    mem[_2718 + 132] = 128
                                    mem[_2718 + 164] = mem[_2718]
                                    s = 0
                                    while s < mem[_2718]:
                                        mem[_2718 + s + 196] = mem[_2718 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2718] % 32:
                                        require ext_code.size(address(_2590))
                                        call address(_2590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2218, 0, address(this.address), 128, mem[_2718 + 164 len mem[_2718] + 32]
                                    else:
                                        mem[floor32(mem[_2718]) + _2718 + 196] = mem[floor32(mem[_2718]) + _2718 + -(mem[_2718] % 32) + 228 len mem[_2718] % 32]
                                        require ext_code.size(address(_2590))
                                        call address(_2590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2218, 0, address(this.address), 128, mem[_2718], mem[_2718 + 196 len floor32(mem[_2718]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2461 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2717 = mem[(32 * idx) + 317]
                                    _2955 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2955 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2955 + 36] = _2218
                                    mem[_2955 + 68] = 0
                                    mem[_2955 + 100] = address(_2461)
                                    mem[_2955 + 132] = 128
                                    mem[_2955 + 164] = mem[_2955]
                                    s = 0
                                    while s < mem[_2955]:
                                        mem[_2955 + s + 196] = mem[_2955 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2955] % 32:
                                        require ext_code.size(address(_2717))
                                        call address(_2717).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2218, 0, address(_2461), 128, mem[_2955 + 164 len mem[_2955] + 32]
                                    else:
                                        mem[floor32(mem[_2955]) + _2955 + 196] = mem[floor32(mem[_2955]) + _2955 + -(mem[_2955] % 32) + 228 len mem[_2955] % 32]
                                        require ext_code.size(address(_2717))
                                        call address(_2717).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2218, 0, address(_2461), 128, mem[_2955], mem[_2955 + 196 len floor32(mem[_2955]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                if not arg2:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg3
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg3
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2219 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2592 = mem[(32 * idx) + 317]
                                    _2720 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2720 + 36] = 0
                                    mem[_2720 + 68] = _2219
                                    mem[_2720 + 100] = this.address
                                    mem[_2720 + 132] = 128
                                    mem[_2720 + 164] = mem[_2720]
                                    s = 0
                                    while s < mem[_2720]:
                                        mem[_2720 + s + 196] = mem[_2720 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2720] % 32:
                                        require ext_code.size(address(_2592))
                                        call address(_2592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2219, address(this.address), 128, mem[_2720 + 164 len mem[_2720] + 32]
                                    else:
                                        mem[floor32(mem[_2720]) + _2720 + 196] = mem[floor32(mem[_2720]) + _2720 + -(mem[_2720] % 32) + 228 len mem[_2720] % 32]
                                        require ext_code.size(address(_2592))
                                        call address(_2592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2219, address(this.address), 128, mem[_2720], mem[_2720 + 196 len floor32(mem[_2720]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2463 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2719 = mem[(32 * idx) + 317]
                                    _2959 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2959 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2959 + 36] = 0
                                    mem[_2959 + 68] = _2219
                                    mem[_2959 + 100] = address(_2463)
                                    mem[_2959 + 132] = 128
                                    mem[_2959 + 164] = mem[_2959]
                                    s = 0
                                    while s < mem[_2959]:
                                        mem[_2959 + s + 196] = mem[_2959 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2959] % 32:
                                        require ext_code.size(address(_2719))
                                        call address(_2719).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2219, address(_2463), 128, mem[_2959 + 164 len mem[_2959] + 32]
                                    else:
                                        mem[floor32(mem[_2959]) + _2959 + 196] = mem[floor32(mem[_2959]) + _2959 + -(mem[_2959] % 32) + 228 len mem[_2959] % 32]
                                        require ext_code.size(address(_2719))
                                        call address(_2719).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2219, address(_2463), 128, mem[_2959], mem[_2959 + 196 len floor32(mem[_2959]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2594 = mem[(32 * idx) + 317]
                                    _2722 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2722 + 36] = _2219
                                    mem[_2722 + 68] = 0
                                    mem[_2722 + 100] = this.address
                                    mem[_2722 + 132] = 128
                                    mem[_2722 + 164] = mem[_2722]
                                    s = 0
                                    while s < mem[_2722]:
                                        mem[_2722 + s + 196] = mem[_2722 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2722] % 32:
                                        require ext_code.size(address(_2594))
                                        call address(_2594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2219, 0, address(this.address), 128, mem[_2722 + 164 len mem[_2722] + 32]
                                    else:
                                        mem[floor32(mem[_2722]) + _2722 + 196] = mem[floor32(mem[_2722]) + _2722 + -(mem[_2722] % 32) + 228 len mem[_2722] % 32]
                                        require ext_code.size(address(_2594))
                                        call address(_2594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2219, 0, address(this.address), 128, mem[_2722], mem[_2722 + 196 len floor32(mem[_2722]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2465 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2721 = mem[(32 * idx) + 317]
                                    _2963 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2963 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2963 + 36] = _2219
                                    mem[_2963 + 68] = 0
                                    mem[_2963 + 100] = address(_2465)
                                    mem[_2963 + 132] = 128
                                    mem[_2963 + 164] = mem[_2963]
                                    s = 0
                                    while s < mem[_2963]:
                                        mem[_2963 + s + 196] = mem[_2963 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2963] % 32:
                                        require ext_code.size(address(_2721))
                                        call address(_2721).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2219, 0, address(_2465), 128, mem[_2963 + 164 len mem[_2963] + 32]
                                    else:
                                        mem[floor32(mem[_2963]) + _2963 + 196] = mem[floor32(mem[_2963]) + _2963 + -(mem[_2963] % 32) + 228 len mem[_2963] % 32]
                                        require ext_code.size(address(_2721))
                                        call address(_2721).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2219, 0, address(_2465), 128, mem[_2963], mem[_2963 + 196 len floor32(mem[_2963]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2220 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2596 = mem[(32 * idx) + 317]
                                    _2724 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2724 + 36] = 0
                                    mem[_2724 + 68] = _2220
                                    mem[_2724 + 100] = this.address
                                    mem[_2724 + 132] = 128
                                    mem[_2724 + 164] = mem[_2724]
                                    s = 0
                                    while s < mem[_2724]:
                                        mem[_2724 + s + 196] = mem[_2724 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2724] % 32:
                                        require ext_code.size(address(_2596))
                                        call address(_2596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2220, address(this.address), 128, mem[_2724 + 164 len mem[_2724] + 32]
                                    else:
                                        mem[floor32(mem[_2724]) + _2724 + 196] = mem[floor32(mem[_2724]) + _2724 + -(mem[_2724] % 32) + 228 len mem[_2724] % 32]
                                        require ext_code.size(address(_2596))
                                        call address(_2596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2220, address(this.address), 128, mem[_2724], mem[_2724 + 196 len floor32(mem[_2724]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2467 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2723 = mem[(32 * idx) + 317]
                                    _2967 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2967 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2967 + 36] = 0
                                    mem[_2967 + 68] = _2220
                                    mem[_2967 + 100] = address(_2467)
                                    mem[_2967 + 132] = 128
                                    mem[_2967 + 164] = mem[_2967]
                                    s = 0
                                    while s < mem[_2967]:
                                        mem[_2967 + s + 196] = mem[_2967 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2967] % 32:
                                        require ext_code.size(address(_2723))
                                        call address(_2723).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2220, address(_2467), 128, mem[_2967 + 164 len mem[_2967] + 32]
                                    else:
                                        mem[floor32(mem[_2967]) + _2967 + 196] = mem[floor32(mem[_2967]) + _2967 + -(mem[_2967] % 32) + 228 len mem[_2967] % 32]
                                        require ext_code.size(address(_2723))
                                        call address(_2723).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2220, address(_2467), 128, mem[_2967], mem[_2967 + 196 len floor32(mem[_2967]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2598 = mem[(32 * idx) + 317]
                                    _2726 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2726 + 36] = _2220
                                    mem[_2726 + 68] = 0
                                    mem[_2726 + 100] = this.address
                                    mem[_2726 + 132] = 128
                                    mem[_2726 + 164] = mem[_2726]
                                    s = 0
                                    while s < mem[_2726]:
                                        mem[_2726 + s + 196] = mem[_2726 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2726] % 32:
                                        require ext_code.size(address(_2598))
                                        call address(_2598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2220, 0, address(this.address), 128, mem[_2726 + 164 len mem[_2726] + 32]
                                    else:
                                        mem[floor32(mem[_2726]) + _2726 + 196] = mem[floor32(mem[_2726]) + _2726 + -(mem[_2726] % 32) + 228 len mem[_2726] % 32]
                                        require ext_code.size(address(_2598))
                                        call address(_2598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2220, 0, address(this.address), 128, mem[_2726], mem[_2726 + 196 len floor32(mem[_2726]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2469 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2725 = mem[(32 * idx) + 317]
                                    _2971 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2971 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2971 + 36] = _2220
                                    mem[_2971 + 68] = 0
                                    mem[_2971 + 100] = address(_2469)
                                    mem[_2971 + 132] = 128
                                    mem[_2971 + 164] = mem[_2971]
                                    s = 0
                                    while s < mem[_2971]:
                                        mem[_2971 + s + 196] = mem[_2971 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2971] % 32:
                                        require ext_code.size(address(_2725))
                                        call address(_2725).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2220, 0, address(_2469), 128, mem[_2971 + 164 len mem[_2971] + 32]
                                    else:
                                        mem[floor32(mem[_2971]) + _2971 + 196] = mem[floor32(mem[_2971]) + _2971 + -(mem[_2971] % 32) + 228 len mem[_2971] % 32]
                                        require ext_code.size(address(_2725))
                                        call address(_2725).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2220, 0, address(_2469), 128, mem[_2971], mem[_2971 + 196 len floor32(mem[_2971]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 417] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[361 len 20], arg2
                    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 1
                    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1:
                        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 317]
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            revert with 0, 'Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] < mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2221 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2600 = mem[(32 * idx) + 317]
                                    _2728 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2728 + 36] = 0
                                    mem[_2728 + 68] = _2221
                                    mem[_2728 + 100] = this.address
                                    mem[_2728 + 132] = 128
                                    mem[_2728 + 164] = mem[_2728]
                                    s = 0
                                    while s < mem[_2728]:
                                        mem[_2728 + s + 196] = mem[_2728 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2728] % 32:
                                        require ext_code.size(address(_2600))
                                        call address(_2600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2221, address(this.address), 128, mem[_2728 + 164 len mem[_2728] + 32]
                                    else:
                                        mem[floor32(mem[_2728]) + _2728 + 196] = mem[floor32(mem[_2728]) + _2728 + -(mem[_2728] % 32) + 228 len mem[_2728] % 32]
                                        require ext_code.size(address(_2600))
                                        call address(_2600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2221, address(this.address), 128, mem[_2728], mem[_2728 + 196 len floor32(mem[_2728]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2471 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2727 = mem[(32 * idx) + 317]
                                    _2975 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2975 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2975 + 36] = 0
                                    mem[_2975 + 68] = _2221
                                    mem[_2975 + 100] = address(_2471)
                                    mem[_2975 + 132] = 128
                                    mem[_2975 + 164] = mem[_2975]
                                    s = 0
                                    while s < mem[_2975]:
                                        mem[_2975 + s + 196] = mem[_2975 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2975] % 32:
                                        require ext_code.size(address(_2727))
                                        call address(_2727).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2221, address(_2471), 128, mem[_2975 + 164 len mem[_2975] + 32]
                                    else:
                                        mem[floor32(mem[_2975]) + _2975 + 196] = mem[floor32(mem[_2975]) + _2975 + -(mem[_2975] % 32) + 228 len mem[_2975] % 32]
                                        require ext_code.size(address(_2727))
                                        call address(_2727).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2221, address(_2471), 128, mem[_2975], mem[_2975 + 196 len floor32(mem[_2975]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2602 = mem[(32 * idx) + 317]
                                    _2730 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2730 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2730 + 36] = _2221
                                    mem[_2730 + 68] = 0
                                    mem[_2730 + 100] = this.address
                                    mem[_2730 + 132] = 128
                                    mem[_2730 + 164] = mem[_2730]
                                    s = 0
                                    while s < mem[_2730]:
                                        mem[_2730 + s + 196] = mem[_2730 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2730] % 32:
                                        require ext_code.size(address(_2602))
                                        call address(_2602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2221, 0, address(this.address), 128, mem[_2730 + 164 len mem[_2730] + 32]
                                    else:
                                        mem[floor32(mem[_2730]) + _2730 + 196] = mem[floor32(mem[_2730]) + _2730 + -(mem[_2730] % 32) + 228 len mem[_2730] % 32]
                                        require ext_code.size(address(_2602))
                                        call address(_2602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2221, 0, address(this.address), 128, mem[_2730], mem[_2730 + 196 len floor32(mem[_2730]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2473 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2729 = mem[(32 * idx) + 317]
                                    _2979 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2979 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2979 + 36] = _2221
                                    mem[_2979 + 68] = 0
                                    mem[_2979 + 100] = address(_2473)
                                    mem[_2979 + 132] = 128
                                    mem[_2979 + 164] = mem[_2979]
                                    s = 0
                                    while s < mem[_2979]:
                                        mem[_2979 + s + 196] = mem[_2979 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2979] % 32:
                                        require ext_code.size(address(_2729))
                                        call address(_2729).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2221, 0, address(_2473), 128, mem[_2979 + 164 len mem[_2979] + 32]
                                    else:
                                        mem[floor32(mem[_2979]) + _2979 + 196] = mem[floor32(mem[_2979]) + _2979 + -(mem[_2979] % 32) + 228 len mem[_2979] % 32]
                                        require ext_code.size(address(_2729))
                                        call address(_2729).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2221, 0, address(_2473), 128, mem[_2979], mem[_2979 + 196 len floor32(mem[_2979]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                revert with 0, 'Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 349]
                            _2222 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 381]
                            if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20] == mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 361 len 20]:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2604 = mem[(32 * idx) + 317]
                                    _2732 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2732 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2732 + 36] = 0
                                    mem[_2732 + 68] = _2222
                                    mem[_2732 + 100] = this.address
                                    mem[_2732 + 132] = 128
                                    mem[_2732 + 164] = mem[_2732]
                                    s = 0
                                    while s < mem[_2732]:
                                        mem[_2732 + s + 196] = mem[_2732 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2732] % 32:
                                        require ext_code.size(address(_2604))
                                        call address(_2604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2222, address(this.address), 128, mem[_2732 + 164 len mem[_2732] + 32]
                                    else:
                                        mem[floor32(mem[_2732]) + _2732 + 196] = mem[floor32(mem[_2732]) + _2732 + -(mem[_2732] % 32) + 228 len mem[_2732] % 32]
                                        require ext_code.size(address(_2604))
                                        call address(_2604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2222, address(this.address), 128, mem[_2732], mem[_2732 + 196 len floor32(mem[_2732]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2475 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2731 = mem[(32 * idx) + 317]
                                    _2983 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2983 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2983 + 36] = 0
                                    mem[_2983 + 68] = _2222
                                    mem[_2983 + 100] = address(_2475)
                                    mem[_2983 + 132] = 128
                                    mem[_2983 + 164] = mem[_2983]
                                    s = 0
                                    while s < mem[_2983]:
                                        mem[_2983 + s + 196] = mem[_2983 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2983] % 32:
                                        require ext_code.size(address(_2731))
                                        call address(_2731).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2222, address(_2475), 128, mem[_2983 + 164 len mem[_2983] + 32]
                                    else:
                                        mem[floor32(mem[_2983]) + _2983 + 196] = mem[floor32(mem[_2983]) + _2983 + -(mem[_2983] % 32) + 228 len mem[_2983] % 32]
                                        require ext_code.size(address(_2731))
                                        call address(_2731).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _2222, address(_2475), 128, mem[_2983], mem[_2983 + 196 len floor32(mem[_2983]) + 32]
                            else:
                                if idx >= mem[285] - 1:
                                    require idx < mem[285]
                                    _2606 = mem[(32 * idx) + 317]
                                    _2734 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2734 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2734 + 36] = _2222
                                    mem[_2734 + 68] = 0
                                    mem[_2734 + 100] = this.address
                                    mem[_2734 + 132] = 128
                                    mem[_2734 + 164] = mem[_2734]
                                    s = 0
                                    while s < mem[_2734]:
                                        mem[_2734 + s + 196] = mem[_2734 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2734] % 32:
                                        require ext_code.size(address(_2606))
                                        call address(_2606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2222, 0, address(this.address), 128, mem[_2734 + 164 len mem[_2734] + 32]
                                    else:
                                        mem[floor32(mem[_2734]) + _2734 + 196] = mem[floor32(mem[_2734]) + _2734 + -(mem[_2734] % 32) + 228 len mem[_2734] % 32]
                                        require ext_code.size(address(_2606))
                                        call address(_2606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2222, 0, address(this.address), 128, mem[_2734], mem[_2734 + 196 len floor32(mem[_2734]) + 32]
                                else:
                                    require idx + 1 < mem[285]
                                    _2477 = mem[(32 * idx + 1) + 317]
                                    require idx < mem[285]
                                    _2733 = mem[(32 * idx) + 317]
                                    _2987 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2987 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2987 + 36] = _2222
                                    mem[_2987 + 68] = 0
                                    mem[_2987 + 100] = address(_2477)
                                    mem[_2987 + 132] = 128
                                    mem[_2987 + 164] = mem[_2987]
                                    s = 0
                                    while s < mem[_2987]:
                                        mem[_2987 + s + 196] = mem[_2987 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_2987] % 32:
                                        require ext_code.size(address(_2733))
                                        call address(_2733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2222, 0, address(_2477), 128, mem[_2987 + 164 len mem[_2987] + 32]
                                    else:
                                        mem[floor32(mem[_2987]) + _2987 + 196] = mem[floor32(mem[_2987]) + _2987 + -(mem[_2987] % 32) + 228 len mem[_2987] % 32]
                                        require ext_code.size(address(_2733))
                                        call address(_2733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _2222, 0, address(_2477), 128, mem[_2987], mem[_2987 + 196 len floor32(mem[_2987]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
    require ext_code.size(stor3)
    call stor3.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
