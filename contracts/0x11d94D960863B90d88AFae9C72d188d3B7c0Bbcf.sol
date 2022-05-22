contract main {




// =====================  Runtime code  =====================


#
#  - sub_3aa99232(?)
#  - sub_c58fb18a(?)
#
address stor0;

function kill() {
    if stor0 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_2999dd15(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(arg2)
    staticcall arg2.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(32 * arg3.length) + 128] = 0
    mem[(32 * arg3.length) + 288] = 0
    mem[(32 * arg3.length) + 384] = 0
    mem[(32 * arg3.length) + 416] = 0
    mem[(32 * arg3.length) + 224] = 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    mem[(32 * arg3.length) + 256] = 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    mem[(32 * arg3.length) + 320] = 0
    mem[(32 * arg3.length) + 352] = 0
    if not ext_call.return_data[64]:
        return 0
    require ext_code.size(arg2)
    staticcall arg2.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 160] = ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 192] = ext_call.return_data[0]
    idx = 0
    while idx < arg4:
        require idx < arg3.length
        _90 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 452] = arg1
        require ext_code.size(address(_90))
        staticcall address(_90).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(32 * arg3.length) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if ext_call.return_data[0]:
            require idx < arg3.length
            _111 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 452] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_111)
            mem[(32 * arg3.length) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 384] = ext_call.return_data[0] * ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] > mem[(32 * arg3.length) + 320]:
                mem[(32 * arg3.length) + 320] = ext_call.return_data[0] * ext_call.return_data[0]
                require idx < arg3.length
                mem[(32 * arg3.length) + 224] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg3.length) + 288] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                mem[(32 * arg3.length) + 416] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == mem[(32 * arg3.length) + 236 len 20]:
        return 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    idx = 0
    while idx < arg4:
        require idx < arg3.length
        _160 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 452] = arg1
        require ext_code.size(address(_160))
        staticcall address(_160).balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(32 * arg3.length) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if ext_call.return_data[0]:
            require idx < arg3.length
            _170 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 452] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_170)
            mem[(32 * arg3.length) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < arg3.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].exchangeRateStored() with:
                    gas gas_remaining wei
            mem[(32 * arg3.length) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0]
            if mem[(32 * arg3.length) + 288] < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0]:
                mem[(32 * arg3.length) + 384] = mem[(32 * arg3.length) + 288] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18
                if mem[(32 * arg3.length) + 288] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 > mem[(32 * arg3.length) + 288] * mem[(32 * arg3.length) + 416] / 10^18:
                    if (mem[(32 * arg3.length) + 288] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) - (mem[(32 * arg3.length) + 288] * mem[(32 * arg3.length) + 416] / 10^18) > mem[(32 * arg3.length) + 352]:
                        mem[(32 * arg3.length) + 352] = (mem[(32 * arg3.length) + 288] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) - (mem[(32 * arg3.length) + 288] * mem[(32 * arg3.length) + 416] / 10^18)
                        require idx < arg3.length
                        mem[(32 * arg3.length) + 256] = mem[(32 * idx) + 140 len 20]
            else:
                mem[(32 * arg3.length) + 384] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / 10^18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / 10^18) > mem[(32 * arg3.length) + 352]:
                        mem[(32 * arg3.length) + 352] = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] * ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / ext_call.return_data[0] * mem[(32 * arg3.length) + 416] / 10^18)
                        require idx < arg3.length
                        mem[(32 * arg3.length) + 256] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == mem[(32 * arg3.length) + 268 len 20]:
        return 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    mem[(32 * arg3.length) + 480] = mem[(32 * arg3.length) + 236 len 20]
    mem[(32 * arg3.length) + 512] = mem[(32 * arg3.length) + 268 len 20]
    return mem[(32 * arg3.length) + 352], mem[(32 * arg3.length) + 480 len 64]
}



}
