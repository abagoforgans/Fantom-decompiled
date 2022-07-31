contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function sub_00a861bf(?) payable {
    mem[192] = 3
    mem[224] = stor7
    mem[256] = stor6
    mem[288] = stor4
    mem[320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[324] = 0
    idx = 0
    s = 224
    t = 484
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 3, mem[484 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.swapMax() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = stor5
    mem[160] = stor7
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 516
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if False and block.gasprice > 0:
        revert with 'NH{q', 17
    if msg.value > -1:
        revert with 'NH{q', 17
    if eth.balance(this.address) < msg.value:
        revert with 0, 'no profit'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_7d93ad9d(?) payable {
    mem[128] = stor7
    mem[160] = stor4
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.swapMax() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = stor5
    mem[160] = stor7
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if False and block.gasprice > 0:
        revert with 'NH{q', 17
    if msg.value > -1:
        revert with 'NH{q', 17
    if eth.balance(this.address) < msg.value:
        revert with 0, 'no profit'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_19b8b547(?) payable {
    mem[128] = stor7
    mem[160] = stor4
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.swapMax() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = stor5
    mem[160] = stor6
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = stor6
    mem[160] = stor7
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if False and block.gasprice > 0:
        revert with 'NH{q', 17
    if msg.value > -1:
        revert with 'NH{q', 17
    if eth.balance(this.address) < msg.value:
        revert with 0, 'no profit'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_12925519(?) payable {
    mem[96] = 2
    mem[192] = 3
    mem[224] = stor7
    mem[256] = stor6
    mem[288] = stor4
    mem[320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[324] = 0
    mem[356] = 128
    mem[452] = 3
    idx = 0
    s = 224
    t = 484
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[388] = this.address
    mem[420] = block.timestamp
    require ext_code.size(stor1)
    call stor1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 3, mem[484 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.swapMax() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = stor5
    mem[160] = stor6
    mem[324] = this.address
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 356] = 0
    mem[ceil32(return_data.size) + 388] = 160
    mem[ceil32(return_data.size) + 484] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 516
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 420] = this.address
    mem[ceil32(return_data.size) + 452] = block.timestamp
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = stor6
    mem[160] = stor7
    mem[ceil32(return_data.size) + 324] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 356] = 0
    mem[(2 * ceil32(return_data.size)) + 388] = 160
    mem[(2 * ceil32(return_data.size)) + 484] = 2
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 'NH{q', 17
    if False and block.gasprice > 0:
        revert with 'NH{q', 17
    if msg.value > -1:
        revert with 'NH{q', 17
    if eth.balance(this.address) < msg.value:
        revert with 0, 'no profit'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x00a861bf(?????) == uint32(call.func_hash) >> 224:
            mem[224] = 3
            mem[256] = stor7
            mem[288] = stor6
            mem[320] = stor4
            mem[352] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[356] = 0
            idx = 0
            s = 256
            t = 516
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[516 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor3)
            call stor3.swapMax() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160] = stor5
            mem[192] = stor7
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 160
            t = ceil32(return_data.size) + 548
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 548 len 64]
        else:
            if unknown_0x12925519(?????) == uint32(call.func_hash) >> 224:
                mem[224] = 3
                mem[256] = stor7
                mem[288] = stor6
                mem[320] = stor4
                mem[352] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[356] = 0
                idx = 0
                s = 256
                t = 516
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[516 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.swapMax() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160] = stor5
                mem[192] = stor6
                require ext_code.size(stor5)
                staticcall stor5.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 160
                t = ceil32(return_data.size) + 548
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 548 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160] = stor6
                mem[192] = stor7
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 160
                t = (2 * ceil32(return_data.size)) + 548
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 548 len 64]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x19b8b547(?????):
                    require unknown_0x7d93ad9d(?????) == uint32(call.func_hash) >> 224
                    mem[160] = stor7
                    mem[192] = stor4
                    mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[228] = 0
                    idx = 0
                    s = 160
                    t = 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    call stor3.swapMax() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160] = stor5
                    mem[192] = stor7
                    require ext_code.size(stor5)
                    staticcall stor5.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    idx = 0
                    s = 160
                    t = ceil32(return_data.size) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                else:
                    mem[160] = stor7
                    mem[192] = stor4
                    mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[228] = 0
                    idx = 0
                    s = 160
                    t = 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    call stor3.swapMax() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160] = stor5
                    mem[192] = stor6
                    require ext_code.size(stor5)
                    staticcall stor5.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    idx = 0
                    s = 160
                    t = ceil32(return_data.size) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160] = stor6
                    mem[192] = stor7
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    idx = 0
                    s = 160
                    t = (2 * ceil32(return_data.size)) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        if False and block.gasprice > 0:
            revert with 'NH{q', 17
        if msg.value > -1:
            revert with 'NH{q', 17
        if eth.balance(this.address) < msg.value:
            revert with 0, 'no profit'
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
}



}
