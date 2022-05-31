contract main {




// =====================  Runtime code  =====================


uint32 stor0;
uint32 stor0; offset 32

function _fallback() payable {
    revert
}

function tokenBalance(address arg1, address arg2) {
    if ext_code.size(arg2) <= 0:
        return 0
    call arg2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        return 0
    require ext_code.size(arg2)
    call arg2.balanceOf(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tokenAllowance(address arg1, address arg2, address arg3) {
    if ext_code.size(arg2) <= 0:
        return 0
    call arg2 with:
       funct uint32(stor0.field_32)
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        return 0
    require ext_code.size(arg2)
    call arg2.allowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balances(address[] arg1, address[] arg2) {
    if arg2.length * arg1.length:
        mem[128 len 32 * arg2.length * arg1.length] = code.data[2746 len 32 * arg2.length * arg1.length]
    idx = 0
    while idx < arg1.length:
        t = 0
        s = 0
        while s < arg2.length:
            require idx < arg1.length
            if not address(cd[((32 * s) + arg2 + 36)]):
                require s + (arg2.length * idx) < arg2.length * arg1.length
                mem[(32 * s + (arg2.length * idx)) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
            else:
                require s < arg2.length
                if ext_code.size(address(cd[((32 * s) + arg2 + 36)])) <= 0:
                    require s + (arg2.length * idx) < arg2.length * arg1.length
                    mem[(32 * s + (arg2.length * idx)) + 128] = 0
                else:
                    mem[(32 * arg2.length * arg1.length) + 128] = Mask(32, 224, uint32(stor0.field_0))
                    mem[(32 * arg2.length * arg1.length) + 132] = address(cd[((32 * idx) + arg1 + 36)])
                    call address(cd[((32 * s) + arg2 + 36)]) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg1 + 36)])
                    if not ext_call.success:
                        require s + (arg2.length * idx) < arg2.length * arg1.length
                        mem[(32 * s + (arg2.length * idx)) + 128] = 0
                    else:
                        mem[(32 * arg2.length * arg1.length) + 132] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                        call address(cd[((32 * s) + arg2 + 36)]).balanceOf(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + arg1 + 36)])
                        mem[(32 * arg2.length * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require s + (arg2.length * idx) < arg2.length * arg1.length
                        mem[(32 * s + (arg2.length * idx)) + 128] = ext_call.return_data[0]
            t = s + (arg2.length * idx)
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * arg2.length * arg1.length) + 128] = 32
    mem[(32 * arg2.length * arg1.length) + 160] = arg2.length * arg1.length
    mem[(32 * arg2.length * arg1.length) + 192 len floor32(arg2.length * arg1.length)] = mem[128 len floor32(arg2.length * arg1.length)]
    return Array(len=arg2.length * arg1.length, data=mem[(32 * arg2.length * arg1.length) + 192 len 32 * arg2.length * arg1.length]), 
}

function allowances(address[] arg1, address[] arg2, address[] arg3) {
    if arg2.length * arg1.length:
        mem[128 len 32 * arg2.length * arg1.length] = code.data[2746 len 32 * arg2.length * arg1.length]
    idx = 0
    while idx < arg1.length:
        t = 0
        s = 0
        while s < arg2.length:
            if not address(cd[((32 * s) + arg2 + 36)]):
                require s + (arg2.length * idx) < arg2.length * arg1.length
                mem[(32 * s + (arg2.length * idx)) + 128] = 0
            else:
                require idx < arg1.length
                require s < arg2.length
                require s < arg3.length
                if ext_code.size(address(cd[((32 * s) + arg2 + 36)])) <= 0:
                    require s + (arg2.length * idx) < arg2.length * arg1.length
                    mem[(32 * s + (arg2.length * idx)) + 128] = 0
                else:
                    mem[(32 * arg2.length * arg1.length) + 128] = uint32(stor0.field_32) << 224
                    mem[(32 * arg2.length * arg1.length) + 132] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[(32 * arg2.length * arg1.length) + 164] = address(cd[((32 * s) + arg3 + 36)])
                    call address(cd[((32 * s) + arg2 + 36)]) with:
                       funct uint32(stor0.field_32)
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * s) + arg3 + 36)])
                    if not ext_call.success:
                        require s + (arg2.length * idx) < arg2.length * arg1.length
                        mem[(32 * s + (arg2.length * idx)) + 128] = 0
                    else:
                        mem[(32 * arg2.length * arg1.length) + 132] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[(32 * arg2.length * arg1.length) + 164] = address(cd[((32 * s) + arg3 + 36)])
                        require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                        call address(cd[((32 * s) + arg2 + 36)]).allowance(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * s) + arg3 + 36)])
                        mem[(32 * arg2.length * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require s + (arg2.length * idx) < arg2.length * arg1.length
                        mem[(32 * s + (arg2.length * idx)) + 128] = ext_call.return_data[0]
            t = s + (arg2.length * idx)
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * arg2.length * arg1.length) + 128] = 32
    mem[(32 * arg2.length * arg1.length) + 160] = arg2.length * arg1.length
    mem[(32 * arg2.length * arg1.length) + 192 len floor32(arg2.length * arg1.length)] = mem[128 len floor32(arg2.length * arg1.length)]
    return Array(len=arg2.length * arg1.length, data=mem[(32 * arg2.length * arg1.length) + 192 len 32 * arg2.length * arg1.length]), 
}



}
