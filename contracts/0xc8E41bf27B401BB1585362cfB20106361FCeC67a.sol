contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdrawEther() {
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6a7cba4c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
    mem[(2 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, arg2
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
    if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
        mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = 2 * 10^9
        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), 2 * 10^9, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 196] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        require ext_code.size(address(arg3))
        call address(arg3).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 192] = 2
        mem[(8 * ceil32(return_data.size)) + 224] = address(arg3)
        mem[(8 * ceil32(return_data.size)) + 256] = address(arg4)
        if address(arg3) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
            mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 292] = 0
            mem[(8 * ceil32(return_data.size)) + 324] = 0
            mem[(8 * ceil32(return_data.size)) + 356] = 160
            mem[(8 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 224
            t = (8 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 388] = this.address
            mem[(8 * ceil32(return_data.size)) + 420] = 2 * 10^9
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(8 * ceil32(return_data.size)) + 484 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            mem[(10 * ceil32(return_data.size)) + 292] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(10 * ceil32(return_data.size)) + 324] = 0
            require ext_code.size(address(arg4))
            call address(arg4).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
            mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(11 * ceil32(return_data.size)) + 288] = 2
            mem[(11 * ceil32(return_data.size)) + 320] = address(arg4)
            mem[(11 * ceil32(return_data.size)) + 352] = address(arg1)
            if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(11 * ceil32(return_data.size)) + 388] = 0
                idx = 0
                s = (11 * ceil32(return_data.size)) + 320
                t = (11 * ceil32(return_data.size)) + 580
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    revert with 0, 'End balance must exceed start balance.'
            else:
                if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                    mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(11 * ceil32(return_data.size)) + 388] = 0
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + 320
                    t = (11 * ceil32(return_data.size)) + 580
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        revert with 0, 'End balance must exceed start balance.'
                else:
                    mem[(11 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(11 * ceil32(return_data.size)) + 388] = 0
                    mem[(11 * ceil32(return_data.size)) + 420] = 0
                    mem[(11 * ceil32(return_data.size)) + 452] = 160
                    mem[(11 * ceil32(return_data.size)) + 548] = 2
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + 320
                    t = (11 * ceil32(return_data.size)) + 580
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(11 * ceil32(return_data.size)) + 484] = this.address
                    mem[(11 * ceil32(return_data.size)) + 516] = 2 * 10^9
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (12 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _669 = mem[(11 * ceil32(return_data.size)) + 384 len 4], 0
                    require mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 415 < (11 * ceil32(return_data.size)) + return_data.size + 384
                    _686 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384] > test266151307():
                        revert with 'NH{q', 65
                    if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385
                    mem[(12 * ceil32(return_data.size)) + 384] = _686
                    require _669 + (32 * _686) + 32 <= return_data.size
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + _669 + 416
                    t = (12 * ceil32(return_data.size)) + 416
                    while idx < _686:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1029 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1029] == mem[_1029]
                    if mem[_1029] <= ext_call.return_data[0]:
                        revert with 0, 'End balance must exceed start balance.'
        else:
            if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = 0
                mem[(8 * ceil32(return_data.size)) + 324] = 0
                mem[(8 * ceil32(return_data.size)) + 356] = 160
                mem[(8 * ceil32(return_data.size)) + 452] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 224
                t = (8 * ceil32(return_data.size)) + 484
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 388] = this.address
                mem[(8 * ceil32(return_data.size)) + 420] = 2 * 10^9
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(8 * ceil32(return_data.size)) + 484 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 292] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[(10 * ceil32(return_data.size)) + 292] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                mem[(10 * ceil32(return_data.size)) + 324] = 0
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(11 * ceil32(return_data.size)) + 288] = 2
                mem[(11 * ceil32(return_data.size)) + 320] = address(arg4)
                mem[(11 * ceil32(return_data.size)) + 352] = address(arg1)
                if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                    mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(11 * ceil32(return_data.size)) + 388] = 0
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + 320
                    t = (11 * ceil32(return_data.size)) + 580
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        revert with 0, 'End balance must exceed start balance.'
                else:
                    if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 388] = 0
                        idx = 0
                        s = (11 * ceil32(return_data.size)) + 320
                        t = (11 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        mem[(11 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 388] = 0
                        mem[(11 * ceil32(return_data.size)) + 420] = 0
                        mem[(11 * ceil32(return_data.size)) + 452] = 160
                        mem[(11 * ceil32(return_data.size)) + 548] = 2
                        idx = 0
                        s = (11 * ceil32(return_data.size)) + 320
                        t = (11 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(11 * ceil32(return_data.size)) + 484] = this.address
                        mem[(11 * ceil32(return_data.size)) + 516] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(11 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (12 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _670 = mem[(11 * ceil32(return_data.size)) + 384 len 4], 0
                        require mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 <= test266151307()
                        require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 415 < (11 * ceil32(return_data.size)) + return_data.size + 384
                        _687 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]
                        if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384] > test266151307():
                            revert with 'NH{q', 65
                        if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385
                        mem[(12 * ceil32(return_data.size)) + 384] = _687
                        require _670 + (32 * _687) + 32 <= return_data.size
                        idx = 0
                        s = (11 * ceil32(return_data.size)) + _670 + 416
                        t = (12 * ceil32(return_data.size)) + 416
                        while idx < _687:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1031 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1031] == mem[_1031]
                        if mem[_1031] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
            else:
                mem[(8 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = 0
                mem[(8 * ceil32(return_data.size)) + 324] = 0
                mem[(8 * ceil32(return_data.size)) + 356] = 160
                mem[(8 * ceil32(return_data.size)) + 452] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 224
                t = (8 * ceil32(return_data.size)) + 484
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 388] = this.address
                mem[(8 * ceil32(return_data.size)) + 420] = 2 * 10^9
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(8 * ceil32(return_data.size)) + 484 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _271 = mem[(8 * ceil32(return_data.size)) + 288 len 4], 0
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 319 < (8 * ceil32(return_data.size)) + return_data.size + 288
                _277 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]) + 289 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]) + 289
                mem[(10 * ceil32(return_data.size)) + 288] = _277
                require _271 + (32 * _277) + 32 <= return_data.size
                idx = 0
                s = (8 * ceil32(return_data.size)) + _271 + 320
                t = (10 * ceil32(return_data.size)) + 320
                while idx < _277:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _684 = mem[_667]
                require mem[_667] == mem[_667]
                if mem[_667] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                mem[mem[64] + 36] = _684 - ext_call.return_data[0]
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, _684 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _758 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_758] == bool(mem[_758])
                _779 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_779]:
                    revert with 'NH{q', 50
                mem[_779 + 32] = address(arg4)
                if 1 >= mem[_779]:
                    revert with 'NH{q', 50
                mem[_779 + 64] = address(arg1)
                if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                    mem[_779 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_779 + 100] = _684 - ext_call.return_data[0]
                    mem[_779 + 132] = 0
                    mem[_779 + 164] = 160
                    mem[_779 + 260] = mem[_779]
                    idx = 0
                    s = _779 + 32
                    t = _779 + 292
                    while idx < mem[_779]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_779 + 196] = this.address
                    mem[_779 + 228] = 2 * 10^9
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _779 + (32 * mem[_779]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1067 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1067] == mem[_1067]
                    if mem[_1067] <= ext_call.return_data[0]:
                        revert with 0, 'End balance must exceed start balance.'
                else:
                    if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[_779 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_779 + 100] = _684 - ext_call.return_data[0]
                        mem[_779 + 132] = 0
                        mem[_779 + 164] = 160
                        mem[_779 + 260] = mem[_779]
                        idx = 0
                        s = _779 + 32
                        t = _779 + 292
                        while idx < mem[_779]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_779 + 196] = this.address
                        mem[_779 + 228] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _779 + (32 * mem[_779]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1068] == mem[_1068]
                        if mem[_1068] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        mem[_779 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_779 + 100] = _684 - ext_call.return_data[0]
                        mem[_779 + 132] = 0
                        mem[_779 + 164] = 160
                        mem[_779 + 260] = mem[_779]
                        idx = 0
                        s = _779 + 32
                        t = _779 + 292
                        while idx < mem[_779]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_779 + 196] = this.address
                        mem[_779 + 228] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _779 + (32 * mem[_779]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1021 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1030 = mem[_1021]
                        require mem[_1021] <= test266151307()
                        require _1021 + mem[_1021] + 31 < _1021 + return_data.size
                        _1047 = mem[_1021 + mem[_1021]]
                        if mem[_1021 + mem[_1021]] > test266151307():
                            revert with 'NH{q', 65
                        if _1021 + ceil32(return_data.size) + floor32(mem[_1021 + mem[_1021]]) + 1 > test266151307() or floor32(mem[_1021 + mem[_1021]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1021 + ceil32(return_data.size) + floor32(mem[_1021 + mem[_1021]]) + 1
                        mem[_1021 + ceil32(return_data.size)] = _1047
                        require _1030 + (32 * _1047) + 32 <= return_data.size
                        idx = 0
                        s = _1021 + _1030 + 32
                        t = _1021 + ceil32(return_data.size) + 32
                        while idx < _1047:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1195 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1195] == mem[_1195]
                        if mem[_1195] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
    else:
        if address(arg3) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
            mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = 2 * 10^9
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(this.address), 2 * 10^9, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 196] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 192] = 2
            mem[(8 * ceil32(return_data.size)) + 224] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 256] = address(arg4)
            if address(arg3) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = 0
                mem[(8 * ceil32(return_data.size)) + 324] = 0
                mem[(8 * ceil32(return_data.size)) + 356] = 160
                mem[(8 * ceil32(return_data.size)) + 452] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 224
                t = (8 * ceil32(return_data.size)) + 484
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 388] = this.address
                mem[(8 * ceil32(return_data.size)) + 420] = 2 * 10^9
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(8 * ceil32(return_data.size)) + 484 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 292] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[(10 * ceil32(return_data.size)) + 292] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                mem[(10 * ceil32(return_data.size)) + 324] = 0
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(11 * ceil32(return_data.size)) + 288] = 2
                mem[(11 * ceil32(return_data.size)) + 320] = address(arg4)
                mem[(11 * ceil32(return_data.size)) + 352] = address(arg1)
                if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                    mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(11 * ceil32(return_data.size)) + 388] = 0
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + 320
                    t = (11 * ceil32(return_data.size)) + 580
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        revert with 0, 'End balance must exceed start balance.'
                else:
                    if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 388] = 0
                        idx = 0
                        s = (11 * ceil32(return_data.size)) + 320
                        t = (11 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        mem[(11 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 388] = 0
                        mem[(11 * ceil32(return_data.size)) + 420] = 0
                        mem[(11 * ceil32(return_data.size)) + 452] = 160
                        mem[(11 * ceil32(return_data.size)) + 548] = 2
                        idx = 0
                        s = (11 * ceil32(return_data.size)) + 320
                        t = (11 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(11 * ceil32(return_data.size)) + 484] = this.address
                        mem[(11 * ceil32(return_data.size)) + 516] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(11 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (12 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _674 = mem[(11 * ceil32(return_data.size)) + 384 len 4], 0
                        require mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 <= test266151307()
                        require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 415 < (11 * ceil32(return_data.size)) + return_data.size + 384
                        _689 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]
                        if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384] > test266151307():
                            revert with 'NH{q', 65
                        if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385
                        mem[(12 * ceil32(return_data.size)) + 384] = _689
                        require _674 + (32 * _689) + 32 <= return_data.size
                        idx = 0
                        s = (11 * ceil32(return_data.size)) + _674 + 416
                        t = (12 * ceil32(return_data.size)) + 416
                        while idx < _689:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1034 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1034] == mem[_1034]
                        if mem[_1034] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
            else:
                if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                    mem[(8 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 292] = 0
                    mem[(8 * ceil32(return_data.size)) + 324] = 0
                    mem[(8 * ceil32(return_data.size)) + 356] = 160
                    mem[(8 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + 224
                    t = (8 * ceil32(return_data.size)) + 484
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + 388] = this.address
                    mem[(8 * ceil32(return_data.size)) + 420] = 2 * 10^9
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(8 * ceil32(return_data.size)) + 484 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(10 * ceil32(return_data.size)) + 292] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                    mem[(10 * ceil32(return_data.size)) + 324] = 0
                    require ext_code.size(address(arg4))
                    call address(arg4).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, 0
                    mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(11 * ceil32(return_data.size)) + 288] = 2
                    mem[(11 * ceil32(return_data.size)) + 320] = address(arg4)
                    mem[(11 * ceil32(return_data.size)) + 352] = address(arg1)
                    if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 388] = 0
                        idx = 0
                        s = (11 * ceil32(return_data.size)) + 320
                        t = (11 * ceil32(return_data.size)) + 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                            mem[(11 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(11 * ceil32(return_data.size)) + 388] = 0
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 320
                            t = (11 * ceil32(return_data.size)) + 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
                        else:
                            mem[(11 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(11 * ceil32(return_data.size)) + 388] = 0
                            mem[(11 * ceil32(return_data.size)) + 420] = 0
                            mem[(11 * ceil32(return_data.size)) + 452] = 160
                            mem[(11 * ceil32(return_data.size)) + 548] = 2
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 320
                            t = (11 * ceil32(return_data.size)) + 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(11 * ceil32(return_data.size)) + 484] = this.address
                            mem[(11 * ceil32(return_data.size)) + 516] = 2 * 10^9
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _675 = mem[(11 * ceil32(return_data.size)) + 384 len 4], 0
                            require mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 415 < (11 * ceil32(return_data.size)) + return_data.size + 384
                            _690 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]
                            if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384] > test266151307():
                                revert with 'NH{q', 65
                            if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 384 len 4], 0 + 384]) + 385
                            mem[(12 * ceil32(return_data.size)) + 384] = _690
                            require _675 + (32 * _690) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _675 + 416
                            t = (12 * ceil32(return_data.size)) + 416
                            while idx < _690:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1036 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1036] == mem[_1036]
                            if mem[_1036] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
                else:
                    mem[(8 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 292] = 0
                    mem[(8 * ceil32(return_data.size)) + 324] = 0
                    mem[(8 * ceil32(return_data.size)) + 356] = 160
                    mem[(8 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + 224
                    t = (8 * ceil32(return_data.size)) + 484
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + 388] = this.address
                    mem[(8 * ceil32(return_data.size)) + 420] = 2 * 10^9
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), 2 * 10^9, 2, mem[(8 * ceil32(return_data.size)) + 484 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (10 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    _274 = mem[(8 * ceil32(return_data.size)) + 288 len 4], 0
                    require mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 <= test266151307()
                    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 319 < (8 * ceil32(return_data.size)) + return_data.size + 288
                    _278 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]
                    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288] > test266151307():
                        revert with 'NH{q', 65
                    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]) + 289 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], 0 + 288]) + 289
                    mem[(10 * ceil32(return_data.size)) + 288] = _278
                    require _274 + (32 * _278) + 32 <= return_data.size
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + _274 + 320
                    t = (10 * ceil32(return_data.size)) + 320
                    while idx < _278:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _685 = mem[_668]
                    require mem[_668] == mem[_668]
                    if mem[_668] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                    mem[mem[64] + 36] = _685 - ext_call.return_data[0]
                    require ext_code.size(address(arg4))
                    call address(arg4).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, _685 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _759 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_759] == bool(mem[_759])
                    _782 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_782]:
                        revert with 'NH{q', 50
                    mem[_782 + 32] = address(arg4)
                    if 1 >= mem[_782]:
                        revert with 'NH{q', 50
                    mem[_782 + 64] = address(arg1)
                    if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[_782 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_782 + 100] = _685 - ext_call.return_data[0]
                        mem[_782 + 132] = 0
                        mem[_782 + 164] = 160
                        mem[_782 + 260] = mem[_782]
                        idx = 0
                        s = _782 + 32
                        t = _782 + 292
                        while idx < mem[_782]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_782 + 196] = this.address
                        mem[_782 + 228] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _782 + (32 * mem[_782]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1075 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1075] == mem[_1075]
                        if mem[_1075] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                            mem[_782 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_782 + 100] = _685 - ext_call.return_data[0]
                            mem[_782 + 132] = 0
                            mem[_782 + 164] = 160
                            mem[_782 + 260] = mem[_782]
                            idx = 0
                            s = _782 + 32
                            t = _782 + 292
                            while idx < mem[_782]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_782 + 196] = this.address
                            mem[_782 + 228] = 2 * 10^9
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _782 + (32 * mem[_782]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1076 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1076] == mem[_1076]
                            if mem[_1076] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
                        else:
                            mem[_782 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_782 + 100] = _685 - ext_call.return_data[0]
                            mem[_782 + 132] = 0
                            mem[_782 + 164] = 160
                            mem[_782 + 260] = mem[_782]
                            idx = 0
                            s = _782 + 32
                            t = _782 + 292
                            while idx < mem[_782]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_782 + 196] = this.address
                            mem[_782 + 228] = 2 * 10^9
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _782 + (32 * mem[_782]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1026 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1035 = mem[_1026]
                            require mem[_1026] <= test266151307()
                            require _1026 + mem[_1026] + 31 < _1026 + return_data.size
                            _1052 = mem[_1026 + mem[_1026]]
                            if mem[_1026 + mem[_1026]] > test266151307():
                                revert with 'NH{q', 65
                            if _1026 + ceil32(return_data.size) + floor32(mem[_1026 + mem[_1026]]) + 1 > test266151307() or floor32(mem[_1026 + mem[_1026]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1026 + ceil32(return_data.size) + floor32(mem[_1026 + mem[_1026]]) + 1
                            mem[_1026 + ceil32(return_data.size)] = _1052
                            require _1035 + (32 * _1052) + 32 <= return_data.size
                            idx = 0
                            s = _1026 + _1035 + 32
                            t = _1026 + ceil32(return_data.size) + 32
                            while idx < _1052:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1199 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1199] == mem[_1199]
                            if mem[_1199] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
        else:
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = 2 * 10^9
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(this.address), 2 * 10^9, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _65 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _67 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _67
            require _65 + (32 * _67) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _65 + 224
            t = (6 * ceil32(return_data.size)) + 224
            while idx < _67:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _276 = mem[_269]
            require mem[_269] == mem[_269]
            if mem[_269] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _304 = mem[_299]
            require mem[_299] == mem[_299]
            mem[mem[64] + 4] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
            mem[mem[64] + 36] = _276 - ext_call.return_data[0]
            require ext_code.size(address(arg3))
            call address(arg3).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, _276 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_325] == bool(mem[_325])
            _353 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_353]:
                revert with 'NH{q', 50
            mem[_353 + 32] = address(arg3)
            if 1 >= mem[_353]:
                revert with 'NH{q', 50
            mem[_353 + 64] = address(arg4)
            if address(arg3) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                mem[_353 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_353 + 100] = _276 - ext_call.return_data[0]
                mem[_353 + 132] = 0
                mem[_353 + 164] = 160
                mem[_353 + 260] = mem[_353]
                idx = 0
                s = _353 + 32
                t = _353 + 292
                while idx < mem[_353]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_353 + 196] = this.address
                mem[_353 + 228] = 2 * 10^9
                require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _353 + (32 * mem[_353]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _706 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _716 = mem[_706]
                require mem[_706] == mem[_706]
                if mem[_706] < _304:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                mem[mem[64] + 36] = _716 - _304
                require ext_code.size(address(arg4))
                call address(arg4).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, _716 - _304
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _780 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_780] == bool(mem[_780])
                _800 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_800]:
                    revert with 'NH{q', 50
                mem[_800 + 32] = address(arg4)
                if 1 >= mem[_800]:
                    revert with 'NH{q', 50
                mem[_800 + 64] = address(arg1)
                if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                    mem[_800 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_800 + 100] = _716 - _304
                    mem[_800 + 132] = 0
                    mem[_800 + 164] = 160
                    mem[_800 + 260] = mem[_800]
                    idx = 0
                    s = _800 + 32
                    t = _800 + 292
                    while idx < mem[_800]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_800 + 196] = this.address
                    mem[_800 + 228] = 2 * 10^9
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _800 + (32 * mem[_800]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1070 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1070] == mem[_1070]
                    if mem[_1070] <= ext_call.return_data[0]:
                        revert with 0, 'End balance must exceed start balance.'
                else:
                    if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[_800 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_800 + 100] = _716 - _304
                        mem[_800 + 132] = 0
                        mem[_800 + 164] = 160
                        mem[_800 + 260] = mem[_800]
                        idx = 0
                        s = _800 + 32
                        t = _800 + 292
                        while idx < mem[_800]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_800 + 196] = this.address
                        mem[_800 + 228] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _800 + (32 * mem[_800]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1071] == mem[_1071]
                        if mem[_1071] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        mem[_800 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_800 + 100] = _716 - _304
                        mem[_800 + 132] = 0
                        mem[_800 + 164] = 160
                        mem[_800 + 260] = mem[_800]
                        idx = 0
                        s = _800 + 32
                        t = _800 + 292
                        while idx < mem[_800]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_800 + 196] = this.address
                        mem[_800 + 228] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _800 + (32 * mem[_800]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1032 = mem[_1023]
                        require mem[_1023] <= test266151307()
                        require _1023 + mem[_1023] + 31 < _1023 + return_data.size
                        _1049 = mem[_1023 + mem[_1023]]
                        if mem[_1023 + mem[_1023]] > test266151307():
                            revert with 'NH{q', 65
                        if _1023 + ceil32(return_data.size) + floor32(mem[_1023 + mem[_1023]]) + 1 > test266151307() or floor32(mem[_1023 + mem[_1023]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1023 + ceil32(return_data.size) + floor32(mem[_1023 + mem[_1023]]) + 1
                        mem[_1023 + ceil32(return_data.size)] = _1049
                        require _1032 + (32 * _1049) + 32 <= return_data.size
                        idx = 0
                        s = _1023 + _1032 + 32
                        t = _1023 + ceil32(return_data.size) + 32
                        while idx < _1049:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1196 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1196] == mem[_1196]
                        if mem[_1196] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
            else:
                if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                    mem[_353 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_353 + 100] = _276 - ext_call.return_data[0]
                    mem[_353 + 132] = 0
                    mem[_353 + 164] = 160
                    mem[_353 + 260] = mem[_353]
                    idx = 0
                    s = _353 + 32
                    t = _353 + 292
                    while idx < mem[_353]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_353 + 196] = this.address
                    mem[_353 + 228] = 2 * 10^9
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _353 + (32 * mem[_353]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _717 = mem[_707]
                    require mem[_707] == mem[_707]
                    if mem[_707] < _304:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                    mem[mem[64] + 36] = _717 - _304
                    require ext_code.size(address(arg4))
                    call address(arg4).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, _717 - _304
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _781 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_781] == bool(mem[_781])
                    _801 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_801]:
                        revert with 'NH{q', 50
                    mem[_801 + 32] = address(arg4)
                    if 1 >= mem[_801]:
                        revert with 'NH{q', 50
                    mem[_801 + 64] = address(arg1)
                    if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[_801 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_801 + 100] = _717 - _304
                        mem[_801 + 132] = 0
                        mem[_801 + 164] = 160
                        mem[_801 + 260] = mem[_801]
                        idx = 0
                        s = _801 + 32
                        t = _801 + 292
                        while idx < mem[_801]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_801 + 196] = this.address
                        mem[_801 + 228] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _801 + (32 * mem[_801]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1072 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1072] == mem[_1072]
                        if mem[_1072] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                            mem[_801 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_801 + 100] = _717 - _304
                            mem[_801 + 132] = 0
                            mem[_801 + 164] = 160
                            mem[_801 + 260] = mem[_801]
                            idx = 0
                            s = _801 + 32
                            t = _801 + 292
                            while idx < mem[_801]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_801 + 196] = this.address
                            mem[_801 + 228] = 2 * 10^9
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _801 + (32 * mem[_801]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1073 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1073] == mem[_1073]
                            if mem[_1073] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
                        else:
                            mem[_801 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_801 + 100] = _717 - _304
                            mem[_801 + 132] = 0
                            mem[_801 + 164] = 160
                            mem[_801 + 260] = mem[_801]
                            idx = 0
                            s = _801 + 32
                            t = _801 + 292
                            while idx < mem[_801]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_801 + 196] = this.address
                            mem[_801 + 228] = 2 * 10^9
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _801 + (32 * mem[_801]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1024 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1033 = mem[_1024]
                            require mem[_1024] <= test266151307()
                            require _1024 + mem[_1024] + 31 < _1024 + return_data.size
                            _1050 = mem[_1024 + mem[_1024]]
                            if mem[_1024 + mem[_1024]] > test266151307():
                                revert with 'NH{q', 65
                            if _1024 + ceil32(return_data.size) + floor32(mem[_1024 + mem[_1024]]) + 1 > test266151307() or floor32(mem[_1024 + mem[_1024]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1024 + ceil32(return_data.size) + floor32(mem[_1024 + mem[_1024]]) + 1
                            mem[_1024 + ceil32(return_data.size)] = _1050
                            require _1033 + (32 * _1050) + 32 <= return_data.size
                            idx = 0
                            s = _1024 + _1033 + 32
                            t = _1024 + ceil32(return_data.size) + 32
                            while idx < _1050:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1198 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1198] == mem[_1198]
                            if mem[_1198] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
                else:
                    mem[_353 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_353 + 100] = _276 - ext_call.return_data[0]
                    mem[_353 + 132] = 0
                    mem[_353 + 164] = 160
                    mem[_353 + 260] = mem[_353]
                    idx = 0
                    s = _353 + 32
                    t = _353 + 292
                    while idx < mem[_353]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_353 + 196] = this.address
                    mem[_353 + 228] = 2 * 10^9
                    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _353 + (32 * mem[_353]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _664 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _672 = mem[_664]
                    require mem[_664] <= test266151307()
                    require _664 + mem[_664] + 31 < _664 + return_data.size
                    _688 = mem[_664 + mem[_664]]
                    if mem[_664 + mem[_664]] > test266151307():
                        revert with 'NH{q', 65
                    if _664 + ceil32(return_data.size) + floor32(mem[_664 + mem[_664]]) + 1 > test266151307() or floor32(mem[_664 + mem[_664]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _664 + ceil32(return_data.size) + floor32(mem[_664 + mem[_664]]) + 1
                    mem[_664 + ceil32(return_data.size)] = _688
                    require _672 + (32 * _688) + 32 <= return_data.size
                    idx = 0
                    s = _664 + _672 + 32
                    t = _664 + ceil32(return_data.size) + 32
                    while idx < _688:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1045 = mem[_1028]
                    require mem[_1028] == mem[_1028]
                    if mem[_1028] < _304:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = 0x53c153a0df7e050bbefbb70ee9632061f12795fb
                    mem[mem[64] + 36] = _1045 - _304
                    require ext_code.size(address(arg4))
                    call address(arg4).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, _1045 - _304
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1116 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1116] == bool(mem[_1116])
                    _1130 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1130]:
                        revert with 'NH{q', 50
                    mem[_1130 + 32] = address(arg4)
                    if 1 >= mem[_1130]:
                        revert with 'NH{q', 50
                    mem[_1130 + 64] = address(arg1)
                    if address(arg4) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                        mem[_1130 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_1130 + 100] = _1045 - _304
                        mem[_1130 + 132] = 0
                        mem[_1130 + 164] = 160
                        mem[_1130 + 260] = mem[_1130]
                        idx = 0
                        s = _1130 + 32
                        t = _1130 + 292
                        while idx < mem[_1130]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1130 + 196] = this.address
                        mem[_1130 + 228] = 2 * 10^9
                        require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                        call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1130 + (32 * mem[_1130]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1212 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1212] == mem[_1212]
                        if mem[_1212] <= ext_call.return_data[0]:
                            revert with 0, 'End balance must exceed start balance.'
                    else:
                        if address(arg1) == 0x9a775700694b0af4b0dea668f809d453eac4cbcd:
                            mem[_1130 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = _1045 - _304
                            mem[_1130 + 132] = 0
                            mem[_1130 + 164] = 160
                            mem[_1130 + 260] = mem[_1130]
                            idx = 0
                            s = _1130 + 32
                            t = _1130 + 292
                            while idx < mem[_1130]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1130 + 196] = this.address
                            mem[_1130 + 228] = 2 * 10^9
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1130 + (32 * mem[_1130]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1213] == mem[_1213]
                            if mem[_1213] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
                        else:
                            mem[_1130 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = _1045 - _304
                            mem[_1130 + 132] = 0
                            mem[_1130 + 164] = 160
                            mem[_1130 + 260] = mem[_1130]
                            idx = 0
                            s = _1130 + 32
                            t = _1130 + 292
                            while idx < mem[_1130]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1130 + 196] = this.address
                            mem[_1130 + 228] = 2 * 10^9
                            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
                            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1130 + (32 * mem[_1130]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1192 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1197 = mem[_1192]
                            require mem[_1192] <= test266151307()
                            require _1192 + mem[_1192] + 31 < _1192 + return_data.size
                            _1204 = mem[_1192 + mem[_1192]]
                            if mem[_1192 + mem[_1192]] > test266151307():
                                revert with 'NH{q', 65
                            if _1192 + ceil32(return_data.size) + floor32(mem[_1192 + mem[_1192]]) + 1 > test266151307() or floor32(mem[_1192 + mem[_1192]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1192 + ceil32(return_data.size) + floor32(mem[_1192 + mem[_1192]]) + 1
                            mem[_1192 + ceil32(return_data.size)] = _1204
                            require _1197 + (32 * _1204) + 32 <= return_data.size
                            idx = 0
                            s = _1192 + _1197 + 32
                            t = _1192 + ceil32(return_data.size) + 32
                            while idx < _1204:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1236 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1236] == mem[_1236]
                            if mem[_1236] <= ext_call.return_data[0]:
                                revert with 0, 'End balance must exceed start balance.'
}



}
