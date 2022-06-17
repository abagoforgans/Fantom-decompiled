contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0aeb730d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg2))
    staticcall address(arg2).liquidationIncentive() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[256] = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= 0:
            return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    else:
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[256] = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                return 0, 0, address(ext_call.return_data[12 len 20])
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(address(arg2))
            call address(arg2).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20])
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                   address(ext_call.return_data[12 len 20])
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                return 0, 0, address(ext_call.return_data[12 len 20])
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(address(arg2))
            call address(arg2).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20])
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(address(arg2))
                staticcall address(arg2).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                       address(ext_call.return_data[12 len 20])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                   address(ext_call.return_data[12 len 20])
    if mem[268 len 20] == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
        return 0, 0, address(ext_call.return_data[12 len 20])
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(address(arg2))
    call address(arg2).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x6ee27227 with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(address(arg2))
        staticcall address(arg2).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            revert with 0, 17
        return bool(ext_call.return_data[32]), 
               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
               address(ext_call.return_data[12 len 20])
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).underlying() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            revert with 0, 17
        return bool(ext_call.return_data[32]), 
               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
               address(ext_call.return_data[12 len 20])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        revert with 0, 17
    return bool(ext_call.return_data[32]), 
           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
           address(ext_call.return_data[12 len 20])
}

function sub_16816262(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= 0:
        revert with 0, 'has liquidity'
    require ext_code.size(address(arg3))
    staticcall address(arg3).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
            if not address(ext_call.return_data[0]):
                revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
        else:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
        if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
            require ext_code.size(address(arg3))
            staticcall address(arg3).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 317] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 349] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 381] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 413] = address(ext_call.return_data[0])
            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
            staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(10 * ceil32(return_data.size)) + 445] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
            staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                    gas gas_remaining wei
                   args mem[(10 * ceil32(return_data.size)) + 449 len 16 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ceil32(ceil32(return_data.size)) + 4 > ceil32(return_data.size) + 128:
                mem[(13 * ceil32(return_data.size)) + 737] = 0
            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=ceil32(return_data.size) + 128, data=mem[(8 * ceil32(return_data.size)) + 317 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 613 len 20 * ceil32(return_data.size)])
                else:
                    call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, ceil32(return_data.size) + 128, mem[(8 * ceil32(return_data.size)) + 317 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 613 len 20 * ceil32(return_data.size)]
            else:
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, ceil32(return_data.size) + 128, mem[(8 * ceil32(return_data.size)) + 317 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 613 len 20 * ceil32(return_data.size)]
                else:
                    call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, ceil32(return_data.size) + 128, mem[(8 * ceil32(return_data.size)) + 317 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 613 len 20 * ceil32(return_data.size)]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 285] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 285] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + 289 len ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                revert with 0, 
                            'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                            mem[(10 * ceil32(return_data.size)) + 417 len 5 * ceil32(return_data.size)]
            if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(10 * ceil32(return_data.size)) + 385 len 5 * ceil32(return_data.size)]
            else:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(10 * ceil32(return_data.size)) + 385 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
            require ext_code.size(address(arg3))
            staticcall address(arg3).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 926 len 5 * ceil32(return_data.size)]
                else:
                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, 128, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 926 len 5 * ceil32(return_data.size)]
            else:
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 128, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 926 len 5 * ceil32(return_data.size)]
                else:
                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 337 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 128, address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 926 len 5 * ceil32(return_data.size)]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
        if not ext_call.return_data[12 len 20]:
            if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 317] = address(arg1)
                    mem[(10 * ceil32(return_data.size)) + 349] = address(arg2)
                    mem[(10 * ceil32(return_data.size)) + 381] = address(arg3)
                    mem[(10 * ceil32(return_data.size)) + 413] = address(ext_call.return_data[0])
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[(10 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                    mem[(11 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(13 * ceil32(return_data.size)) + 445] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(13 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                    else:
                        mem[(13 * ceil32(return_data.size)) + 449] = 0
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 285] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 285] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 289 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                    mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                    if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _369 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _369, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _369, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _375 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _375, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _375, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
            else:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 317] = address(arg1)
                    mem[(10 * ceil32(return_data.size)) + 349] = address(arg2)
                    mem[(10 * ceil32(return_data.size)) + 381] = address(arg3)
                    mem[(10 * ceil32(return_data.size)) + 413] = address(ext_call.return_data[0])
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[(10 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                    mem[(11 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(13 * ceil32(return_data.size)) + 445] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(13 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                    else:
                        mem[(13 * ceil32(return_data.size)) + 449] = 0
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 285] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 285] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 289 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                    mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                    if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _381 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _381, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _381, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _387 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _387, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _387, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
        else:
            if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 317] = address(arg1)
                    mem[(10 * ceil32(return_data.size)) + 349] = address(arg2)
                    mem[(10 * ceil32(return_data.size)) + 381] = address(arg3)
                    mem[(10 * ceil32(return_data.size)) + 413] = address(ext_call.return_data[0])
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[(10 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                    mem[(11 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(13 * ceil32(return_data.size)) + 445] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(13 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                    else:
                        mem[(13 * ceil32(return_data.size)) + 449] = 0
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 285] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 285] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 289 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                    mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                    if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _393 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _393, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _393, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _399 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _399, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _399, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
            else:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 317] = address(arg1)
                    mem[(10 * ceil32(return_data.size)) + 349] = address(arg2)
                    mem[(10 * ceil32(return_data.size)) + 381] = address(arg3)
                    mem[(10 * ceil32(return_data.size)) + 413] = address(ext_call.return_data[0])
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[(10 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                    mem[(11 * ceil32(return_data.size)) + 445] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(13 * ceil32(return_data.size)) + 445] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        mem[(13 * ceil32(return_data.size)) + 449] = ext_call.return_data[0]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                    else:
                        mem[(13 * ceil32(return_data.size)) + 449] = 0
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                        else:
                            mem[(13 * ceil32(return_data.size)) + 481] = 0
                            mem[(13 * ceil32(return_data.size)) + 513] = this.address
                            mem[(13 * ceil32(return_data.size)) + 545] = 128
                            mem[(13 * ceil32(return_data.size)) + 577] = (16 * ceil32(return_data.size)) + 128
                            mem[(13 * ceil32(return_data.size)) + 609 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 317 len ceil32(16 * ceil32(return_data.size)) + 4]
                            if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                mem[(30 * ceil32(return_data.size)) + 737] = 0
                            require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                            call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 609 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 285] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 285] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[(10 * ceil32(return_data.size)) + 289 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                    mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                    if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _405 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _405, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _405, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 385 len 20 * ceil32(return_data.size)]
                        mem[(12 * ceil32(return_data.size)) + 337] = address(ext_call.return_data[0])
                        _411 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20])
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 337 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        mem[(14 * ceil32(return_data.size)) + 634] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            mem[(16 * ceil32(return_data.size)) + 638] = ext_call.return_data[0]
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        else:
                            mem[(16 * ceil32(return_data.size)) + 638] = 0
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                            else:
                                mem[(16 * ceil32(return_data.size)) + 670] = 0
                        mem[(16 * ceil32(return_data.size)) + 702] = this.address
                        mem[(16 * ceil32(return_data.size)) + 734] = 128
                        mem[(16 * ceil32(return_data.size)) + 766] = 128
                        mem[(16 * ceil32(return_data.size)) + 798 len 128] = address(arg1), address(arg2), address(arg3), address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 17241416772799840749, _411, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        call address(sha3(0, 17241416772799840749, _411, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[(16 * ceil32(return_data.size)) + 638 len (5 * ceil32(return_data.size)) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender wrong'
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 100)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).liquidate(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                gas gas_remaining wei
        if not ext_call.success:
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).redeem(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 132)]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).burn(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1 > !(1000 * arg3 / 997):
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (1000 * arg3 / 997) + 1 < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                    gas gas_remaining wei
            mem[(16 * ceil32(return_data.size)) + 474 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 <= 0:
                revert with 0, 
                            'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT',
                            mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if not ext_call.return_data[18 len 14]:
                    if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 18
                    if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                        revert with 0, 17
                    if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[18 len 14] and (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            revert with 0, 18
                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if not ext_call.return_data[50 len 14]:
                    if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 18
                    if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                        revert with 0, 17
                    if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[50 len 14] and (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            revert with 0, 18
                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(20 * ceil32(return_data.size)) + 510 len 36 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 542 len 40 * ceil32(return_data.size)]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(cd[(arg4 + 68)]))
            if not ext_call.return_data[0]:
                call address(cd[(arg4 + 68)]).redeem(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 132)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1 > !(1000 * arg3 / 997):
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (1000 * arg3 / 997) + 1 < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                        gas gas_remaining wei
                mem[(18 * ceil32(return_data.size)) + 474 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 <= 0:
                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[18 len 14]:
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[18 len 14] and (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[50 len 14]:
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[50 len 14] and (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(21 * ceil32(return_data.size)) + 510 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(23 * ceil32(return_data.size)) + 542 len 9 * ceil32(return_data.size)]
            else:
                call address(cd[(arg4 + 68)]).redeem(address arg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).redeem(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 132)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1 > !(1000 * arg3 / 997):
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (1000 * arg3 / 997) + 1 < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                        gas gas_remaining wei
                mem[(19 * ceil32(return_data.size)) + 474 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 <= 0:
                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[18 len 14]:
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[18 len 14] and (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[50 len 14]:
                        if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[50 len 14] and (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg3 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg3 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg3 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg3 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg3 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg3 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(22 * ceil32(return_data.size)) + 510 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 542 len 9 * ceil32(return_data.size)]
    else:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 100)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).liquidate(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                gas gas_remaining wei
        if not ext_call.success:
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).redeem(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 132)]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).burn(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1 > !(1000 * arg2 / 997):
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (1000 * arg2 / 997) + 1 < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
            if not address(ext_call.return_data[0]):
                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                    gas gas_remaining wei
            mem[(16 * ceil32(return_data.size)) + 474 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 <= 0:
                revert with 0, 
                            'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT',
                            mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if not ext_call.return_data[18 len 14]:
                    if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 18
                    if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                        revert with 0, 17
                    if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[18 len 14] and (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            revert with 0, 18
                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 
                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                if not ext_call.return_data[50 len 14]:
                    if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                        revert with 0, 18
                    if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 18
                    if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                        revert with 0, 17
                    if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[50 len 14] and (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                    if not ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            revert with 0, 18
                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        mem[(18 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 542 len 33 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(20 * ceil32(return_data.size)) + 510 len 36 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 542 len 40 * ceil32(return_data.size)]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(cd[(arg4 + 68)]))
            if not ext_call.return_data[0]:
                call address(cd[(arg4 + 68)]).redeem(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 132)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1 > !(1000 * arg2 / 997):
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (1000 * arg2 / 997) + 1 < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                        gas gas_remaining wei
                mem[(18 * ceil32(return_data.size)) + 474 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 <= 0:
                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[18 len 14]:
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[18 len 14] and (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[50 len 14]:
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[50 len 14] and (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(19 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(21 * ceil32(return_data.size)) + 510 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(23 * ceil32(return_data.size)) + 542 len 9 * ceil32(return_data.size)]
            else:
                call address(cd[(arg4 + 68)]).redeem(address arg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).redeem(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 132)]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 132)]))
                call address(cd[(arg4 + 132)]).burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1 > !(1000 * arg2 / 997):
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (1000 * arg2 / 997) + 1 < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                if not address(ext_call.return_data[0]):
                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                        gas gas_remaining wei
                mem[(19 * ceil32(return_data.size)) + 474 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 <= 0:
                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[18 len 14]:
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[18 len 14] and (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[50 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                    if not ext_call.return_data[50 len 14]:
                        if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                            revert with 0, 18
                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 18
                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                            revert with 0, 17
                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                    else:
                        if ext_call.return_data[50 len 14] and (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                        else:
                            if ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (1000 * arg2 / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[18 len 14] < (1000 * arg2 / 997) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * arg2 / 997) + ext_call.return_data[0] - 1 != 997:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 18
                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                revert with 0, 17
                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * arg2 / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(20 * ceil32(return_data.size)) + 510] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * arg2 / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * arg2 / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(22 * ceil32(return_data.size)) + 510 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 542 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x0aeb730d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require ext_code.size(address(cd[36]))
            call address(cd[36]).accountLiquidity(address arg1) with:
                 gas gas_remaining wei
                args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[36]))
            call address(cd[36]).getPrices() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[36]))
            call address(cd[36]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).borrowable0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).borrowable1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[288] = ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= 0:
                    return 0, 0, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
            else:
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).borrowable1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[288] = ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                        return 0, 0, address(ext_call.return_data[12 len 20])
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20])
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20])
                if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    if address(ext_call.return_data[12 len 20]) == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                        return 0, 0, address(ext_call.return_data[12 len 20])
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20])
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlying() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        return bool(ext_call.return_data[32]), 
                               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                               address(ext_call.return_data[12 len 20])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).exchangeRate() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlying() with:
                            gas gas_remaining wei
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    return bool(ext_call.return_data[32]), 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
                           address(ext_call.return_data[12 len 20])
            if mem[300 len 20] == 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
                return 0, 0, address(ext_call.return_data[12 len 20])
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(address(cd[36]))
            call address(cd[36]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    revert with 0, 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                       address(ext_call.return_data[12 len 20])
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                    revert with 0, 17
                return bool(ext_call.return_data[32]), 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                       address(ext_call.return_data[12 len 20])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).exchangeRate() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).underlying() with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) <= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                return bool(ext_call.return_data[32]), 0, address(ext_call.return_data[12 len 20])
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                revert with 0, 17
            return bool(ext_call.return_data[32]), 
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[32] / 10^18),
                   address(ext_call.return_data[12 len 20])
        if unknown_0x10d1e85c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            require ('cd', 100).length <= test266151307()
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            require ext_code.size(msg.sender)
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Sender wrong'
            require ('cd', 100).length >= 128
            require ('cd', 100)[0] == address(('cd', 100)[0])
            require ('cd', 100)[1] == address(('cd', 100)[1])
            require ('cd', 100)[2] == address(('cd', 100)[2])
            require ('cd', 100)[3] == address(('cd', 100)[3])
            require ext_code.size(address(ext_call.return_data[0]))
            if not cd[36]:
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 100)[2]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(('cd', 100)[2]))
                call address(('cd', 100)[2]).liquidate(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(('cd', 100)[0]), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(('cd', 100)[1]))
                call address(('cd', 100)[1]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 100)[1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(('cd', 100)[1]))
                staticcall address(('cd', 100)[1]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).redeem(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(('cd', 100)[3]))
                    call address(('cd', 100)[3]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[3]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(('cd', 100)[3]))
                    call address(('cd', 100)[3]).burn(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if cd[68] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1 > !(1000 * cd[68] / 998):
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (1000 * cd[68] / 998) + 1 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                            gas gas_remaining wei
                    mem[(16 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 <= 0:
                        revert with 0, 
                                    'SpookyswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT',
                                    mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if not ext_call.return_data[18 len 14]:
                            if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 18
                            if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                revert with 0, 17
                            if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[18 len 14] and (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if not ext_call.return_data[50 len 14]:
                            if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 18
                            if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                revert with 0, 17
                            if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[50 len 14] and (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(20 * ceil32(return_data.size)) + 542 len 36 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 574 len 40 * ceil32(return_data.size)]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(('cd', 100)[1]))
                    if not ext_call.return_data[0]:
                        call address(('cd', 100)[1]).redeem(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[3]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).burn(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if cd[68] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1 > !(1000 * cd[68] / 998):
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (1000 * cd[68] / 998) + 1 < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                        staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                                gas gas_remaining wei
                        mem[(18 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 <= 0:
                            revert with 0, 'SpookyswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[18 len 14]:
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[18 len 14] and (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[50 len 14]:
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[50 len 14] and (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address, mem[(21 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(23 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
                    else:
                        call address(('cd', 100)[1]).redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).redeem(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[3]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).burn(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if cd[68] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1 > !(1000 * cd[68] / 998):
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (1000 * cd[68] / 998) + 1 < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                        staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                                gas gas_remaining wei
                        mem[(19 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 <= 0:
                            revert with 0, 'SpookyswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[18 len 14]:
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[18 len 14] and (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[50 len 14]:
                                if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[50 len 14] and (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[68] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[68] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address, mem[(22 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
            else:
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 100)[2]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(('cd', 100)[2]))
                call address(('cd', 100)[2]).liquidate(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(('cd', 100)[0]), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(('cd', 100)[1]))
                call address(('cd', 100)[1]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 100)[1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(('cd', 100)[1]))
                staticcall address(('cd', 100)[1]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).redeem(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(('cd', 100)[3]))
                    call address(('cd', 100)[3]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[3]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(('cd', 100)[3]))
                    call address(('cd', 100)[3]).burn(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if cd[36] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1 > !(1000 * cd[36] / 998):
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (1000 * cd[36] / 998) + 1 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                    staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                            gas gas_remaining wei
                    mem[(16 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 <= 0:
                        revert with 0, 
                                    'SpookyswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT',
                                    mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if not ext_call.return_data[18 len 14]:
                            if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 18
                            if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                revert with 0, 17
                            if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[18 len 14] and (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 
                                        'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY',
                                        mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                        if not ext_call.return_data[50 len 14]:
                            if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                revert with 0, 18
                            if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 18
                            if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                revert with 0, 17
                            if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                            mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[50 len 14] and (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(20 * ceil32(return_data.size)) + 542 len 36 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 574 len 40 * ceil32(return_data.size)]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(('cd', 100)[1]))
                    if not ext_call.return_data[0]:
                        call address(('cd', 100)[1]).redeem(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[3]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).burn(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if cd[36] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1 > !(1000 * cd[36] / 998):
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (1000 * cd[36] / 998) + 1 < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                        staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                                gas gas_remaining wei
                        mem[(18 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 <= 0:
                            revert with 0, 'SpookyswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[18 len 14]:
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[18 len 14] and (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[50 len 14]:
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[50 len 14] and (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address, mem[(21 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(23 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
                    else:
                        call address(('cd', 100)[1]).redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).redeem(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[3]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[3]))
                        call address(('cd', 100)[3]).burn(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if cd[36] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1 > !(1000 * cd[36] / 998):
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (1000 * cd[36] / 998) + 1 < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                        staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                                gas gas_remaining wei
                        mem[(19 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 <= 0:
                            revert with 0, 'SpookyswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[18 len 14]:
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[18 len 14] and (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[50 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (998 * ext_call.return_data[50 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (998 * Mask(112, 0, ext_call.return_data[32])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SpookyswapLibrary: INSUFFICIENT_LIQUIDITY'
                            if not ext_call.return_data[50 len 14]:
                                if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                    revert with 0, 18
                                if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 18
                                if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                    revert with 0, 17
                                if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                            else:
                                if ext_call.return_data[50 len 14] and (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if (0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                else:
                                    if ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[18 len 14] < (1000 * cd[36] / 998) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 and 998 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 998) + ext_call.return_data[0] - 1 != 998:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 18
                                    if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998 > -2:
                                        revert with 0, 17
                                    if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 998 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (998 * ext_call.return_data[18 len 14]) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 998 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (998 * Mask(112, 0, ext_call.return_data[0])) + (-998 * 1000 * cd[36] / 998) + (998 * ext_call.return_data[0]) - 998) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address, mem[(22 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x16816262(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                require ext_code.size(address(cd[36]))
                call address(cd[36]).accountLiquidity(address arg1) with:
                     gas gas_remaining wei
                    args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'has liquidity'
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).borrowBalance(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                        if not address(ext_call.return_data[0]):
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                    if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 349] = address(cd[4])
                        mem[(8 * ceil32(return_data.size)) + 381] = address(cd[36])
                        mem[(8 * ceil32(return_data.size)) + 413] = address(cd[68])
                        mem[(8 * ceil32(return_data.size)) + 445] = address(ext_call.return_data[0])
                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                        staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                                gas gas_remaining wei
                        mem[(8 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(10 * ceil32(return_data.size)) + 477] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                        staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                                gas gas_remaining wei
                               args mem[(10 * ceil32(return_data.size)) + 481 len 16 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ceil32(ceil32(return_data.size)) + 4 > ceil32(return_data.size) + 128:
                            mem[(13 * ceil32(return_data.size)) + 769] = 0
                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=ceil32(return_data.size) + 128, data=mem[(8 * ceil32(return_data.size)) + 349 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 645 len 20 * ceil32(return_data.size)])
                            else:
                                call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, address(this.address), 128, ceil32(return_data.size) + 128, mem[(8 * ceil32(return_data.size)) + 349 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 645 len 20 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], address(this.address), 128, ceil32(return_data.size) + 128, mem[(8 * ceil32(return_data.size)) + 349 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 645 len 20 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, ceil32(return_data.size) + 128, mem[(8 * ceil32(return_data.size)) + 349 len ceil32(ceil32(return_data.size)) + 4], mem[(12 * ceil32(return_data.size)) + ceil32(ceil32(return_data.size)) + 645 len 20 * ceil32(return_data.size)]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(7 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 321 len ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                        mem[(10 * ceil32(return_data.size)) + 449 len 5 * ceil32(return_data.size)]
                        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(10 * ceil32(return_data.size)) + 417 len 5 * ceil32(return_data.size)]
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(10 * ceil32(return_data.size)) + 417 len 5 * ceil32(return_data.size)]
                        mem[(10 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 128, address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 958 len 5 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, address(this.address), 128, 128, address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 958 len 5 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], address(this.address), 128, 128, address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 958 len 5 * ceil32(return_data.size)]
                            else:
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(10 * ceil32(return_data.size)) + 369 len (5 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 128, address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0]), mem[(14 * ceil32(return_data.size)) + 958 len 5 * ceil32(return_data.size)]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        revert with 0, 'SpookyswapLibrary: IDENTICAL_ADDRESSES'
                    if not ext_call.return_data[12 len 20]:
                        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                                require ext_code.size(address(cd[68]))
                                staticcall address(cd[68]).underlying() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 349] = address(cd[4])
                                mem[(10 * ceil32(return_data.size)) + 381] = address(cd[36])
                                mem[(10 * ceil32(return_data.size)) + 413] = address(cd[68])
                                mem[(10 * ceil32(return_data.size)) + 445] = address(ext_call.return_data[0])
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                                        gas gas_remaining wei
                                mem[(10 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                                        gas gas_remaining wei
                                mem[(11 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(13 * ceil32(return_data.size)) + 477] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                else:
                                    mem[(13 * ceil32(return_data.size)) + 481] = 0
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 321 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                                mem[(12 * ceil32(return_data.size)) + 449 len 20 * ceil32(return_data.size)]
                                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _643 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _643, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _643, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                                else:
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _649 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _649, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _649, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                                require ext_code.size(address(cd[68]))
                                staticcall address(cd[68]).underlying() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 349] = address(cd[4])
                                mem[(10 * ceil32(return_data.size)) + 381] = address(cd[36])
                                mem[(10 * ceil32(return_data.size)) + 413] = address(cd[68])
                                mem[(10 * ceil32(return_data.size)) + 445] = address(ext_call.return_data[0])
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                                        gas gas_remaining wei
                                mem[(10 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                                        gas gas_remaining wei
                                mem[(11 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(13 * ceil32(return_data.size)) + 477] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                else:
                                    mem[(13 * ceil32(return_data.size)) + 481] = 0
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 321 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                                mem[(12 * ceil32(return_data.size)) + 449 len 20 * ceil32(return_data.size)]
                                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _655 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _655, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _655, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                                else:
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _661 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _661, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _661, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                    else:
                        if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                                require ext_code.size(address(cd[68]))
                                staticcall address(cd[68]).underlying() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 349] = address(cd[4])
                                mem[(10 * ceil32(return_data.size)) + 381] = address(cd[36])
                                mem[(10 * ceil32(return_data.size)) + 413] = address(cd[68])
                                mem[(10 * ceil32(return_data.size)) + 445] = address(ext_call.return_data[0])
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                                        gas gas_remaining wei
                                mem[(10 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                                        gas gas_remaining wei
                                mem[(11 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(13 * ceil32(return_data.size)) + 477] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                else:
                                    mem[(13 * ceil32(return_data.size)) + 481] = 0
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 321 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                                mem[(12 * ceil32(return_data.size)) + 449 len 20 * ceil32(return_data.size)]
                                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _667 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _667, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _667, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                                else:
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _673 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _673, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _673, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'SpookyswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) != address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)):
                                require ext_code.size(address(cd[68]))
                                staticcall address(cd[68]).underlying() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 349] = address(cd[4])
                                mem[(10 * ceil32(return_data.size)) + 381] = address(cd[36])
                                mem[(10 * ceil32(return_data.size)) + 413] = address(cd[68])
                                mem[(10 * ceil32(return_data.size)) + 445] = address(ext_call.return_data[0])
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                                        gas gas_remaining wei
                                mem[(10 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                staticcall address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                                        gas gas_remaining wei
                                mem[(11 * ceil32(return_data.size)) + 477] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(13 * ceil32(return_data.size)) + 477] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    mem[(13 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), Array(len=(16 * ceil32(return_data.size)) + 128, data=mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4])
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                else:
                                    mem[(13 * ceil32(return_data.size)) + 481] = 0
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(13 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                                    else:
                                        mem[(13 * ceil32(return_data.size)) + 513] = 0
                                        mem[(13 * ceil32(return_data.size)) + 545] = this.address
                                        mem[(13 * ceil32(return_data.size)) + 577] = 128
                                        mem[(13 * ceil32(return_data.size)) + 609] = (16 * ceil32(return_data.size)) + 128
                                        mem[(13 * ceil32(return_data.size)) + 641 len ceil32(16 * ceil32(return_data.size)) + 4] = mem[(10 * ceil32(return_data.size)) + 349 len ceil32(16 * ceil32(return_data.size)) + 4]
                                        if ceil32(16 * ceil32(return_data.size)) + 4 > (16 * ceil32(return_data.size)) + 128:
                                            mem[(30 * ceil32(return_data.size)) + 769] = 0
                                        require ext_code.size(address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)))
                                        call address(sha3(0, 1526410864014554874, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, (16 * ceil32(return_data.size)) + 128, mem[(13 * ceil32(return_data.size)) + 641 len (5 * ceil32(return_data.size)) + ceil32(16 * ceil32(return_data.size)) + 4]
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 317] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 317] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 321 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                'SpiritswapLibrary: IDENTICAL_ADDRESSES',
                                                mem[(12 * ceil32(return_data.size)) + 449 len 20 * ceil32(return_data.size)]
                                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _679 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _679, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _679, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                                else:
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS', mem[(12 * ceil32(return_data.size)) + 417 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 369] = address(ext_call.return_data[0])
                                    _685 = sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20])
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).underlying() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 369 len (20 * ceil32(return_data.size)) + 20]), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                            gas gas_remaining wei
                                    mem[(14 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        mem[(16 * ceil32(return_data.size)) + 670] = ext_call.return_data[0]
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    else:
                                        mem[(16 * ceil32(return_data.size)) + 670] = 0
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            mem[(16 * ceil32(return_data.size)) + 702] = ext_call.return_data[0]
                                        else:
                                            mem[(16 * ceil32(return_data.size)) + 702] = 0
                                    mem[(16 * ceil32(return_data.size)) + 734] = this.address
                                    mem[(16 * ceil32(return_data.size)) + 766] = 128
                                    mem[(16 * ceil32(return_data.size)) + 798] = 128
                                    mem[(16 * ceil32(return_data.size)) + 830 len 128] = address(cd[4]), address(cd[36]), address(cd[68]), address(ext_call.return_data[0])
                                    require ext_code.size(address(sha3(0, 17241416772799840749, _685, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, 17241416772799840749, _685, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(16 * ceil32(return_data.size)) + 670 len (5 * ceil32(return_data.size)) + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x51cff8d9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa9059cbb with:
                         gas gas_remaining wei
                        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
                else:
                    require unknown_0x84800812(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
                    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, 'Sender wrong'
                    require ('cd', 100).length >= 128
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    require ('cd', 100)[2] == address(('cd', 100)[2])
                    require ('cd', 100)[3] == address(('cd', 100)[3])
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[2]), cd[68]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[2]))
                        call address(('cd', 100)[2]).liquidate(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(('cd', 100)[0]), this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[1]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[1]))
                        staticcall address(('cd', 100)[1]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(('cd', 100)[3]))
                            call address(('cd', 100)[3]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[3]), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(('cd', 100)[3]))
                            call address(('cd', 100)[3]).burn(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if cd[68] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1 > !(1000 * cd[68] / 997):
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (1000 * cd[68] / 997) + 1 < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[(16 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 
                                            'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT',
                                            mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not ext_call.return_data[18 len 14]:
                                    if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 18
                                    if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                        revert with 0, 17
                                    if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[18 len 14] and (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14]:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not ext_call.return_data[50 len 14]:
                                    if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 18
                                    if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                        revert with 0, 17
                                    if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[50 len 14] and (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14]:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address, mem[(20 * ceil32(return_data.size)) + 542 len 36 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 574 len 40 * ceil32(return_data.size)]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(('cd', 100)[1]))
                            if not ext_call.return_data[0]:
                                call address(('cd', 100)[1]).redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[3]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).burn(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if cd[68] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if 1 > !(1000 * cd[68] / 997):
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (1000 * cd[68] / 997) + 1 < ext_call.return_data[0]:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                        gas gas_remaining wei
                                mem[(18 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[18 len 14]:
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[18 len 14] and (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[50 len 14]:
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[50 len 14] and (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address, mem[(21 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(23 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
                            else:
                                call address(('cd', 100)[1]).redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[3]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).burn(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if cd[68] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if 1 > !(1000 * cd[68] / 997):
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (1000 * cd[68] / 997) + 1 < ext_call.return_data[0]:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                        gas gas_remaining wei
                                mem[(19 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[18 len 14]:
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[18 len 14] and (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[50 len 14]:
                                        if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[50 len 14] and (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[68] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[68] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[68] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[68] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[68] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address, mem[(22 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[2]), cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[2]))
                        call address(('cd', 100)[2]).liquidate(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(('cd', 100)[0]), this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(('cd', 100)[1]))
                        call address(('cd', 100)[1]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(('cd', 100)[1]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(('cd', 100)[1]))
                        staticcall address(('cd', 100)[1]).underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x6ee27227 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            require ext_code.size(address(('cd', 100)[1]))
                            call address(('cd', 100)[1]).redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(('cd', 100)[3]))
                            call address(('cd', 100)[3]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(('cd', 100)[3]), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(('cd', 100)[3]))
                            call address(('cd', 100)[3]).burn(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if cd[36] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1 > !(1000 * cd[36] / 997):
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (1000 * cd[36] / 997) + 1 < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                    gas gas_remaining wei
                            mem[(16 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 
                                            'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT',
                                            mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not ext_call.return_data[18 len 14]:
                                    if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 18
                                    if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                        revert with 0, 17
                                    if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[18 len 14] and (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14]:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 
                                                'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY',
                                                mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                if not ext_call.return_data[50 len 14]:
                                    if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 17
                                    if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                        revert with 0, 18
                                    if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 18
                                    if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                        revert with 0, 17
                                    if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                        revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                    mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                else:
                                    if ext_call.return_data[50 len 14] and (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14]:
                                        revert with 0, 18
                                    if ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                    if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                                    else:
                                        if ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(18 * ceil32(return_data.size)) + 638 len 33 * ceil32(return_data.size)]
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow', mem[(18 * ceil32(return_data.size)) + 606 len 33 * ceil32(return_data.size)]
                                        mem[(18 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1, mem[(18 * ceil32(return_data.size)) + 574 len 33 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address, mem[(20 * ceil32(return_data.size)) + 542 len 36 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(22 * ceil32(return_data.size)) + 574 len 40 * ceil32(return_data.size)]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(('cd', 100)[1]))
                            if not ext_call.return_data[0]:
                                call address(('cd', 100)[1]).redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[3]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).burn(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if cd[36] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if 1 > !(1000 * cd[36] / 997):
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (1000 * cd[36] / 997) + 1 < ext_call.return_data[0]:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                        gas gas_remaining wei
                                mem[(18 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[18 len 14]:
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[18 len 14] and (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[50 len 14]:
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[50 len 14] and (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(19 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address, mem[(21 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(23 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
                            else:
                                call address(('cd', 100)[1]).redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(('cd', 100)[3]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(('cd', 100)[3]))
                                call address(('cd', 100)[3]).burn(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                if cd[36] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if 1 > !(1000 * cd[36] / 997):
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (1000 * cd[36] / 997) + 1 < ext_call.return_data[0]:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: IDENTICAL_ADDRESSES'
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'SpiritswapLibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                                        gas gas_remaining wei
                                mem[(19 * ceil32(return_data.size)) + 506 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 <= 0:
                                    revert with 0, 'SpiritswapLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[18 len 14]:
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[18 len 14] and (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[18 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) and 1000 > -1 / ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[50 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[50 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[18 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) / (997 * ext_call.return_data[50 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[0])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / (997 * Mask(112, 0, ext_call.return_data[32])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'SpiritswapLibrary: INSUFFICIENT_LIQUIDITY'
                                    if not ext_call.return_data[50 len 14]:
                                        if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 17
                                        if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                            revert with 0, 18
                                        if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 18
                                        if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                            revert with 0, 17
                                        if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                    else:
                                        if ext_call.return_data[50 len 14] and (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > -1 / ext_call.return_data[50 len 14]:
                                            revert with 0, 17
                                        if not ext_call.return_data[50 len 14]:
                                            revert with 0, 18
                                        if ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if (0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                        else:
                                            if ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) and 1000 > -1 / ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 17
                                            if not ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]):
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] + (1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) != 1000:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1 > ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ext_call.return_data[18 len 14] < (1000 * cd[36] / 997) + -ext_call.return_data[0] + 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 and 997 > -1 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 17
                                            if not ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1:
                                                revert with 0, 18
                                            if (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 / ext_call.return_data[18 len 14] + -(1000 * cd[36] / 997) + ext_call.return_data[0] - 1 != 997:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 18
                                            if (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997 > -2:
                                                revert with 0, 17
                                            if ((1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1 < (1000 * ext_call.return_data[50 len 14]) + (1000 * 1000 * cd[36] / 997 * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) / (997 * ext_call.return_data[18 len 14]) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[(20 * ceil32(return_data.size)) + 542] = ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ((1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * 1000 * cd[36] / 997 * Mask(112, 0, ext_call.return_data[32])) - (1000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / (997 * Mask(112, 0, ext_call.return_data[0])) + (-997 * 1000 * cd[36] / 997) + (997 * ext_call.return_data[0]) - 997) + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address, mem[(22 * ceil32(return_data.size)) + 542 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 574 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
