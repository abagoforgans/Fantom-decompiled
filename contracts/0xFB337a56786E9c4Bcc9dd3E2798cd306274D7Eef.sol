contract main {




// =====================  Runtime code  =====================


address deployerAddress;

function deployer() {
    return deployerAddress
}

function _fallback() payable {
    revert
}

function sub_4cd68e33(?) {
    if deployerAddress != msg.sender:
        revert with 0, 'ERR_NOT_DEPLOYER'
    call deployerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xdba7ad30: eth.balance(this.address)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if deployerAddress != msg.sender:
        revert with 0, 'ERR_NOT_DEPLOYER'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args deployerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf009bf06: ext_call.return_data[0], arg1
}

function sub_fe7abe96(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    if deployerAddress != msg.sender:
        revert with 0, 'ERR_NOT_DEPLOYER'
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        _23 = mem[(32 * idx) + 128]
        if arg2 <= 0:
            if arg3 > 0:
                if not ext_code.size(mem[(32 * idx) + 128]):
                    call mem[(32 * idx) + 140 len 20] with:
                       value arg3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg4.length) + 128] = arg3
                    emit 0x9b7523c7: arg3, address(_23)
        else:
            mem[(32 * arg4.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg4.length) + 164] = arg2
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + 132], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg4.length) + 128] = arg2
            emit 0xb6775f93: arg2, arg1, address(_23)
            if arg3 > 0:
                if not ext_code.size(_23):
                    call address(_23) with:
                       value arg3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * arg4.length) + 128] = arg3
                    emit 0x9b7523c7: arg3, address(_23)
        idx = idx + 1
        continue 
}



}
