contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_8f02f60a(?)
#  - _fallback()
#
function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        call 0x0af564c3c06f70752ea46ff19ddd4bad78f5e1ea with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
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
            args 0xaf564c3c06f70752ea46ff19ddd4bad78f5e1ea, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0cf3c42f(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(0xfe4f0eb0a1ad109185c9aade64c48ff8e928e54b)
    staticcall 0xfe4f0eb0a1ad109185c9aade64c48ff8e928e54b.getLoan(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool(ceil32(return_data.size) + 640 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[32] == ext_call.return_data[52 len 12]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    if 0 == ext_call.return_data[416]:
        return 0
    if not ext_call.return_data[448]:
        return 0
    require ext_code.size(ext_call.return_data[76 len 20])
    staticcall ext_call.return_data[76 len 20].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(ext_call.return_data[108 len 20])
    staticcall ext_call.return_data[108 len 20].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < uint8(ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not uint8(-uint8(ext_call.return_data[0]) + 18):
        require ext_code.size(address(arg2))
        staticcall address(arg2).latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[416] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[416]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[416] < 0 and ext_call.return_data[416] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[416] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[416]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[416] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[416]:
            revert with 'NH{q', 17
        if bool(10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0) and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if bool(10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0) and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if 18 < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not uint8(-uint8(ext_call.return_data[0]) + 18):
            require ext_code.size(address(arg3))
            staticcall address(arg3).latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if bool(10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0) and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0) and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            return ((10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
        if bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 78)) or bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 32)):
            require ext_code.size(address(arg3))
            staticcall address(arg3).latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[448] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            return ((10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
        s = 10
        t = 1
        idx = uint8(-uint8(ext_call.return_data[0]) + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        require ext_code.size(address(arg3))
        staticcall address(arg3).latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and s * t > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / s * t:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and s * t < 0 and s * t < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[448] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and s * t > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / s * t:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and s * t < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / s * t:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * s * t * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * s * t * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return ((10^10 * s * t * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
    if bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 78)) or bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 32)):
        require ext_code.size(address(arg2))
        staticcall address(arg2).latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[416] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[416]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[416] < 0 and ext_call.return_data[416] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[416] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[416]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[416] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[416]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[416] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 'NH{q', 17
        if 18 < uint8(ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not uint8(-uint8(ext_call.return_data[0]) + 18):
            require ext_code.size(address(arg3))
            staticcall address(arg3).latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if bool(10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0) and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0) and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            return ((10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
        if bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 78)) or bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 32)):
            require ext_code.size(address(arg3))
            staticcall address(arg3).latestAnswer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[448] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
                revert with 'NH{q', 17
            if 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            return ((10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
        s = 10
        t = 1
        idx = uint8(-uint8(ext_call.return_data[0]) + 18)
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        require ext_code.size(address(arg3))
        staticcall address(arg3).latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and s * t > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / s * t:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and s * t < 0 and s * t < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[448] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and s * t > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / s * t:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and s * t < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / s * t:
            revert with 'NH{q', 17
        if 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * s * t * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * s * t * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return ((10^10 * s * t * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
    s = 10
    t = 1
    idx = uint8(-uint8(ext_call.return_data[0]) + 18)
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[416] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[416]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[416] < 0 and ext_call.return_data[416] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[416] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[416]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[416] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[416]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0 and s * t > 0 and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / s * t:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] > 0 and s * t < 0 and s * t < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[416] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0 and s * t > 0 and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / s * t:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0 and s * t < 0 and 10^10 * ext_call.return_data[416] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / s * t:
        revert with 'NH{q', 17
    if 18 < uint8(ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not uint8(-uint8(ext_call.return_data[0]) + 18):
        require ext_code.size(address(arg3))
        staticcall address(arg3).latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if bool(10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0) and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if bool(10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0) and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if 10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if 10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return ((10^10 * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
    if bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 78)) or bool(bool(uint8(-uint8(ext_call.return_data[0]) + 18) < 32)):
        require ext_code.size(address(arg3))
        staticcall address(arg3).latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[448] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and 10^uint8(-uint8(ext_call.return_data[0]) + 18) < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-uint8(ext_call.return_data[0]) + 18):
            revert with 'NH{q', 17
        if 10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if 10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        return ((10^10 * 10^uint8(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
    u = 10
    v = 1
    idx = uint8(-uint8(ext_call.return_data[0]) + 18)
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    require ext_code.size(address(arg3))
    staticcall address(arg3).latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0] > 0) and 10^10 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] > 0 and ext_call.return_data[448] < 0 and ext_call.return_data[448] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] > 0 and 10^10 * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[448]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] < 0 and ext_call.return_data[448] < 0 and 10^10 * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[448]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and u * v > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / u * v:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] > 0 and u * v < 0 and u * v < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^10 * ext_call.return_data[448] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and u * v > 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000 / u * v:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0 and u * v < 0 and 10^10 * ext_call.return_data[448] * ext_call.return_data[0] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / u * v:
        revert with 'NH{q', 17
    if 10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 >= 0 and 10^10 * u * v * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 < (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if 10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18 < 0 and 10^10 * u * v * ext_call.return_data[448] * ext_call.return_data[0] / 10^18 > (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    return ((10^10 * u * v * ext_call.return_data[448] * ext_call.return_data[0] / 10^18) - (10^10 * s * t * ext_call.return_data[416] * ext_call.return_data[0] / 10^18))
}



}
