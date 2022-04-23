contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_24e1dd92(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != ('cd', 68).length - 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0xfe646578526f757465724164647265737365732073686f756c642068617320636f696e50617468416464726573736573206c656e677468202d20,
                    mem[222 len 6]
    require 0 < ('cd', 68).length
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Inital transfer from failed'
    require ('cd', 100).length
    idx = 1
    s = address(('cd', 100)[0])
    t = 1
    while idx < ('cd', 100).length:
        if address(s) == address(cd[((32 * idx) + cd[100] + 36)]):
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < ('cd', 100).length
        idx = idx + 1
        s = address(cd[((32 * idx) + cd[100] + 36)])
        t = t + 1
        continue 
    require t <= test266151307()
    mem[96] = t
    mem[64] = (32 * t) + 128
    if not t:
        idx = 0
        s = 0
        while idx < ('cd', 100).length:
            if not s:
                _214 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require idx < ('cd', 68).length
                require 0 < mem[_214]
                mem[_214 + 32] = address(cd[((32 * idx) + cd[68] + 36)])
                require idx + 1 < ('cd', 68).length
                require 1 < mem[_214]
                mem[_214 + 64] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[64] = _214 + 160
                mem[_214 + 96] = _214
                require idx < ('cd', 100).length
                mem[_214 + 128] = address(cd[((32 * idx) + cd[100] + 36)])
                require s < mem[96]
                mem[(32 * s) + 128] = _214 + 96
                idx = idx + 1
                s = s + 1
                continue 
            require idx < ('cd', 100).length
            require s - 1 < mem[96]
            if mem[mem[(32 * s - 1) + 128] + 44 len 20] != address(cd[((32 * idx) + cd[100] + 36)]):
                _233 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require idx < ('cd', 68).length
                require 0 < mem[_233]
                mem[_233 + 32] = address(cd[((32 * idx) + cd[68] + 36)])
                require idx + 1 < ('cd', 68).length
                require 1 < mem[_233]
                mem[_233 + 64] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[64] = _233 + 160
                mem[_233 + 96] = _233
                require idx < ('cd', 100).length
                mem[_233 + 128] = address(cd[((32 * idx) + cd[100] + 36)])
                require s < mem[96]
                mem[(32 * s) + 128] = _233 + 96
                idx = idx + 1
                s = s + 1
                continue 
            _238 = mem[64]
            mem[64] = mem[64] + 64
            mem[_238] = 96
            mem[_238 + 32] = 0
            require s - 1 < mem[96]
            _251 = mem[(32 * s - 1) + 128]
            _253 = mem[mem[mem[(32 * s - 1) + 128]]]
            require mem[mem[mem[(32 * s - 1) + 128]]] + 1 <= test266151307()
            _262 = mem[64]
            mem[mem[64]] = mem[mem[mem[(32 * s - 1) + 128]]] + 1
            mem[64] = mem[64] + (32 * _253 + 1) + 32
            if not _253 + 1:
                _382 = mem[mem[_251]]
                t = 0
                while t < _382:
                    require t < mem[mem[_251]]
                    require t < mem[_262]
                    mem[(32 * t) + _262 + 32] = mem[(32 * t) + mem[_251] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < ('cd', 68).length
                require mem[mem[_251]] < mem[_262]
                mem[(32 * mem[mem[_251]]) + _262 + 32] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                _408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_408] = _262
                require idx < ('cd', 100).length
                mem[_408 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                require s - 1 < mem[96]
                mem[(32 * s - 1) + 128] = _408
            else:
                mem[_262 + 32 len 32 * _253 + 1] = call.data[calldata.size len 32 * _253 + 1]
                _384 = mem[mem[_251]]
                t = 0
                while t < _384:
                    require t < mem[mem[_251]]
                    require t < mem[_262]
                    mem[(32 * t) + _262 + 32] = mem[(32 * t) + mem[_251] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < ('cd', 68).length
                require mem[mem[_251]] < mem[_262]
                mem[(32 * mem[mem[_251]]) + _262 + 32] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = _262
                require idx < ('cd', 100).length
                mem[_409 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                require s - 1 < mem[96]
                mem[(32 * s - 1) + 128] = _409
            idx = idx + 1
            s = s
            continue 
        _380 = mem[96]
        idx = 0
        s = cd[4]
        while idx < _380:
            require idx < mem[96]
            _394 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _407 = mem[mem[(32 * idx) + 128] + 32]
            require 0 < mem[mem[mem[(32 * idx) + 128]]]
            _418 = mem[mem[mem[(32 * idx) + 128]] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
            require ext_code.size(address(_418))
            call address(_418).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Approve failed'
            _439 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (500 * 3600)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[_394]
            _441 = mem[_394]
            s = 0
            while s < 32 * _441:
                mem[s + mem[64] + 196] = mem[s + _394 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(_407))
            call address(_407).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _441) + _439 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_394] - 1 < mem[_394]
            _545 = mem[(32 * mem[_394] - 1) + _394 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_545))
            staticcall address(_545).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        if s <= cd[36]:
            revert with 0, 'Final amount lower than required'
        require ('cd', 68).length - 1 < ('cd', 68).length
        _410 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s
        _411 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_411 + 32 len 4] = transfer(address rg1, uint256 rg2)
        _414 = mem[_411]
        mem[mem[64] len floor32(mem[_411])] = mem[_411 + 32 len floor32(mem[_411])]
        mem[mem[64] + floor32(mem[_411]) + -(mem[_411] % 32) + 32 len mem[_411] % 32] = mem[_411 + floor32(mem[_411]) + -(mem[_411] % 32) + 64 len mem[_411] % 32]
        call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _414 + _410 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                45,
                                0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
        else:
            _536 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_536] = return_data.size
            mem[_536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[_536 + 32]:
                    revert with 0, 
                                32,
                                45,
                                0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
    else:
        mem[64] = (32 * t) + 192
        mem[(32 * t) + 128] = 96
        mem[(32 * t) + 160] = 0
        mem[var25001] = (32 * t) + 128
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * t) + 128] = 96
            mem[(32 * t) + 160] = 0
            mem[s + 32] = (32 * t) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 100).length:
            if not s:
                _541 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require idx < ('cd', 68).length
                require 0 < mem[_541]
                mem[_541 + 32] = address(cd[((32 * idx) + cd[68] + 36)])
                require idx + 1 < ('cd', 68).length
                require 1 < mem[_541]
                mem[_541 + 64] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[64] = _541 + 160
                mem[_541 + 96] = _541
                require idx < ('cd', 100).length
                mem[_541 + 128] = address(cd[((32 * idx) + cd[100] + 36)])
                require s < mem[96]
                mem[(32 * s) + 128] = _541 + 96
                idx = idx + 1
                s = s + 1
                continue 
            require idx < ('cd', 100).length
            require s - 1 < mem[96]
            if mem[mem[(32 * s - 1) + 128] + 44 len 20] != address(cd[((32 * idx) + cd[100] + 36)]):
                _574 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require idx < ('cd', 68).length
                require 0 < mem[_574]
                mem[_574 + 32] = address(cd[((32 * idx) + cd[68] + 36)])
                require idx + 1 < ('cd', 68).length
                require 1 < mem[_574]
                mem[_574 + 64] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[64] = _574 + 160
                mem[_574 + 96] = _574
                require idx < ('cd', 100).length
                mem[_574 + 128] = address(cd[((32 * idx) + cd[100] + 36)])
                require s < mem[96]
                mem[(32 * s) + 128] = _574 + 96
                idx = idx + 1
                s = s + 1
                continue 
            _580 = mem[64]
            mem[64] = mem[64] + 64
            mem[_580] = 96
            mem[_580 + 32] = 0
            require s - 1 < mem[96]
            _598 = mem[(32 * s - 1) + 128]
            _600 = mem[mem[mem[(32 * s - 1) + 128]]]
            require mem[mem[mem[(32 * s - 1) + 128]]] + 1 <= test266151307()
            _607 = mem[64]
            mem[mem[64]] = mem[mem[mem[(32 * s - 1) + 128]]] + 1
            mem[64] = mem[64] + (32 * _600 + 1) + 32
            if not _600 + 1:
                _670 = mem[mem[_598]]
                t = 0
                while t < _670:
                    require t < mem[mem[_598]]
                    require t < mem[_607]
                    mem[(32 * t) + _607 + 32] = mem[(32 * t) + mem[_598] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < ('cd', 68).length
                require mem[mem[_598]] < mem[_607]
                mem[(32 * mem[mem[_598]]) + _607 + 32] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                _695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_695] = _607
                require idx < ('cd', 100).length
                mem[_695 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                require s - 1 < mem[96]
                mem[(32 * s - 1) + 128] = _695
            else:
                mem[_607 + 32 len 32 * _600 + 1] = call.data[calldata.size len 32 * _600 + 1]
                _672 = mem[mem[_598]]
                t = 0
                while t < _672:
                    require t < mem[mem[_598]]
                    require t < mem[_607]
                    mem[(32 * t) + _607 + 32] = mem[(32 * t) + mem[_598] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < ('cd', 68).length
                require mem[mem[_598]] < mem[_607]
                mem[(32 * mem[mem[_598]]) + _607 + 32] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                _696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_696] = _607
                require idx < ('cd', 100).length
                mem[_696 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                require s - 1 < mem[96]
                mem[(32 * s - 1) + 128] = _696
            idx = idx + 1
            s = s
            continue 
        _668 = mem[96]
        idx = 0
        s = cd[4]
        while idx < _668:
            require idx < mem[96]
            _681 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _694 = mem[mem[(32 * idx) + 128] + 32]
            require 0 < mem[mem[mem[(32 * idx) + 128]]]
            _705 = mem[mem[mem[(32 * idx) + 128]] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
            require ext_code.size(address(_705))
            call address(_705).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Approve failed'
            _717 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (500 * 3600)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[_681]
            _719 = mem[_681]
            s = 0
            while s < 32 * _719:
                mem[s + mem[64] + 196] = mem[s + _681 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(_694))
            call address(_694).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _719) + _717 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_681] - 1 < mem[_681]
            _762 = mem[(32 * mem[_681] - 1) + _681 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_762))
            staticcall address(_762).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        if s <= cd[36]:
            revert with 0, 'Final amount lower than required'
        require ('cd', 68).length - 1 < ('cd', 68).length
        _697 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s
        _698 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_698 + 32 len 4] = transfer(address rg1, uint256 rg2)
        _701 = mem[_698]
        mem[mem[64] len floor32(mem[_698])] = mem[_698 + 32 len floor32(mem[_698])]
        mem[mem[64] + floor32(mem[_698]) + -(mem[_698] % 32) + 32 len mem[_698] % 32] = mem[_698 + floor32(mem[_698]) + -(mem[_698] % 32) + 64 len mem[_698] % 32]
        call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _701 + _697 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                45,
                                0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
        else:
            _757 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_757] = return_data.size
            mem[_757 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[_757 + 32]:
                    revert with 0, 
                                32,
                                45,
                                0x315472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
    return s
}



}
