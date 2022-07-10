contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f821b8f(?)
#  - sub_d810ab59(?)
#
address stor0;
mapping of uint8 stor1;
mapping of uint256 sub_8d8be814;
mapping of uint8 stor3;

function allowedAddresses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_8d8be814(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8d8be814[arg1]
}

function sub_f544310e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor3[arg1][arg2])
}

function _fallback() payable {
    revert
}

function giveAccess(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = 1
}

function sub_8198ff53(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_8d8be814[address(arg1)] = arg2
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1a741fb3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2062acd9(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if arg2:
        return arg4, arg5
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3:
        if ext_call.return_data[0] < arg4:
            revert with 'NH{q', 17
        require ext_call.return_data[0] - arg4 >= sub_8d8be814[address(arg1)]
    if sub_8d8be814[address(arg1)] > !arg4:
        revert with 'NH{q', 17
    if ext_call.return_data[0] >= sub_8d8be814[address(arg1)] + arg4:
        return arg4, arg5
    if ext_call.return_data[0] <= sub_8d8be814[address(arg1)]:
        revert with 0, 'BELOW_MINIMAL_AMOUNT'
    if ext_call.return_data[0] < sub_8d8be814[address(arg1)]:
        revert with 'NH{q', 17
    if arg5 and ext_call.return_data[0] - sub_8d8be814[address(arg1)] > -1 / arg5:
        revert with 'NH{q', 17
    if not arg4:
        revert with 'NH{q', 18
    return ext_call.return_data[0] - sub_8d8be814[address(arg1)], 
           (ext_call.return_data[0] * arg5) - (sub_8d8be814[address(arg1)] * arg5) / arg4
}

function sub_828dc6af(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if eth.balance(cd[((32 * idx) + cd[36] + 36)]) < cd[4]:
            if cd[4] < eth.balance(cd[((32 * idx) + cd[36] + 36)]):
                revert with 'NH{q', 17
            call address(cd[((32 * idx) + cd[36] + 36)]) with:
               value cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)]) wei
                 gas gas_remaining wei
            if return_data.size:
                _22 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22] = return_data.size
                mem[_22 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_d4bfd221(?) {
    require calldata.size - 4 >= 160
    require cd[4] == bool(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if not stor1[msg.sender]:
        revert with 0, 'Address has no access'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if not stor3[address(cd[132])][address(('cd', 100)[0])]:
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        stor3[address(cd[132])][address(('cd', 100)[0])] = 1
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if ('cd', 100).length < 1:
            revert with 'NH{q', 17
        if ('cd', 100).length - 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
        mem[ceil32(return_data.size) + 196] = this.address
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                idx = 0
                s = cd[100] + 36
                t = (2 * ceil32(return_data.size)) + 484
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[132]))
                call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                    emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                    emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(('cd', 100)[0]), 0
                else:
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                    emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), 0
            else:
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if cd[4]:
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[36]:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] - cd[36] >= sub_8d8be814[address(('cd', 100)[0])]
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        idx = 0
                        s = cd[100] + 36
                        t = (6 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        idx = 0
                        s = cd[100] + 36
                        t = (6 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(('cd', 100)[0]), 0
                    else:
                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), 0
                else:
                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        mem[(4 * ceil32(return_data.size)) + 324] = cd[68]
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        mem[(4 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36]
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(2 * ceil32(return_data.size)) + 224] >= 0 and ext_call.return_data[0] < mem[(2 * ceil32(return_data.size)) + 224] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if mem[(2 * ceil32(return_data.size)) + 224] < 0 and ext_call.return_data[0] > mem[(2 * ceil32(return_data.size)) + 224] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 224], address(('cd', 100)[0]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 224]
                    else:
                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(2 * ceil32(return_data.size)) + 256] >= 0 and ext_call.return_data[0] < mem[(2 * ceil32(return_data.size)) + 256] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if mem[(2 * ceil32(return_data.size)) + 256] < 0 and ext_call.return_data[0] > mem[(2 * ceil32(return_data.size)) + 256] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 224], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 256]
        else:
            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                idx = 0
                s = cd[100] + 36
                t = (4 * ceil32(return_data.size)) + 484
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[132]))
                call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
            else:
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not cd[4]:
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        idx = 0
                        s = cd[100] + 36
                        t = (6 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        idx = 0
                        s = cd[100] + 36
                        t = (6 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                else:
                    if ext_call.return_data[0] < cd[36]:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] - cd[36] >= sub_8d8be814[address(('cd', 100)[0])]
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        idx = 0
                        s = cd[100] + 36
                        t = (7 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(7 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        idx = 0
                        s = cd[100] + 36
                        t = (7 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(7 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(('cd', 100)[0]))
            staticcall address(('cd', 100)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(('cd', 100)[0]), 0
            else:
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), 0
    else:
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if ('cd', 100).length < 1:
            revert with 'NH{q', 17
        if ('cd', 100).length - 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(('cd', 100)[0]) != address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
            mem[ceil32(return_data.size) + 196] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                idx = 0
                s = cd[100] + 36
                t = (2 * ceil32(return_data.size)) + 484
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[132]))
                call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                    emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                    emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(('cd', 100)[0]), 0
                else:
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                    emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), 0
            else:
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if cd[4]:
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[36]:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] - cd[36] >= sub_8d8be814[address(('cd', 100)[0])]
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        idx = 0
                        s = cd[100] + 36
                        t = (6 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        idx = 0
                        s = cd[100] + 36
                        t = (6 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(('cd', 100)[0]), 0
                    else:
                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), 0
                else:
                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        mem[(4 * ceil32(return_data.size)) + 324] = cd[68]
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        mem[(4 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36]
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(2 * ceil32(return_data.size)) + 224] >= 0 and ext_call.return_data[0] < mem[(2 * ceil32(return_data.size)) + 224] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if mem[(2 * ceil32(return_data.size)) + 224] < 0 and ext_call.return_data[0] > mem[(2 * ceil32(return_data.size)) + 224] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 224], address(('cd', 100)[0]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 224]
                    else:
                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(2 * ceil32(return_data.size)) + 256] >= 0 and ext_call.return_data[0] < mem[(2 * ceil32(return_data.size)) + 256] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if mem[(2 * ceil32(return_data.size)) + 256] < 0 and ext_call.return_data[0] > mem[(2 * ceil32(return_data.size)) + 256] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 224], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0] - mem[(2 * ceil32(return_data.size)) + 256]
        else:
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
            if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                idx = 0
                s = cd[100] + 36
                t = ceil32(return_data.size) + 484
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[132]))
                call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                    emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                    emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(('cd', 100)[0]), 0
                else:
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                    emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), 0
            else:
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not cd[4]:
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        mem[(2 * ceil32(return_data.size)) + 324] = cd[68]
                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                        mem[(2 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (2 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                        mem[(2 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        mem[(2 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36]
                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                        mem[(2 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (2 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                        mem[(2 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(return_data.size) + 224] >= 0 and ext_call.return_data[0] < mem[ceil32(return_data.size) + 224] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 224] < 0 and ext_call.return_data[0] > mem[ceil32(return_data.size) + 224] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if address(('cd', 100)[0]) != address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[ceil32(return_data.size) + 256] >= 0 and ext_call.return_data[0] < mem[ceil32(return_data.size) + 256] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if mem[ceil32(return_data.size) + 256] < 0 and ext_call.return_data[0] > mem[ceil32(return_data.size) + 256] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 384] = address(('cd', 100)[0])
                        mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 288] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 320] = address(('cd', 100)[0])
                        mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0] - mem[ceil32(return_data.size) + 224]
                        mem[(4 * ceil32(return_data.size)) + 384] = address(('cd', 100)[0])
                        mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0] - mem[ceil32(return_data.size) + 224]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224], address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224]
                else:
                    if ext_call.return_data[0] < cd[36]:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] - cd[36] >= sub_8d8be814[address(('cd', 100)[0])]
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_8d8be814[address(('cd', 100)[0])] > !cd[36]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] >= sub_8d8be814[address(('cd', 100)[0])] + cd[36]:
                        mem[(4 * ceil32(return_data.size)) + 324] = cd[68]
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    else:
                        if ext_call.return_data[0] <= sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 0, 'BELOW_MINIMAL_AMOUNT'
                        if ext_call.return_data[0] < sub_8d8be814[address(('cd', 100)[0])]:
                            revert with 'NH{q', 17
                        if cd[68] and ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])] > -1 / cd[68]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        mem[(4 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36]
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = ('cd', 100).length
                        idx = 0
                        s = cd[100] + 36
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = 5314151696
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5314151696
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[ceil32(return_data.size) + 224] >= 0 and ext_call.return_data[0] < mem[ceil32(return_data.size) + 224] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 224] < 0 and ext_call.return_data[0] > mem[ceil32(return_data.size) + 224] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(('cd', 100)[0]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224], address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224]
                    else:
                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[ceil32(return_data.size) + 256] >= 0 and ext_call.return_data[0] < mem[ceil32(return_data.size) + 256] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if mem[ceil32(return_data.size) + 256] < 0 and ext_call.return_data[0] > mem[ceil32(return_data.size) + 256] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 256]
}

function sub_2aa6ab82(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'Address has no access'
    idx = 0
    s = 0
    s = cd[36]
    t = cd[4]
    while idx < ('cd', 100).length:
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
        staticcall address(cd[((32 * idx) + cd[100] + 36)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _522 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _523 = mem[_522]
        require mem[_522] == mem[_522 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
        staticcall address(cd[((32 * idx) + cd[100] + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _526 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _527 = mem[_526]
        require mem[_526] == mem[_526 + 12 len 20]
        if ('cd', 100).length < 1:
            revert with 'NH{q', 17
        if address(t) == address(_523):
            if idx == ('cd', 100).length - 1:
                _528 = mem[64]
                mem[64] = mem[64] + 192
                mem[_528] = address(t)
                mem[_528 + 32] = address(_527)
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                mem[_528 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_528 + 96] = s
                mem[_528 + 128] = cd[68]
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                mem[_528 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[0] = address(t)
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
                if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_527))
                    staticcall address(_527).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _568 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _576 = mem[_568]
                    if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
                        _601 = mem[64]
                        mem[mem[64]] = 1
                        mem[64] = mem[64] + 64
                        if 0 >= mem[_601]:
                            revert with 'NH{q', 50
                        mem[_601 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                        mem[_601 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                        mem[_601 + 68] = address(t)
                        mem[_601 + 100] = address(_527)
                        mem[_601 + 132] = s
                        mem[_601 + 164] = cd[68]
                        mem[_601 + 196] = 224
                        mem[_601 + 292] = mem[_601]
                        s = 0
                        t = _601 + 32
                        u = _601 + 324
                        while s < mem[_601]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_601 + 228] = this.address
                        mem[_601 + 260] = 5314151696
                        require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                        call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _601 + (32 * mem[_601]) + -mem[64] + 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1090 = mem[_528 + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1090))
                        staticcall address(_1090).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1158] < _576:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _527
                        s = mem[_1158] - _576
                        t = _527
                        continue 
                    if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                        _597 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_597]:
                            revert with 'NH{q', 50
                        mem[_597 + 32] = address(t)
                        if 1 >= mem[_597]:
                            revert with 'NH{q', 50
                        mem[_597 + 64] = address(_527)
                        mem[_597 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_597 + 100] = s
                        mem[_597 + 132] = cd[68]
                        mem[_597 + 164] = 160
                        mem[_597 + 260] = mem[_597]
                        s = 0
                        t = _597 + 32
                        u = _597 + 292
                        while s < mem[_597]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_597 + 196] = this.address
                        mem[_597 + 228] = 5314151696
                        require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                        call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _597 + (32 * mem[_597]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1084 = mem[_528 + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1084))
                        staticcall address(_1084).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1156] < _576:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _527
                        s = mem[_1156] - _576
                        t = _527
                        continue 
                    _622 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_622]:
                        revert with 'NH{q', 50
                    mem[_622 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_622 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_622 + 68] = address(t)
                    mem[_622 + 100] = address(_527)
                    mem[_622 + 132] = s
                    mem[_622 + 164] = cd[68]
                    mem[_622 + 196] = 224
                    mem[_622 + 292] = mem[_622]
                    s = 0
                    t = _622 + 32
                    u = _622 + 324
                    while s < mem[_622]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_622 + 228] = this.address
                    mem[_622 + 260] = 5314151696
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _622 + (32 * mem[_622]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1087 = mem[_528 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1087))
                    staticcall address(_1087).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1157] < _576:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _527
                    s = mem[_1157] - _576
                    t = _527
                    continue 
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(t))
                call address(t).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[132] + 36)]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _569 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_569] == bool(mem[_569])
                mem[0] = address(t)
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
                stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_527))
                staticcall address(_527).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _706 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _734 = mem[_706]
                if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
                    _774 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_774]:
                        revert with 'NH{q', 50
                    mem[_774 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_774 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_774 + 68] = address(t)
                    mem[_774 + 100] = address(_527)
                    mem[_774 + 132] = s
                    mem[_774 + 164] = cd[68]
                    mem[_774 + 196] = 224
                    mem[_774 + 292] = mem[_774]
                    s = 0
                    t = _774 + 32
                    u = _774 + 324
                    while s < mem[_774]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_774 + 228] = this.address
                    mem[_774 + 260] = 5314151696
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _774 + (32 * mem[_774]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1099 = mem[_528 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1099))
                    staticcall address(_1099).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1161 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1161] < _734:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _527
                    s = mem[_1161] - _734
                    t = _527
                    continue 
                if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                    _770 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_770]:
                        revert with 'NH{q', 50
                    mem[_770 + 32] = address(t)
                    if 1 >= mem[_770]:
                        revert with 'NH{q', 50
                    mem[_770 + 64] = address(_527)
                    mem[_770 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_770 + 100] = s
                    mem[_770 + 132] = cd[68]
                    mem[_770 + 164] = 160
                    mem[_770 + 260] = mem[_770]
                    s = 0
                    t = _770 + 32
                    u = _770 + 292
                    while s < mem[_770]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_770 + 196] = this.address
                    mem[_770 + 228] = 5314151696
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _770 + (32 * mem[_770]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1093 = mem[_528 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1093))
                    staticcall address(_1093).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1159] < _734:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _527
                    s = mem[_1159] - _734
                    t = _527
                    continue 
                _799 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_799]:
                    revert with 'NH{q', 50
                mem[_799 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_799 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_799 + 68] = address(t)
                mem[_799 + 100] = address(_527)
                mem[_799 + 132] = s
                mem[_799 + 164] = cd[68]
                mem[_799 + 196] = 224
                mem[_799 + 292] = mem[_799]
                s = 0
                t = _799 + 32
                u = _799 + 324
                while s < mem[_799]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_799 + 228] = this.address
                mem[_799 + 260] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _799 + (32 * mem[_799]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1096 = mem[_528 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1096))
                staticcall address(_1096).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1160] < _734:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _527
                s = mem[_1160] - _734
                t = _527
                continue 
            _529 = mem[64]
            mem[64] = mem[64] + 192
            mem[_529] = address(t)
            mem[_529 + 32] = address(_527)
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_529 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_529 + 96] = s
            mem[_529 + 128] = 0
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_529 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_527))
                staticcall address(_527).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _570 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _578 = mem[_570]
                if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
                    _607 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_607]:
                        revert with 'NH{q', 50
                    mem[_607 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_607 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_607 + 68] = address(t)
                    mem[_607 + 100] = address(_527)
                    mem[_607 + 132] = s
                    mem[_607 + 164] = 0
                    mem[_607 + 196] = 224
                    mem[_607 + 292] = mem[_607]
                    s = 0
                    t = _607 + 32
                    u = _607 + 324
                    while s < mem[_607]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_607 + 228] = this.address
                    mem[_607 + 260] = 5314151696
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _607 + (32 * mem[_607]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1108 = mem[_529 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1108))
                    staticcall address(_1108).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1164] < _578:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _527
                    s = mem[_1164] - _578
                    t = _527
                    continue 
                if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                    _603 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_603]:
                        revert with 'NH{q', 50
                    mem[_603 + 32] = address(t)
                    if 1 >= mem[_603]:
                        revert with 'NH{q', 50
                    mem[_603 + 64] = address(_527)
                    mem[_603 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_603 + 100] = s
                    mem[_603 + 132] = 0
                    mem[_603 + 164] = 160
                    mem[_603 + 260] = mem[_603]
                    s = 0
                    t = _603 + 32
                    u = _603 + 292
                    while s < mem[_603]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_603 + 196] = this.address
                    mem[_603 + 228] = 5314151696
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _603 + (32 * mem[_603]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1102 = mem[_529 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1102))
                    staticcall address(_1102).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1162] < _578:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _527
                    s = mem[_1162] - _578
                    t = _527
                    continue 
                _627 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_627]:
                    revert with 'NH{q', 50
                mem[_627 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_627 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_627 + 68] = address(t)
                mem[_627 + 100] = address(_527)
                mem[_627 + 132] = s
                mem[_627 + 164] = 0
                mem[_627 + 196] = 224
                mem[_627 + 292] = mem[_627]
                s = 0
                t = _627 + 32
                u = _627 + 324
                while s < mem[_627]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_627 + 228] = this.address
                mem[_627 + 260] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _627 + (32 * mem[_627]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1105 = mem[_529 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1105))
                staticcall address(_1105).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1163] < _578:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _527
                s = mem[_1163] - _578
                t = _527
                continue 
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(t))
            call address(t).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[132] + 36)]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _571 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_571] == bool(mem[_571])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_527))
            staticcall address(_527).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _713 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _737 = mem[_713]
            if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
                _781 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_781]:
                    revert with 'NH{q', 50
                mem[_781 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_781 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_781 + 68] = address(t)
                mem[_781 + 100] = address(_527)
                mem[_781 + 132] = s
                mem[_781 + 164] = 0
                mem[_781 + 196] = 224
                mem[_781 + 292] = mem[_781]
                s = 0
                t = _781 + 32
                u = _781 + 324
                while s < mem[_781]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_781 + 228] = this.address
                mem[_781 + 260] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _781 + (32 * mem[_781]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1117 = mem[_529 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1117))
                staticcall address(_1117).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1167] < _737:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _527
                s = mem[_1167] - _737
                t = _527
                continue 
            if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                _777 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_777]:
                    revert with 'NH{q', 50
                mem[_777 + 32] = address(t)
                if 1 >= mem[_777]:
                    revert with 'NH{q', 50
                mem[_777 + 64] = address(_527)
                mem[_777 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_777 + 100] = s
                mem[_777 + 132] = 0
                mem[_777 + 164] = 160
                mem[_777 + 260] = mem[_777]
                s = 0
                t = _777 + 32
                u = _777 + 292
                while s < mem[_777]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_777 + 196] = this.address
                mem[_777 + 228] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _777 + (32 * mem[_777]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1111 = mem[_529 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1111))
                staticcall address(_1111).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1165 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1165] < _737:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _527
                s = mem[_1165] - _737
                t = _527
                continue 
            _803 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_803]:
                revert with 'NH{q', 50
            mem[_803 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_803 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_803 + 68] = address(t)
            mem[_803 + 100] = address(_527)
            mem[_803 + 132] = s
            mem[_803 + 164] = 0
            mem[_803 + 196] = 224
            mem[_803 + 292] = mem[_803]
            s = 0
            t = _803 + 32
            u = _803 + 324
            while s < mem[_803]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_803 + 228] = this.address
            mem[_803 + 260] = 5314151696
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _803 + (32 * mem[_803]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1114 = mem[_529 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1114))
            staticcall address(_1114).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1166] < _737:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _527
            s = mem[_1166] - _737
            t = _527
            continue 
        if idx == ('cd', 100).length - 1:
            _530 = mem[64]
            mem[64] = mem[64] + 192
            mem[_530] = address(t)
            mem[_530 + 32] = address(_523)
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_530 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_530 + 96] = s
            mem[_530 + 128] = cd[68]
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_530 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_523))
                staticcall address(_523).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _580 = mem[_572]
                if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
                    _613 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_613]:
                        revert with 'NH{q', 50
                    mem[_613 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_613 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_613 + 68] = address(t)
                    mem[_613 + 100] = address(_523)
                    mem[_613 + 132] = s
                    mem[_613 + 164] = cd[68]
                    mem[_613 + 196] = 224
                    mem[_613 + 292] = mem[_613]
                    s = 0
                    t = _613 + 32
                    u = _613 + 324
                    while s < mem[_613]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_613 + 228] = this.address
                    mem[_613 + 260] = 5314151696
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _613 + (32 * mem[_613]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1126 = mem[_530 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1126))
                    staticcall address(_1126).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1170] < _580:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _523
                    s = mem[_1170] - _580
                    t = _523
                    continue 
                if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                    _609 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_609]:
                        revert with 'NH{q', 50
                    mem[_609 + 32] = address(t)
                    if 1 >= mem[_609]:
                        revert with 'NH{q', 50
                    mem[_609 + 64] = address(_523)
                    mem[_609 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_609 + 100] = s
                    mem[_609 + 132] = cd[68]
                    mem[_609 + 164] = 160
                    mem[_609 + 260] = mem[_609]
                    s = 0
                    t = _609 + 32
                    u = _609 + 292
                    while s < mem[_609]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_609 + 196] = this.address
                    mem[_609 + 228] = 5314151696
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _609 + (32 * mem[_609]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1120 = mem[_530 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1120))
                    staticcall address(_1120).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1168] < _580:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _523
                    s = mem[_1168] - _580
                    t = _523
                    continue 
                _632 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_632]:
                    revert with 'NH{q', 50
                mem[_632 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_632 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_632 + 68] = address(t)
                mem[_632 + 100] = address(_523)
                mem[_632 + 132] = s
                mem[_632 + 164] = cd[68]
                mem[_632 + 196] = 224
                mem[_632 + 292] = mem[_632]
                s = 0
                t = _632 + 32
                u = _632 + 324
                while s < mem[_632]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_632 + 228] = this.address
                mem[_632 + 260] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _632 + (32 * mem[_632]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1123 = mem[_530 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1123))
                staticcall address(_1123).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1169] < _580:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _523
                s = mem[_1169] - _580
                t = _523
                continue 
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(t))
            call address(t).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[132] + 36)]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _573 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_573] == bool(mem[_573])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_523))
            staticcall address(_523).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _720 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _740 = mem[_720]
            if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
                _788 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_788]:
                    revert with 'NH{q', 50
                mem[_788 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_788 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_788 + 68] = address(t)
                mem[_788 + 100] = address(_523)
                mem[_788 + 132] = s
                mem[_788 + 164] = cd[68]
                mem[_788 + 196] = 224
                mem[_788 + 292] = mem[_788]
                s = 0
                t = _788 + 32
                u = _788 + 324
                while s < mem[_788]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_788 + 228] = this.address
                mem[_788 + 260] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _788 + (32 * mem[_788]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1135 = mem[_530 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1135))
                staticcall address(_1135).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1173 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1173] < _740:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _523
                s = mem[_1173] - _740
                t = _523
                continue 
            if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                _784 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_784]:
                    revert with 'NH{q', 50
                mem[_784 + 32] = address(t)
                if 1 >= mem[_784]:
                    revert with 'NH{q', 50
                mem[_784 + 64] = address(_523)
                mem[_784 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_784 + 100] = s
                mem[_784 + 132] = cd[68]
                mem[_784 + 164] = 160
                mem[_784 + 260] = mem[_784]
                s = 0
                t = _784 + 32
                u = _784 + 292
                while s < mem[_784]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_784 + 196] = this.address
                mem[_784 + 228] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _784 + (32 * mem[_784]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1129 = mem[_530 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1129))
                staticcall address(_1129).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1171] < _740:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _523
                s = mem[_1171] - _740
                t = _523
                continue 
            _807 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_807]:
                revert with 'NH{q', 50
            mem[_807 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_807 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_807 + 68] = address(t)
            mem[_807 + 100] = address(_523)
            mem[_807 + 132] = s
            mem[_807 + 164] = cd[68]
            mem[_807 + 196] = 224
            mem[_807 + 292] = mem[_807]
            s = 0
            t = _807 + 32
            u = _807 + 324
            while s < mem[_807]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_807 + 228] = this.address
            mem[_807 + 260] = 5314151696
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _807 + (32 * mem[_807]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1132 = mem[_530 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1132))
            staticcall address(_1132).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1172 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1172] < _740:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _523
            s = mem[_1172] - _740
            t = _523
            continue 
        _531 = mem[64]
        mem[64] = mem[64] + 192
        mem[_531] = address(t)
        mem[_531 + 32] = address(_523)
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        mem[_531 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
        mem[_531 + 96] = s
        mem[_531 + 128] = 0
        if idx >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        mem[_531 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
        mem[0] = address(t)
        mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
        if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_523))
            staticcall address(_523).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _574 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _582 = mem[_574]
            if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
                _619 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_619]:
                    revert with 'NH{q', 50
                mem[_619 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_619 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_619 + 68] = address(t)
                mem[_619 + 100] = address(_523)
                mem[_619 + 132] = s
                mem[_619 + 164] = 0
                mem[_619 + 196] = 224
                mem[_619 + 292] = mem[_619]
                s = 0
                t = _619 + 32
                u = _619 + 324
                while s < mem[_619]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_619 + 228] = this.address
                mem[_619 + 260] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _619 + (32 * mem[_619]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1144 = mem[_531 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1144))
                staticcall address(_1144).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1176] < _582:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _523
                s = mem[_1176] - _582
                t = _523
                continue 
            if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                _615 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_615]:
                    revert with 'NH{q', 50
                mem[_615 + 32] = address(t)
                if 1 >= mem[_615]:
                    revert with 'NH{q', 50
                mem[_615 + 64] = address(_523)
                mem[_615 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_615 + 100] = s
                mem[_615 + 132] = 0
                mem[_615 + 164] = 160
                mem[_615 + 260] = mem[_615]
                s = 0
                t = _615 + 32
                u = _615 + 292
                while s < mem[_615]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_615 + 196] = this.address
                mem[_615 + 228] = 5314151696
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _615 + (32 * mem[_615]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1138 = mem[_531 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1138))
                staticcall address(_1138).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1174] < _582:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _523
                s = mem[_1174] - _582
                t = _523
                continue 
            _637 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_637]:
                revert with 'NH{q', 50
            mem[_637 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_637 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_637 + 68] = address(t)
            mem[_637 + 100] = address(_523)
            mem[_637 + 132] = s
            mem[_637 + 164] = 0
            mem[_637 + 196] = 224
            mem[_637 + 292] = mem[_637]
            s = 0
            t = _637 + 32
            u = _637 + 324
            while s < mem[_637]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_637 + 228] = this.address
            mem[_637 + 260] = 5314151696
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _637 + (32 * mem[_637]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1141 = mem[_531 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1141))
            staticcall address(_1141).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1175] < _582:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _523
            s = mem[_1175] - _582
            t = _523
            continue 
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[132] + 36)])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(t))
        call address(t).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[132] + 36)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _575 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_575] == bool(mem[_575])
        mem[0] = address(t)
        mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
        stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_523))
        staticcall address(_523).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _727 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _743 = mem[_727]
        if 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac == address(cd[((32 * idx) + cd[132] + 36)]):
            _795 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_795]:
                revert with 'NH{q', 50
            mem[_795 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_795 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_795 + 68] = address(t)
            mem[_795 + 100] = address(_523)
            mem[_795 + 132] = s
            mem[_795 + 164] = 0
            mem[_795 + 196] = 224
            mem[_795 + 292] = mem[_795]
            s = 0
            t = _795 + 32
            u = _795 + 324
            while s < mem[_795]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_795 + 228] = this.address
            mem[_795 + 260] = 5314151696
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _795 + (32 * mem[_795]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1153 = mem[_531 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1153))
            staticcall address(_1153).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1179] < _743:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _523
            s = mem[_1179] - _743
            t = _523
            continue 
        if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
            _791 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_791]:
                revert with 'NH{q', 50
            mem[_791 + 32] = address(t)
            if 1 >= mem[_791]:
                revert with 'NH{q', 50
            mem[_791 + 64] = address(_523)
            mem[_791 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_791 + 100] = s
            mem[_791 + 132] = 0
            mem[_791 + 164] = 160
            mem[_791 + 260] = mem[_791]
            s = 0
            t = _791 + 32
            u = _791 + 292
            while s < mem[_791]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_791 + 196] = this.address
            mem[_791 + 228] = 5314151696
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _791 + (32 * mem[_791]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1147 = mem[_531 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1147))
            staticcall address(_1147).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1177] < _743:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _523
            s = mem[_1177] - _743
            t = _523
            continue 
        _811 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_811]:
            revert with 'NH{q', 50
        mem[_811 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
        mem[_811 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
        mem[_811 + 68] = address(t)
        mem[_811 + 100] = address(_523)
        mem[_811 + 132] = s
        mem[_811 + 164] = 0
        mem[_811 + 196] = 224
        mem[_811 + 292] = mem[_811]
        s = 0
        t = _811 + 32
        u = _811 + 324
        while s < mem[_811]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_811 + 228] = this.address
        mem[_811 + 260] = 5314151696
        require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
        call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _811 + (32 * mem[_811]) + -mem[64] + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1150 = mem[_531 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1150))
        staticcall address(_1150).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_1178] < _743:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _523
        s = mem[_1178] - _743
        t = _523
        continue 
}



}
