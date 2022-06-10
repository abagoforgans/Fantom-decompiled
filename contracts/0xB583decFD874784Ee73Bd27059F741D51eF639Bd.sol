contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f821b8f(?)
#  - sub_d810ab59(?)
#
address owner;
mapping of uint8 stor1;
mapping of uint256 sub_8d8be814;
mapping of uint8 stor3;

function allowedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_8d8be814(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8d8be814[arg1]
}

function owner() payable {
    return owner
}

function sub_f544310e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor3[arg1][arg2])
}

function _fallback() payable {
    revert
}

function giveAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = 1
}

function sub_8198ff53(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_8d8be814[address(arg1)] = arg2
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
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

function sub_1a741fb3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
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

function sub_2062acd9(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if arg2:
        return arg4, arg5
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3:
        if ext_call.return_data[0] < arg4:
            revert with 'NH{q', 17
        require ext_call.return_data[0] - arg4 >= sub_8d8be814[address(arg1)]
    if sub_8d8be814[address(arg1)] > -arg4 - 1:
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

function sub_d4bfd221(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == bool(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if not stor1[address(msg.sender)]:
        revert with 0, 'Address has no access'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if stor3[address(cd[132])][address(('cd', 100)[0])]:
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
        require ext_call.return_data[0] == ext_call.return_data[0]
        if address(('cd', 100)[0]) != address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
            mem[ceil32(return_data.size) + 196] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
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
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                        require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                        mem[(4 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                        mem[(4 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                        require ext_call.return_data[0] == ext_call.return_data[0]
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
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not cd[4]:
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                        mem[(2 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                        mem[(2 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if mem[ceil32(return_data.size) + 224] >= 0 and ext_call.return_data[0] < mem[ceil32(return_data.size) + 224] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if mem[ceil32(return_data.size) + 224] < 0 and ext_call.return_data[0] > mem[ceil32(return_data.size) + 224] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if address(('cd', 100)[0]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
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
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if mem[ceil32(return_data.size) + 256] >= 0 and ext_call.return_data[0] < mem[ceil32(return_data.size) + 256] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if mem[ceil32(return_data.size) + 256] < 0 and ext_call.return_data[0] > mem[ceil32(return_data.size) + 256] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 256]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                        mem[(4 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                        mem[(4 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if mem[ceil32(return_data.size) + 256] >= 0 and ext_call.return_data[0] < mem[ceil32(return_data.size) + 256] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if mem[ceil32(return_data.size) + 256] < 0 and ext_call.return_data[0] > mem[ceil32(return_data.size) + 256] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                        emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 224], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0] - mem[ceil32(return_data.size) + 256]
    else:
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
        require ext_call.return_data[0] == ext_call.return_data[0]
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
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                        require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                        mem[(4 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                        mem[(4 * ceil32(return_data.size)) + 420] = 5230424911
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                        require ext_call.return_data[0] == ext_call.return_data[0]
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
            require ext_call.return_data[0] == ext_call.return_data[0]
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
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
            else:
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not cd[4]:
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_8d8be814[address(('cd', 100)[0])] > -cd[36] - 1:
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
                            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(7 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
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
                            args ext_call.return_data[0] - sub_8d8be814[address(('cd', 100)[0])], (ext_call.return_data[0] * cd[68]) - (sub_8d8be814[address(('cd', 100)[0])] * cd[68]) / cd[36], Array(len=('cd', 100).length, data=mem[(7 * ceil32(return_data.size)) + 484 len 32 * ('cd', 100).length]), address(this.address), 5230424911
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(('cd', 100)[0]))
            staticcall address(('cd', 100)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
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
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= 0 and ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                emit 0xa2bb6d3f: msg.sender, address(('cd', 100)[0]), ext_call.return_data[0], address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), ext_call.return_data[0]
                emit 0x3552c9c4: msg.sender, address(('cd', 100)[0]), 0, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), 0
}

function sub_2aa6ab82(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
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
    if not stor1[address(msg.sender)]:
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
        _582 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _583 = mem[_582]
        require mem[_582] == mem[_582 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
        staticcall address(cd[((32 * idx) + cd[100] + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _586 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _587 = mem[_586]
        require mem[_586] == mem[_586 + 12 len 20]
        if ('cd', 100).length < 1:
            revert with 'NH{q', 17
        if address(t) == address(_583):
            if idx == ('cd', 100).length - 1:
                _588 = mem[64]
                mem[64] = mem[64] + 192
                mem[_588] = address(t)
                mem[_588 + 32] = address(_587)
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                mem[_588 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_588 + 96] = s
                mem[_588 + 128] = cd[68]
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                mem[_588 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[0] = address(t)
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
                if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_587))
                    staticcall address(_587).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _624 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _632 = mem[_624]
                    require mem[_624] == mem[_624]
                    if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
                        _658 = mem[64]
                        mem[mem[64]] = 1
                        mem[64] = mem[64] + 64
                        if 0 >= mem[_658]:
                            revert with 'NH{q', 50
                        mem[_658 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                        mem[_658 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                        mem[_658 + 68] = address(t)
                        mem[_658 + 100] = address(_587)
                        mem[_658 + 132] = s
                        mem[_658 + 164] = cd[68]
                        mem[_658 + 196] = 224
                        mem[_658 + 292] = mem[_658]
                        s = 0
                        t = _658 + 32
                        u = _658 + 324
                        while s < mem[_658]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_658 + 228] = this.address
                        mem[_658 + 260] = 5230424911
                        require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                        call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _658 + (32 * mem[_658]) + -mem[64] + 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1144 = mem[_588 + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1144))
                        staticcall address(_1144).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1216 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1216] == mem[_1216]
                        if mem[_1216] < _632:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _587
                        s = mem[_1216] - _632
                        t = _587
                        continue 
                    if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                        _668 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_668]:
                            revert with 'NH{q', 50
                        mem[_668 + 32] = address(t)
                        if 1 >= mem[_668]:
                            revert with 'NH{q', 50
                        mem[_668 + 64] = address(_587)
                        mem[_668 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_668 + 100] = s
                        mem[_668 + 132] = cd[68]
                        mem[_668 + 164] = 160
                        mem[_668 + 260] = mem[_668]
                        s = 0
                        t = _668 + 32
                        u = _668 + 292
                        while s < mem[_668]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_668 + 196] = this.address
                        mem[_668 + 228] = 5230424911
                        require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                        call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _668 + (32 * mem[_668]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1160 = mem[_588 + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1160))
                        staticcall address(_1160).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1224 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1224] == mem[_1224]
                        if mem[_1224] < _632:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _587
                        s = mem[_1224] - _632
                        t = _587
                        continue 
                    _669 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_669]:
                        revert with 'NH{q', 50
                    mem[_669 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_669 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_669 + 68] = address(t)
                    mem[_669 + 100] = address(_587)
                    mem[_669 + 132] = s
                    mem[_669 + 164] = cd[68]
                    mem[_669 + 196] = 224
                    mem[_669 + 292] = mem[_669]
                    s = 0
                    t = _669 + 32
                    u = _669 + 324
                    while s < mem[_669]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_669 + 228] = this.address
                    mem[_669 + 260] = 5230424911
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _669 + (32 * mem[_669]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1162 = mem[_588 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1162))
                    staticcall address(_1162).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1225] == mem[_1225]
                    if mem[_1225] < _632:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _587
                    s = mem[_1225] - _632
                    t = _587
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
                _636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_636] == bool(mem[_636])
                mem[0] = address(t)
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
                stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_587))
                staticcall address(_587).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _780 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _785 = mem[_780]
                require mem[_780] == mem[_780]
                if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
                    _810 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_810]:
                        revert with 'NH{q', 50
                    mem[_810 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_810 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_810 + 68] = address(t)
                    mem[_810 + 100] = address(_587)
                    mem[_810 + 132] = s
                    mem[_810 + 164] = cd[68]
                    mem[_810 + 196] = 224
                    mem[_810 + 292] = mem[_810]
                    s = 0
                    t = _810 + 32
                    u = _810 + 324
                    while s < mem[_810]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_810 + 228] = this.address
                    mem[_810 + 260] = 5230424911
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _810 + (32 * mem[_810]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1146 = mem[_588 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1146))
                    staticcall address(_1146).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1217 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1217] == mem[_1217]
                    if mem[_1217] < _785:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _587
                    s = mem[_1217] - _785
                    t = _587
                    continue 
                if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                    _821 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_821]:
                        revert with 'NH{q', 50
                    mem[_821 + 32] = address(t)
                    if 1 >= mem[_821]:
                        revert with 'NH{q', 50
                    mem[_821 + 64] = address(_587)
                    mem[_821 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_821 + 100] = s
                    mem[_821 + 132] = cd[68]
                    mem[_821 + 164] = 160
                    mem[_821 + 260] = mem[_821]
                    s = 0
                    t = _821 + 32
                    u = _821 + 292
                    while s < mem[_821]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_821 + 196] = this.address
                    mem[_821 + 228] = 5230424911
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _821 + (32 * mem[_821]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1164 = mem[_588 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1164))
                    staticcall address(_1164).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1226] == mem[_1226]
                    if mem[_1226] < _785:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _587
                    s = mem[_1226] - _785
                    t = _587
                    continue 
                _822 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_822]:
                    revert with 'NH{q', 50
                mem[_822 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_822 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_822 + 68] = address(t)
                mem[_822 + 100] = address(_587)
                mem[_822 + 132] = s
                mem[_822 + 164] = cd[68]
                mem[_822 + 196] = 224
                mem[_822 + 292] = mem[_822]
                s = 0
                t = _822 + 32
                u = _822 + 324
                while s < mem[_822]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_822 + 228] = this.address
                mem[_822 + 260] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _822 + (32 * mem[_822]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1166 = mem[_588 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1166))
                staticcall address(_1166).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1227 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1227] == mem[_1227]
                if mem[_1227] < _785:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _587
                s = mem[_1227] - _785
                t = _587
                continue 
            _589 = mem[64]
            mem[64] = mem[64] + 192
            mem[_589] = address(t)
            mem[_589 + 32] = address(_587)
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_589 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_589 + 96] = s
            mem[_589 + 128] = 0
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_589 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_587))
                staticcall address(_587).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _625 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _633 = mem[_625]
                require mem[_625] == mem[_625]
                if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
                    _661 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_661]:
                        revert with 'NH{q', 50
                    mem[_661 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_661 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_661 + 68] = address(t)
                    mem[_661 + 100] = address(_587)
                    mem[_661 + 132] = s
                    mem[_661 + 164] = 0
                    mem[_661 + 196] = 224
                    mem[_661 + 292] = mem[_661]
                    s = 0
                    t = _661 + 32
                    u = _661 + 324
                    while s < mem[_661]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_661 + 228] = this.address
                    mem[_661 + 260] = 5230424911
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _661 + (32 * mem[_661]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1148 = mem[_589 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1148))
                    staticcall address(_1148).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1218 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1218] == mem[_1218]
                    if mem[_1218] < _633:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _587
                    s = mem[_1218] - _633
                    t = _587
                    continue 
                if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                    _670 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_670]:
                        revert with 'NH{q', 50
                    mem[_670 + 32] = address(t)
                    if 1 >= mem[_670]:
                        revert with 'NH{q', 50
                    mem[_670 + 64] = address(_587)
                    mem[_670 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_670 + 100] = s
                    mem[_670 + 132] = 0
                    mem[_670 + 164] = 160
                    mem[_670 + 260] = mem[_670]
                    s = 0
                    t = _670 + 32
                    u = _670 + 292
                    while s < mem[_670]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_670 + 196] = this.address
                    mem[_670 + 228] = 5230424911
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _670 + (32 * mem[_670]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1168 = mem[_589 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1168))
                    staticcall address(_1168).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1228] == mem[_1228]
                    if mem[_1228] < _633:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _587
                    s = mem[_1228] - _633
                    t = _587
                    continue 
                _671 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_671]:
                    revert with 'NH{q', 50
                mem[_671 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_671 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_671 + 68] = address(t)
                mem[_671 + 100] = address(_587)
                mem[_671 + 132] = s
                mem[_671 + 164] = 0
                mem[_671 + 196] = 224
                mem[_671 + 292] = mem[_671]
                s = 0
                t = _671 + 32
                u = _671 + 324
                while s < mem[_671]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_671 + 228] = this.address
                mem[_671 + 260] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _671 + (32 * mem[_671]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1170 = mem[_589 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1170))
                staticcall address(_1170).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1229 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1229] == mem[_1229]
                if mem[_1229] < _633:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _587
                s = mem[_1229] - _633
                t = _587
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
            _637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_637] == bool(mem[_637])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_587))
            staticcall address(_587).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _781 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _787 = mem[_781]
            require mem[_781] == mem[_781]
            if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
                _813 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_813]:
                    revert with 'NH{q', 50
                mem[_813 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_813 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_813 + 68] = address(t)
                mem[_813 + 100] = address(_587)
                mem[_813 + 132] = s
                mem[_813 + 164] = 0
                mem[_813 + 196] = 224
                mem[_813 + 292] = mem[_813]
                s = 0
                t = _813 + 32
                u = _813 + 324
                while s < mem[_813]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_813 + 228] = this.address
                mem[_813 + 260] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _813 + (32 * mem[_813]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1150 = mem[_589 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1150))
                staticcall address(_1150).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1219] == mem[_1219]
                if mem[_1219] < _787:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _587
                s = mem[_1219] - _787
                t = _587
                continue 
            if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                _824 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_824]:
                    revert with 'NH{q', 50
                mem[_824 + 32] = address(t)
                if 1 >= mem[_824]:
                    revert with 'NH{q', 50
                mem[_824 + 64] = address(_587)
                mem[_824 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_824 + 100] = s
                mem[_824 + 132] = 0
                mem[_824 + 164] = 160
                mem[_824 + 260] = mem[_824]
                s = 0
                t = _824 + 32
                u = _824 + 292
                while s < mem[_824]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_824 + 196] = this.address
                mem[_824 + 228] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _824 + (32 * mem[_824]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1172 = mem[_589 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1172))
                staticcall address(_1172).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1230] == mem[_1230]
                if mem[_1230] < _787:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _587
                s = mem[_1230] - _787
                t = _587
                continue 
            _825 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_825]:
                revert with 'NH{q', 50
            mem[_825 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_825 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_825 + 68] = address(t)
            mem[_825 + 100] = address(_587)
            mem[_825 + 132] = s
            mem[_825 + 164] = 0
            mem[_825 + 196] = 224
            mem[_825 + 292] = mem[_825]
            s = 0
            t = _825 + 32
            u = _825 + 324
            while s < mem[_825]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_825 + 228] = this.address
            mem[_825 + 260] = 5230424911
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _825 + (32 * mem[_825]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1174 = mem[_589 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1174))
            staticcall address(_1174).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1231] == mem[_1231]
            if mem[_1231] < _787:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _587
            s = mem[_1231] - _787
            t = _587
            continue 
        if idx == ('cd', 100).length - 1:
            _590 = mem[64]
            mem[64] = mem[64] + 192
            mem[_590] = address(t)
            mem[_590 + 32] = address(_583)
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            mem[_590 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_590 + 96] = s
            mem[_590 + 128] = cd[68]
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[_590 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_583))
                staticcall address(_583).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _634 = mem[_626]
                require mem[_626] == mem[_626]
                if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
                    _664 = mem[64]
                    mem[mem[64]] = 1
                    mem[64] = mem[64] + 64
                    if 0 >= mem[_664]:
                        revert with 'NH{q', 50
                    mem[_664 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                    mem[_664 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                    mem[_664 + 68] = address(t)
                    mem[_664 + 100] = address(_583)
                    mem[_664 + 132] = s
                    mem[_664 + 164] = cd[68]
                    mem[_664 + 196] = 224
                    mem[_664 + 292] = mem[_664]
                    s = 0
                    t = _664 + 32
                    u = _664 + 324
                    while s < mem[_664]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_664 + 228] = this.address
                    mem[_664 + 260] = 5230424911
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _664 + (32 * mem[_664]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1152 = mem[_590 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1152))
                    staticcall address(_1152).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1220] == mem[_1220]
                    if mem[_1220] < _634:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _583
                    s = mem[_1220] - _634
                    t = _583
                    continue 
                if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                    _672 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_672]:
                        revert with 'NH{q', 50
                    mem[_672 + 32] = address(t)
                    if 1 >= mem[_672]:
                        revert with 'NH{q', 50
                    mem[_672 + 64] = address(_583)
                    mem[_672 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_672 + 100] = s
                    mem[_672 + 132] = cd[68]
                    mem[_672 + 164] = 160
                    mem[_672 + 260] = mem[_672]
                    s = 0
                    t = _672 + 32
                    u = _672 + 292
                    while s < mem[_672]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_672 + 196] = this.address
                    mem[_672 + 228] = 5230424911
                    require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                    call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _672 + (32 * mem[_672]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1176 = mem[_590 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1176))
                    staticcall address(_1176).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1232] == mem[_1232]
                    if mem[_1232] < _634:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _583
                    s = mem[_1232] - _634
                    t = _583
                    continue 
                _673 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_673]:
                    revert with 'NH{q', 50
                mem[_673 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_673 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_673 + 68] = address(t)
                mem[_673 + 100] = address(_583)
                mem[_673 + 132] = s
                mem[_673 + 164] = cd[68]
                mem[_673 + 196] = 224
                mem[_673 + 292] = mem[_673]
                s = 0
                t = _673 + 32
                u = _673 + 324
                while s < mem[_673]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_673 + 228] = this.address
                mem[_673 + 260] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _673 + (32 * mem[_673]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1178 = mem[_590 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1178))
                staticcall address(_1178).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1233] == mem[_1233]
                if mem[_1233] < _634:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _583
                s = mem[_1233] - _634
                t = _583
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
            _638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_638] == bool(mem[_638])
            mem[0] = address(t)
            mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
            stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_583))
            staticcall address(_583).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _782 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _789 = mem[_782]
            require mem[_782] == mem[_782]
            if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
                _816 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_816]:
                    revert with 'NH{q', 50
                mem[_816 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_816 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_816 + 68] = address(t)
                mem[_816 + 100] = address(_583)
                mem[_816 + 132] = s
                mem[_816 + 164] = cd[68]
                mem[_816 + 196] = 224
                mem[_816 + 292] = mem[_816]
                s = 0
                t = _816 + 32
                u = _816 + 324
                while s < mem[_816]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_816 + 228] = this.address
                mem[_816 + 260] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _816 + (32 * mem[_816]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1154 = mem[_590 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1154))
                staticcall address(_1154).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1221 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1221] == mem[_1221]
                if mem[_1221] < _789:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _583
                s = mem[_1221] - _789
                t = _583
                continue 
            if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                _827 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_827]:
                    revert with 'NH{q', 50
                mem[_827 + 32] = address(t)
                if 1 >= mem[_827]:
                    revert with 'NH{q', 50
                mem[_827 + 64] = address(_583)
                mem[_827 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_827 + 100] = s
                mem[_827 + 132] = cd[68]
                mem[_827 + 164] = 160
                mem[_827 + 260] = mem[_827]
                s = 0
                t = _827 + 32
                u = _827 + 292
                while s < mem[_827]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_827 + 196] = this.address
                mem[_827 + 228] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _827 + (32 * mem[_827]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1180 = mem[_590 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1180))
                staticcall address(_1180).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1234] == mem[_1234]
                if mem[_1234] < _789:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _583
                s = mem[_1234] - _789
                t = _583
                continue 
            _828 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_828]:
                revert with 'NH{q', 50
            mem[_828 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_828 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_828 + 68] = address(t)
            mem[_828 + 100] = address(_583)
            mem[_828 + 132] = s
            mem[_828 + 164] = cd[68]
            mem[_828 + 196] = 224
            mem[_828 + 292] = mem[_828]
            s = 0
            t = _828 + 32
            u = _828 + 324
            while s < mem[_828]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_828 + 228] = this.address
            mem[_828 + 260] = 5230424911
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _828 + (32 * mem[_828]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1182 = mem[_590 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1182))
            staticcall address(_1182).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1235] == mem[_1235]
            if mem[_1235] < _789:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _583
            s = mem[_1235] - _789
            t = _583
            continue 
        _591 = mem[64]
        mem[64] = mem[64] + 192
        mem[_591] = address(t)
        mem[_591 + 32] = address(_583)
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        mem[_591 + 64] = address(cd[((32 * idx) + cd[100] + 36)])
        mem[_591 + 96] = s
        mem[_591 + 128] = 0
        if idx >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        mem[_591 + 160] = address(cd[((32 * idx) + cd[132] + 36)])
        mem[0] = address(t)
        mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
        if stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_583))
            staticcall address(_583).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _635 = mem[_627]
            require mem[_627] == mem[_627]
            if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
                _667 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_667]:
                    revert with 'NH{q', 50
                mem[_667 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[_667 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
                mem[_667 + 68] = address(t)
                mem[_667 + 100] = address(_583)
                mem[_667 + 132] = s
                mem[_667 + 164] = 0
                mem[_667 + 196] = 224
                mem[_667 + 292] = mem[_667]
                s = 0
                t = _667 + 32
                u = _667 + 324
                while s < mem[_667]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_667 + 228] = this.address
                mem[_667 + 260] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _667 + (32 * mem[_667]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1156 = mem[_591 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1156))
                staticcall address(_1156).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1222] == mem[_1222]
                if mem[_1222] < _635:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _583
                s = mem[_1222] - _635
                t = _583
                continue 
            if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
                _674 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_674]:
                    revert with 'NH{q', 50
                mem[_674 + 32] = address(t)
                if 1 >= mem[_674]:
                    revert with 'NH{q', 50
                mem[_674 + 64] = address(_583)
                mem[_674 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[_674 + 100] = s
                mem[_674 + 132] = 0
                mem[_674 + 164] = 160
                mem[_674 + 260] = mem[_674]
                s = 0
                t = _674 + 32
                u = _674 + 292
                while s < mem[_674]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_674 + 196] = this.address
                mem[_674 + 228] = 5230424911
                require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
                call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _674 + (32 * mem[_674]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1184 = mem[_591 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1184))
                staticcall address(_1184).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1236] == mem[_1236]
                if mem[_1236] < _635:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _583
                s = mem[_1236] - _635
                t = _583
                continue 
            _675 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_675]:
                revert with 'NH{q', 50
            mem[_675 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_675 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_675 + 68] = address(t)
            mem[_675 + 100] = address(_583)
            mem[_675 + 132] = s
            mem[_675 + 164] = 0
            mem[_675 + 196] = 224
            mem[_675 + 292] = mem[_675]
            s = 0
            t = _675 + 32
            u = _675 + 324
            while s < mem[_675]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_675 + 228] = this.address
            mem[_675 + 260] = 5230424911
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _675 + (32 * mem[_675]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1186 = mem[_591 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1186))
            staticcall address(_1186).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1237] == mem[_1237]
            if mem[_1237] < _635:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _583
            s = mem[_1237] - _635
            t = _583
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
        _639 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_639] == bool(mem[_639])
        mem[0] = address(t)
        mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 3)
        stor3[address(cd[((32 * idx) + cd[132] + 36)])][address(t)] = 1
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_583))
        staticcall address(_583).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _783 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _791 = mem[_783]
        require mem[_783] == mem[_783]
        if address(cd[((32 * idx) + cd[132] + 36)]) == 0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac:
            _819 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_819]:
                revert with 'NH{q', 50
            mem[_819 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[_819 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
            mem[_819 + 68] = address(t)
            mem[_819 + 100] = address(_583)
            mem[_819 + 132] = s
            mem[_819 + 164] = 0
            mem[_819 + 196] = 224
            mem[_819 + 292] = mem[_819]
            s = 0
            t = _819 + 32
            u = _819 + 324
            while s < mem[_819]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_819 + 228] = this.address
            mem[_819 + 260] = 5230424911
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _819 + (32 * mem[_819]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1158 = mem[_591 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1158))
            staticcall address(_1158).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1223] == mem[_1223]
            if mem[_1223] < _791:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _583
            s = mem[_1223] - _791
            t = _583
            continue 
        if address(cd[((32 * idx) + cd[132] + 36)]) != 0xc60ae14f2568b102f8ca6266e8799112846dd088:
            _830 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_830]:
                revert with 'NH{q', 50
            mem[_830 + 32] = address(t)
            if 1 >= mem[_830]:
                revert with 'NH{q', 50
            mem[_830 + 64] = address(_583)
            mem[_830 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_830 + 100] = s
            mem[_830 + 132] = 0
            mem[_830 + 164] = 160
            mem[_830 + 260] = mem[_830]
            s = 0
            t = _830 + 32
            u = _830 + 292
            while s < mem[_830]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_830 + 196] = this.address
            mem[_830 + 228] = 5230424911
            require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
            call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _830 + (32 * mem[_830]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1188 = mem[_591 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1188))
            staticcall address(_1188).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1238] == mem[_1238]
            if mem[_1238] < _791:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _583
            s = mem[_1238] - _791
            t = _583
            continue 
        _831 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_831]:
            revert with 'NH{q', 50
        mem[_831 + 32] = address(cd[((32 * idx) + cd[100] + 36)])
        mem[_831 + 64] = 0xa67d0e3c00000000000000000000000000000000000000000000000000000000
        mem[_831 + 68] = address(t)
        mem[_831 + 100] = address(_583)
        mem[_831 + 132] = s
        mem[_831 + 164] = 0
        mem[_831 + 196] = 224
        mem[_831 + 292] = mem[_831]
        s = 0
        t = _831 + 32
        u = _831 + 324
        while s < mem[_831]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_831 + 228] = this.address
        mem[_831 + 260] = 5230424911
        require ext_code.size(address(cd[((32 * idx) + cd[132] + 36)]))
        call address(cd[((32 * idx) + cd[132] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _831 + (32 * mem[_831]) + -mem[64] + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1190 = mem[_591 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1190))
        staticcall address(_1190).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1239] == mem[_1239]
        if mem[_1239] < _791:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _583
        s = mem[_1239] - _791
        t = _583
        continue 
}



}
