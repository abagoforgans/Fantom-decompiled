contract main {




// =====================  Runtime code  =====================


#
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function kill() {
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function sub_f2bf71d0(?) {
    require calldata.size - 4 >= 128
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    stor0 = arg1
    stor1 = arg2
    stor2 = arg3
    stor3 = arg4
}

function getPairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Mdexibrary: ZERO_ADDRESS'
        return address(sha3(0, 17241416772799840749, sha3(arg1, arg2), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
    if not arg2:
        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
    return address(sha3(0, 17241416772799840749, sha3(arg2, arg1), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        call stor4 with:
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
            args stor4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_16816262(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor0)
    staticcall stor0.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'shortfall == 0'
    require ext_code.size(arg2)
    call arg2.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor3
    require ext_code.size(stor1)
    staticcall stor1.getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 < ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3:
        if arg2 == arg3:
            require ext_code.size(arg2)
            staticcall arg2.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
            if ext_call.return_data[12 len 20] >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
            else:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
        else:
            if 0x797aab1ce7c01eb727ab980762ba88e7133d2157 == arg2:
                require ext_code.size(arg3)
                staticcall arg3.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0x797aab1ce7c01eb727ab980762ba88e7133d2157 == ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                if 0x797aab1ce7c01eb727ab980762ba88e7133d2157 < ext_call.return_data[12 len 20]:
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
            else:
                require ext_code.size(arg2)
                staticcall arg2.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                staticcall arg3.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                if not uint32(ext_code.size(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))):
                    if 100000 * ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0] <= 0:
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if address(ext_call.return_data[0]) == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                        if address(ext_call.return_data[0]) >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if 100000 * ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0] <= 985 * ext_call.return_data[18 len 14]:
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if address(ext_call.return_data[0]) == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                            if address(ext_call.return_data[0]) >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if 100000 * ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0] <= 985 * ext_call.return_data[50 len 14]:
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if address(ext_call.return_data[0]) == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                            if address(ext_call.return_data[0]) >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * ext_call.return_data[0] * stor2 / 10^18 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
    else:
        if arg2 == arg3:
            require ext_code.size(arg2)
            staticcall arg2.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
            if ext_call.return_data[12 len 20] >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
            else:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
        else:
            if 0x797aab1ce7c01eb727ab980762ba88e7133d2157 == arg2:
                require ext_code.size(arg3)
                staticcall arg3.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0x797aab1ce7c01eb727ab980762ba88e7133d2157 == ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                if 0x797aab1ce7c01eb727ab980762ba88e7133d2157 < ext_call.return_data[12 len 20]:
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if ext_call.return_data[12 len 20] == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
            else:
                require ext_code.size(arg2)
                staticcall arg2.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                staticcall arg3.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                    revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                if address(ext_call.return_data[0]) < ext_call.return_data[12 len 20]:
                    if not address(ext_call.return_data[0]):
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                if not uint32(ext_code.size(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))):
                    if 100000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0] <= 0:
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if address(ext_call.return_data[0]) == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                        if address(ext_call.return_data[0]) >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                else:
                    require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if 100000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0] <= 985 * ext_call.return_data[18 len 14]:
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if address(ext_call.return_data[0]) == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                            if address(ext_call.return_data[0]) >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                    else:
                        if 100000 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0] <= 985 * ext_call.return_data[50 len 14]:
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                        else:
                            if address(ext_call.return_data[0]) == 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                revert with 0, 'Mdexibrary: IDENTICAL_ADDRESSES'
                            if address(ext_call.return_data[0]) >= 0x797aab1ce7c01eb727ab980762ba88e7133d2157:
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(8753496966383541943, address(ext_call.return_data[0])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                            else:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'Mdexibrary: ZERO_ADDRESS'
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                staticcall address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / stor3 / ext_call.return_data[0], address(this.address), 128, 96, address(arg1), address(arg2), arg3
                                    else:
                                        call address(sha3(0, 17241416772799840749, sha3(address(ext_call.return_data[0]), 0x797aab1ce7c01eb727ab980762ba88e7133d2157), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
