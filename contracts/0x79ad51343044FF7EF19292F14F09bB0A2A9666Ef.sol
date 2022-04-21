contract main {




// =====================  Runtime code  =====================


#
#  - Swap(uint256 arg1, uint256 arg2)
#  - sub_79ca88da(?)
#
address stor0;
array of struct stor1;
array of struct stor2;
array of address stor3;

function _fallback() payable {
    revert
}

function Withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function WithdrawToken(address arg1) {
    require calldata.size - 4 >= 32
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
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function GetAmounts(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < stor1.length
    require stor1[arg1].field_0 <= test266151307()
    mem[96] = stor1[arg1].field_0
    if not stor1[arg1].field_0:
        if arg1 < stor2.length:
            require stor2[arg1].field_0 <= test266151307()
            mem[(32 * stor1[arg1].field_0) + 128] = stor2[arg1].field_0
            if stor2[arg1].field_0:
                mem[(32 * stor1[arg1].field_0) + 160 len 32 * stor2[arg1].field_0] = call.data[calldata.size len 32 * stor2[arg1].field_0]
                if arg1 < stor3.length:
                    if var33003 >= uint256(stor3[arg1]):
                        if arg1 < stor3.length:
                            if var38003 >= uint256(stor3[arg1]):
                                return var38006
                            if arg1 < stor3.length:
                                if var42003 < uint256(stor3[arg1]):
                                    if arg1 < stor2.length:
                                        mem[0] = 2
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = var33007
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor2[arg1].field_0
                                        if not stor2[arg1].field_0:
                                            require ext_code.size(address(stor3[arg1 + var42003]))
                                            staticcall address(stor3[arg1 + var42003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var33007, 64, stor2[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _1762 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _1813 = mem[_1762 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1762 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1762 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1762 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _1813) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var42006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var42003 + 1 >= uint256(stor3[arg1]):
                                                            return var42006
                                                        if arg1 < stor3.length:
                                                            var42003 = var42003 + 1
                                                            var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var42006 = var42006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _2237 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var42003 + 1 >= uint256(stor3[arg1]):
                                                                return _2237
                                                            if arg1 < stor3.length:
                                                                var42003 = var42003 + 1
                                                                var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var42006 = _2237
                                                                continue 
                                        else:
                                            mem[0] = sha3(2) + arg1
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor2[arg1].field_0
                                            idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                            s = 0
                                            while (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + 260 > idx + 32:
                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(address(stor3[arg1 + var42003]))
                                            staticcall address(stor3[arg1 + var42003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var33007, Array(len=stor2[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor2[arg1].field_0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _2659 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _2746 = mem[_2659 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_2659 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_2659 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_2659 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _2746) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var42006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var42003 + 1 >= uint256(stor3[arg1]):
                                                            return var42006
                                                        if arg1 < stor3.length:
                                                            var42003 = var42003 + 1
                                                            var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var42006 = var42006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _3168 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var42003 + 1 >= uint256(stor3[arg1]):
                                                                return _3168
                                                            if arg1 < stor3.length:
                                                                var42003 = var42003 + 1
                                                                var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var42006 = _3168
                                                                continue 
                    else:
                        if arg1 < stor3.length:
                            if var37003 < uint256(stor3[arg1]):
                                if arg1 < stor1.length:
                                    mem[0] = 1
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = arg2
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor1[arg1].field_0
                                    if not stor1[arg1].field_0:
                                        require ext_code.size(address(stor3[arg1 + var37003]))
                                        staticcall address(stor3[arg1 + var37003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, 64, stor1[arg1].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1061 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1084 = mem[_1061 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1061 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1061 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1061 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var37007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var37003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var37003 = var37003 + 1
                                                            var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var37007 = var37007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var58003 >= uint256(stor3[arg1]):
                                                                return var58006
                                                            if arg1 < stor3.length:
                                                                if var62003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[0] = 2
                                                                        mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var37007
                                                                        mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var62003]))
                                                                            staticcall address(stor3[arg1 + var62003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3215 = mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3277 = mem[_3215 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3215 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3215 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3215 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3277) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var62006 > mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var62006
                                                                                        if arg1 < stor3.length:
                                                                                            var62003 = var62003 + 1
                                                                                            var62004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var62006 = var62006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _3597 = mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _3597
                                                                                            if arg1 < stor3.length:
                                                                                                var62003 = var62003 + 1
                                                                                                var62004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var62006 = _3597
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1084) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var62003]))
                                                                            staticcall address(stor3[arg1 + var62003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3863 = mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3909 = mem[_3863 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3863 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3863 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3863 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3909) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var62006 > mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var62006
                                                                                        if arg1 < stor3.length:
                                                                                            var62003 = var62003 + 1
                                                                                            var62004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var62006 = var62006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _4251 = mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _4251
                                                                                            if arg1 < stor3.length:
                                                                                                var62003 = var62003 + 1
                                                                                                var62004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var62006 = _4251
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _1396 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var37003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var37003 = var37003 + 1
                                                                var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var37007 = _1396
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var60003 >= uint256(stor3[arg1]):
                                                                    return var60006
                                                                if arg1 < stor3.length:
                                                                    if var64003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[0] = 2
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _1396
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var64003]))
                                                                                staticcall address(stor3[arg1 + var64003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1396, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3217 = mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32
                                                                                require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 <= 4294967296
                                                                                require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3278 = mem[_3217 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3217 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3217 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3217 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3278) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var64006 > mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var64006
                                                                                            if arg1 < stor3.length:
                                                                                                var64003 = var64003 + 1
                                                                                                var64004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var64006 = var64006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _3598 = mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _3598
                                                                                                if arg1 < stor3.length:
                                                                                                    var64003 = var64003 + 1
                                                                                                    var64004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var64006 = _3598
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1084) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var64003]))
                                                                                staticcall address(stor3[arg1 + var64003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1396, Array(len=stor2[arg1].field_0, data=mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3865 = mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32
                                                                                require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 <= 4294967296
                                                                                require mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1396) >> 32 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3910 = mem[_3865 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3865 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3865 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3865 + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3910) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var64006 > mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var64006
                                                                                            if arg1 < stor3.length:
                                                                                                var64003 = var64003 + 1
                                                                                                var64004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var64006 = var64006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _4252 = mem[(32 * mem[(32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _4252
                                                                                                if arg1 < stor3.length:
                                                                                                    var64003 = var64003 + 1
                                                                                                    var64004 = (32 * _1084) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var64006 = _4252
                                                                                                    continue 
                                    else:
                                        mem[0] = sha3(1) + arg1
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor1[arg1].field_0
                                        idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                        s = 0
                                        while (64 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 > idx + 32:
                                            mem[idx + 32] = stor1[arg1 + s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(stor3[arg1 + var37003]))
                                        staticcall address(stor3[arg1 + var37003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor1[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor1[arg1].field_0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1701 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1768 = mem[_1701 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1701 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1701 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1701 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var37007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var37003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var37003 = var37003 + 1
                                                            var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var37007 = var37007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var62003 >= uint256(stor3[arg1]):
                                                                return var62006
                                                            if arg1 < stor3.length:
                                                                if var66003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var37007
                                                                        mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var66003]))
                                                                            staticcall address(stor3[arg1 + var66003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3911 = mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3965 = mem[_3911 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3911 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3911 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3911 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3965) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var66006 > mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var66006
                                                                                        if arg1 < stor3.length:
                                                                                            var66003 = var66003 + 1
                                                                                            var66004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var66006 = var66006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _3965) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _3965) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var66003 = var66003 + 1
                                                                                                var66004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var66006 = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1768) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var66003]))
                                                                            staticcall address(stor3[arg1 + var66003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _4379 = mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _4401 = mem[_4379 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4379 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4379 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4379 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _4401) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var66006 > mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var66006
                                                                                        if arg1 < stor3.length:
                                                                                            var66003 = var66003 + 1
                                                                                            var66004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var66006 = var66006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _4401) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _4401) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var66003 = var66003 + 1
                                                                                                var66004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var66006 = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _2242 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var37003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var37003 = var37003 + 1
                                                                var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var37007 = _2242
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var64003 >= uint256(stor3[arg1]):
                                                                    return var64006
                                                                if arg1 < stor3.length:
                                                                    if var68003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _2242
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var68003]))
                                                                                staticcall address(stor3[arg1 + var68003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2242, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3913 = mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32
                                                                                require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 <= 4294967296
                                                                                require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3966 = mem[_3913 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3913 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3913 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3913 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3966) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var68006 > mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var68006
                                                                                            if arg1 < stor3.length:
                                                                                                var68003 = var68003 + 1
                                                                                                var68004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var68006 = var68006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _3966) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _3966) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var68003 = var68003 + 1
                                                                                                    var68004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var68006 = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1768) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var68003]))
                                                                                staticcall address(stor3[arg1 + var68003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2242, Array(len=stor2[arg1].field_0, data=mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _4381 = mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32
                                                                                require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 <= 4294967296
                                                                                require mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2242) >> 32 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _4402 = mem[_4381 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4381 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4381 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4381 + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _4402) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var68006 > mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var68006
                                                                                            if arg1 < stor3.length:
                                                                                                var68003 = var68003 + 1
                                                                                                var68004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var68006 = var68006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _4402) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _4402) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var68003 = var68003 + 1
                                                                                                    var68004 = (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var68006 = mem[(32 * mem[(32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1768) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
            else:
                if arg1 < stor3.length:
                    if var32003 >= uint256(stor3[arg1]):
                        if arg1 < stor3.length:
                            if var37003 >= uint256(stor3[arg1]):
                                return var37006
                            if arg1 < stor3.length:
                                if var41003 < uint256(stor3[arg1]):
                                    if arg1 < stor2.length:
                                        mem[0] = 2
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = var32007
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor2[arg1].field_0
                                        if not stor2[arg1].field_0:
                                            require ext_code.size(address(stor3[arg1 + var41003]))
                                            staticcall address(stor3[arg1 + var41003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var32007, 64, stor2[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _1755 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _1807 = mem[_1755 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1755 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1755 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1755 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _1807) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var41006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var41003 + 1 >= uint256(stor3[arg1]):
                                                            return var41006
                                                        if arg1 < stor3.length:
                                                            var41003 = var41003 + 1
                                                            var41004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var41006 = var41006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _2231 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var41003 + 1 >= uint256(stor3[arg1]):
                                                                return _2231
                                                            if arg1 < stor3.length:
                                                                var41003 = var41003 + 1
                                                                var41004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var41006 = _2231
                                                                continue 
                                        else:
                                            mem[0] = sha3(2) + arg1
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor2[arg1].field_0
                                            idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                            s = 0
                                            while (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + 260 > idx + 32:
                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(address(stor3[arg1 + var41003]))
                                            staticcall address(stor3[arg1 + var41003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var32007, Array(len=stor2[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor2[arg1].field_0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _2647 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var32007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _2739 = mem[_2647 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_2647 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_2647 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_2647 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _2739) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var41006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var41003 + 1 >= uint256(stor3[arg1]):
                                                            return var41006
                                                        if arg1 < stor3.length:
                                                            var41003 = var41003 + 1
                                                            var41004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var41006 = var41006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _3163 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var41003 + 1 >= uint256(stor3[arg1]):
                                                                return _3163
                                                            if arg1 < stor3.length:
                                                                var41003 = var41003 + 1
                                                                var41004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var41006 = _3163
                                                                continue 
                    else:
                        if arg1 < stor3.length:
                            if var36003 < uint256(stor3[arg1]):
                                if arg1 < stor1.length:
                                    mem[0] = 1
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = arg2
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor1[arg1].field_0
                                    if not stor1[arg1].field_0:
                                        require ext_code.size(address(stor3[arg1 + var36003]))
                                        staticcall address(stor3[arg1 + var36003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, 64, stor1[arg1].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1059 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1083 = mem[_1059 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1059 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1059 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1059 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var36007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var36003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var36003 = var36003 + 1
                                                            var36005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var36007 = var36007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var57003 >= uint256(stor3[arg1]):
                                                                return var57006
                                                            if arg1 < stor3.length:
                                                                if var61003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[0] = 2
                                                                        mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var36007
                                                                        mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var61003]))
                                                                            staticcall address(stor3[arg1 + var61003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var36007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3211 = mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32
                                                                            require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3273 = mem[_3211 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3211 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3211 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3211 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3273) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var61006 > mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var61003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var61006
                                                                                        if arg1 < stor3.length:
                                                                                            var61003 = var61003 + 1
                                                                                            var61004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var61006 = var61006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var61003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _3273) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _3273) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var61003 = var61003 + 1
                                                                                                var61004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var61006 = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1083) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var61003]))
                                                                            staticcall address(stor3[arg1 + var61003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var36007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3855 = mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32
                                                                            require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3903 = mem[_3855 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3855 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3855 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3855 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3903) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var61006 > mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var61003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var61006
                                                                                        if arg1 < stor3.length:
                                                                                            var61003 = var61003 + 1
                                                                                            var61004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var61006 = var61006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var61003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _3903) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _3903) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var61003 = var61003 + 1
                                                                                                var61004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var61006 = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _1393 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var36003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var36003 = var36003 + 1
                                                                var36005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var36007 = _1393
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var59003 >= uint256(stor3[arg1]):
                                                                    return var59006
                                                                if arg1 < stor3.length:
                                                                    if var63003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[0] = 2
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _1393
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var63003]))
                                                                                staticcall address(stor3[arg1 + var63003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1393, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3213 = mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32
                                                                                require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 <= 4294967296
                                                                                require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3274 = mem[_3213 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3213 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3213 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3213 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3274) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var63006 > mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var63006
                                                                                            if arg1 < stor3.length:
                                                                                                var63003 = var63003 + 1
                                                                                                var63004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var63006 = var63006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _3274) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _3274) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var63003 = var63003 + 1
                                                                                                    var63004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var63006 = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1083) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var63003]))
                                                                                staticcall address(stor3[arg1 + var63003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1393, Array(len=stor2[arg1].field_0, data=mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3857 = mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32
                                                                                require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 <= 4294967296
                                                                                require mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1393) >> 32 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3904 = mem[_3857 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3857 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3857 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3857 + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3904) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var63006 > mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var63006
                                                                                            if arg1 < stor3.length:
                                                                                                var63003 = var63003 + 1
                                                                                                var63004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var63006 = var63006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _3904) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _3904) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var63003 = var63003 + 1
                                                                                                    var63004 = (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var63006 = mem[(32 * mem[(32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1083) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
                                    else:
                                        mem[0] = sha3(1) + arg1
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor1[arg1].field_0
                                        idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                        s = 0
                                        while (64 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 > idx + 32:
                                            mem[idx + 32] = stor1[arg1 + s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(stor3[arg1 + var36003]))
                                        staticcall address(stor3[arg1 + var36003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor1[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor1[arg1].field_0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1691 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1761 = mem[_1691 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1691 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1691 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1691 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var36007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var36003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var36003 = var36003 + 1
                                                            var36005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var36007 = var36007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var61003 >= uint256(stor3[arg1]):
                                                                return var61006
                                                            if arg1 < stor3.length:
                                                                if var65003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[0] = 2
                                                                        mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var36007
                                                                        mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var65003]))
                                                                            staticcall address(stor3[arg1 + var65003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var36007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3905 = mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32
                                                                            require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3961 = mem[_3905 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3905 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3905 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3905 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3961) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var65006 > mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var65006
                                                                                        if arg1 < stor3.length:
                                                                                            var65003 = var65003 + 1
                                                                                            var65004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var65006 = var65006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _4249 = mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _4249
                                                                                            if arg1 < stor3.length:
                                                                                                var65003 = var65003 + 1
                                                                                                var65004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var65006 = _4249
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1761) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var65003]))
                                                                            staticcall address(stor3[arg1 + var65003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var36007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _4375 = mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32
                                                                            require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var36007) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _4399 = mem[_4375 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4375 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4375 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4375 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _4399) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var65006 > mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var65006
                                                                                        if arg1 < stor3.length:
                                                                                            var65003 = var65003 + 1
                                                                                            var65004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var65006 = var65006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _4559 = mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _4559
                                                                                            if arg1 < stor3.length:
                                                                                                var65003 = var65003 + 1
                                                                                                var65004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var65006 = _4559
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _2236 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var36003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var36003 = var36003 + 1
                                                                var36005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var36007 = _2236
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var63003 >= uint256(stor3[arg1]):
                                                                    return var63006
                                                                if arg1 < stor3.length:
                                                                    if var67003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[0] = 2
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _2236
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var67003]))
                                                                                staticcall address(stor3[arg1 + var67003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2236, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3907 = mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32
                                                                                require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 <= 4294967296
                                                                                require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3962 = mem[_3907 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3907 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3907 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3907 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3962) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var67006 > mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var67006
                                                                                            if arg1 < stor3.length:
                                                                                                var67003 = var67003 + 1
                                                                                                var67004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var67006 = var67006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _4250 = mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _4250
                                                                                                if arg1 < stor3.length:
                                                                                                    var67003 = var67003 + 1
                                                                                                    var67004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var67006 = _4250
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1761) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var67003]))
                                                                                staticcall address(stor3[arg1 + var67003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2236, Array(len=stor2[arg1].field_0, data=mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _4377 = mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32
                                                                                require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 <= 4294967296
                                                                                require mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2236) >> 32 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _4400 = mem[_4377 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4377 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4377 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4377 + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _4400) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var67006 > mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var67006
                                                                                            if arg1 < stor3.length:
                                                                                                var67003 = var67003 + 1
                                                                                                var67004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var67006 = var67006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _4560 = mem[(32 * mem[(32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _4560
                                                                                                if arg1 < stor3.length:
                                                                                                    var67003 = var67003 + 1
                                                                                                    var67004 = (32 * _1761) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var67006 = _4560
                                                                                                    continue 
    else:
        mem[128 len 32 * stor1[arg1].field_0] = call.data[calldata.size len 32 * stor1[arg1].field_0]
        if arg1 < stor2.length:
            require stor2[arg1].field_0 <= test266151307()
            mem[(32 * stor1[arg1].field_0) + 128] = stor2[arg1].field_0
            if not stor2[arg1].field_0:
                if arg1 < stor3.length:
                    if var33003 >= uint256(stor3[arg1]):
                        if arg1 < stor3.length:
                            if var38003 >= uint256(stor3[arg1]):
                                return var38006
                            if arg1 < stor3.length:
                                if var42003 < uint256(stor3[arg1]):
                                    if arg1 < stor2.length:
                                        mem[0] = 2
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = var33007
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor2[arg1].field_0
                                        if not stor2[arg1].field_0:
                                            require ext_code.size(address(stor3[arg1 + var42003]))
                                            staticcall address(stor3[arg1 + var42003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var33007, 64, stor2[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _1769 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _1819 = mem[_1769 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1769 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1769 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1769 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _1819) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var42006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var42003 + 1 >= uint256(stor3[arg1]):
                                                            return var42006
                                                        if arg1 < stor3.length:
                                                            var42003 = var42003 + 1
                                                            var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var42006 = var42006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _2243 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var42003 + 1 >= uint256(stor3[arg1]):
                                                                return _2243
                                                            if arg1 < stor3.length:
                                                                var42003 = var42003 + 1
                                                                var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var42006 = _2243
                                                                continue 
                                        else:
                                            mem[0] = sha3(2) + arg1
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor2[arg1].field_0
                                            idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                            s = 0
                                            while (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + 260 > idx + 32:
                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(address(stor3[arg1 + var42003]))
                                            staticcall address(stor3[arg1 + var42003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var33007, Array(len=stor2[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor2[arg1].field_0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _2671 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var33007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _2753 = mem[_2671 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_2671 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_2671 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_2671 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _2753) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var42006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var42003 + 1 >= uint256(stor3[arg1]):
                                                            return var42006
                                                        if arg1 < stor3.length:
                                                            var42003 = var42003 + 1
                                                            var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var42006 = var42006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _3173 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var42003 + 1 >= uint256(stor3[arg1]):
                                                                return _3173
                                                            if arg1 < stor3.length:
                                                                var42003 = var42003 + 1
                                                                var42004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var42006 = _3173
                                                                continue 
                    else:
                        if arg1 < stor3.length:
                            if var37003 < uint256(stor3[arg1]):
                                if arg1 < stor1.length:
                                    mem[0] = 1
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = arg2
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor1[arg1].field_0
                                    if not stor1[arg1].field_0:
                                        require ext_code.size(address(stor3[arg1 + var37003]))
                                        staticcall address(stor3[arg1 + var37003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, 64, stor1[arg1].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1063 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1085 = mem[_1063 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1063 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1063 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1063 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var37007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var37003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var37003 = var37003 + 1
                                                            var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var37007 = var37007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var58003 >= uint256(stor3[arg1]):
                                                                return var58006
                                                            if arg1 < stor3.length:
                                                                if var62003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[0] = 2
                                                                        mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var37007
                                                                        mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var62003]))
                                                                            staticcall address(stor3[arg1 + var62003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3219 = mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3281 = mem[_3219 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3219 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3219 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3219 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3281) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var62006 > mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var62006
                                                                                        if arg1 < stor3.length:
                                                                                            var62003 = var62003 + 1
                                                                                            var62004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var62006 = var62006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _3603 = mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _3603
                                                                                            if arg1 < stor3.length:
                                                                                                var62003 = var62003 + 1
                                                                                                var62004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var62006 = _3603
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1085) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var62003]))
                                                                            staticcall address(stor3[arg1 + var62003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3871 = mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3915 = mem[_3871 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3871 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3871 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3871 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3915) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var62006 > mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var62006
                                                                                        if arg1 < stor3.length:
                                                                                            var62003 = var62003 + 1
                                                                                            var62004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var62006 = var62006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _4255 = mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var62003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _4255
                                                                                            if arg1 < stor3.length:
                                                                                                var62003 = var62003 + 1
                                                                                                var62004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var62006 = _4255
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _1399 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var37003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var37003 = var37003 + 1
                                                                var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var37007 = _1399
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var60003 >= uint256(stor3[arg1]):
                                                                    return var60006
                                                                if arg1 < stor3.length:
                                                                    if var64003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[0] = 2
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _1399
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var64003]))
                                                                                staticcall address(stor3[arg1 + var64003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1399, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3221 = mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32
                                                                                require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 <= 4294967296
                                                                                require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3282 = mem[_3221 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3221 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3221 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3221 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3282) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var64006 > mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var64006
                                                                                            if arg1 < stor3.length:
                                                                                                var64003 = var64003 + 1
                                                                                                var64004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var64006 = var64006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _3604 = mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _3604
                                                                                                if arg1 < stor3.length:
                                                                                                    var64003 = var64003 + 1
                                                                                                    var64004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var64006 = _3604
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1085) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var64003]))
                                                                                staticcall address(stor3[arg1 + var64003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1399, Array(len=stor2[arg1].field_0, data=mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3873 = mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32
                                                                                require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 <= 4294967296
                                                                                require mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1399) >> 32 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3916 = mem[_3873 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3873 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3873 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3873 + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3916) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var64006 > mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var64006
                                                                                            if arg1 < stor3.length:
                                                                                                var64003 = var64003 + 1
                                                                                                var64004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var64006 = var64006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _4256 = mem[(32 * mem[(32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var64003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _4256
                                                                                                if arg1 < stor3.length:
                                                                                                    var64003 = var64003 + 1
                                                                                                    var64004 = (32 * _1085) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var64006 = _4256
                                                                                                    continue 
                                    else:
                                        mem[0] = sha3(1) + arg1
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor1[arg1].field_0
                                        idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                        s = 0
                                        while (64 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 > idx + 32:
                                            mem[idx + 32] = stor1[arg1 + s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(stor3[arg1 + var37003]))
                                        staticcall address(stor3[arg1 + var37003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor1[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor1[arg1].field_0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1711 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1775 = mem[_1711 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1711 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1711 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1711 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var37007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var37003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var37003 = var37003 + 1
                                                            var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var37007 = var37007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var62003 >= uint256(stor3[arg1]):
                                                                return var62006
                                                            if arg1 < stor3.length:
                                                                if var66003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var37007
                                                                        mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var66003]))
                                                                            staticcall address(stor3[arg1 + var66003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3917 = mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3969 = mem[_3917 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3917 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3917 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3917 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3969) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var66006 > mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var66006
                                                                                        if arg1 < stor3.length:
                                                                                            var66003 = var66003 + 1
                                                                                            var66004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var66006 = var66006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _3969) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _3969) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var66003 = var66003 + 1
                                                                                                var66004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var66006 = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1775) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var66003]))
                                                                            staticcall address(stor3[arg1 + var66003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var37007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _4383 = mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32
                                                                            require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var37007) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _4403 = mem[_4383 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4383 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4383 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4383 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _4403) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var66006 > mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var66006
                                                                                        if arg1 < stor3.length:
                                                                                            var66003 = var66003 + 1
                                                                                            var66004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var66006 = var66006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var66003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _4403) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _4403) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var66003 = var66003 + 1
                                                                                                var66004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var66006 = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _2248 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var37003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var37003 = var37003 + 1
                                                                var37005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var37007 = _2248
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var64003 >= uint256(stor3[arg1]):
                                                                    return var64006
                                                                if arg1 < stor3.length:
                                                                    if var68003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _2248
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var68003]))
                                                                                staticcall address(stor3[arg1 + var68003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2248, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3919 = mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32
                                                                                require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 <= 4294967296
                                                                                require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3970 = mem[_3919 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3919 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3919 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3919 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3970) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var68006 > mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var68006
                                                                                            if arg1 < stor3.length:
                                                                                                var68003 = var68003 + 1
                                                                                                var68004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var68006 = var68006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _3970) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _3970) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var68003 = var68003 + 1
                                                                                                    var68004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var68006 = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1775) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var68003]))
                                                                                staticcall address(stor3[arg1 + var68003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2248, Array(len=stor2[arg1].field_0, data=mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _4385 = mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32
                                                                                require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 <= 4294967296
                                                                                require mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2248) >> 32 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _4404 = mem[_4385 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4385 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4385 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4385 + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _4404) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var68006 > mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var68006
                                                                                            if arg1 < stor3.length:
                                                                                                var68003 = var68003 + 1
                                                                                                var68004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var68006 = var68006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var68003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _4404) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _4404) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var68003 = var68003 + 1
                                                                                                    var68004 = (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var68006 = mem[(32 * mem[(32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1775) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
            else:
                mem[(32 * stor1[arg1].field_0) + 160 len 32 * stor2[arg1].field_0] = call.data[calldata.size len 32 * stor2[arg1].field_0]
                if arg1 < stor3.length:
                    if var34003 >= uint256(stor3[arg1]):
                        if arg1 < stor3.length:
                            if var39003 >= uint256(stor3[arg1]):
                                return var39006
                            if arg1 < stor3.length:
                                if var43003 < uint256(stor3[arg1]):
                                    if arg1 < stor2.length:
                                        mem[0] = 2
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = var34007
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor2[arg1].field_0
                                        if not stor2[arg1].field_0:
                                            require ext_code.size(address(stor3[arg1 + var43003]))
                                            staticcall address(stor3[arg1 + var43003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var34007, 64, stor2[arg1].field_0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _1776 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _1825 = mem[_1776 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1776 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1776 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1776 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _1825) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var43006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var43003 + 1 >= uint256(stor3[arg1]):
                                                            return var43006
                                                        if arg1 < stor3.length:
                                                            var43003 = var43003 + 1
                                                            var43004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var43006 = var43006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _2249 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var43003 + 1 >= uint256(stor3[arg1]):
                                                                return _2249
                                                            if arg1 < stor3.length:
                                                                var43003 = var43003 + 1
                                                                var43004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var43006 = _2249
                                                                continue 
                                        else:
                                            mem[0] = sha3(2) + arg1
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor2[arg1].field_0
                                            idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                            s = 0
                                            while (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + 260 > idx + 32:
                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(address(stor3[arg1 + var43003]))
                                            staticcall address(stor3[arg1 + var43003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args var34007, Array(len=stor2[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor2[arg1].field_0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                            require return_data.size >= 32
                                            _2683 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 <= 4294967296
                                            require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + 32 <= return_data.size
                                            require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, var34007) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            _2760 = mem[_2683 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                            mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_2683 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_2683 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_2683 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                            mem[64] = (32 * _2760) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                            if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                if var43006 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var43003 + 1 >= uint256(stor3[arg1]):
                                                            return var43006
                                                        if arg1 < stor3.length:
                                                            var43003 = var43003 + 1
                                                            var43004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var43006 = var43006
                                                            continue 
                                                else:
                                                    if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                        _3178 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                        if arg1 < stor3.length:
                                                            mem[0] = 3
                                                            if var43003 + 1 >= uint256(stor3[arg1]):
                                                                return _3178
                                                            if arg1 < stor3.length:
                                                                var43003 = var43003 + 1
                                                                var43004 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var43006 = _3178
                                                                continue 
                    else:
                        if arg1 < stor3.length:
                            if var38003 < uint256(stor3[arg1]):
                                if arg1 < stor1.length:
                                    mem[0] = 1
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 164] = arg2
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 196] = 64
                                    mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 228] = stor1[arg1].field_0
                                    if not stor1[arg1].field_0:
                                        require ext_code.size(address(stor3[arg1 + var38003]))
                                        staticcall address(stor3[arg1 + var38003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, 64, stor1[arg1].field_0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1065 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1086 = mem[_1065 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1065 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1065 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1065 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var38007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var38003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var38003 = var38003 + 1
                                                            var38005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var38007 = var38007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var59003 >= uint256(stor3[arg1]):
                                                                return var59006
                                                            if arg1 < stor3.length:
                                                                if var63003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var38007
                                                                        mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var63003]))
                                                                            staticcall address(stor3[arg1 + var63003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var38007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3223 = mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32
                                                                            require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3285 = mem[_3223 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3223 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3223 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3223 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3285) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var63006 > mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var63006
                                                                                        if arg1 < stor3.length:
                                                                                            var63003 = var63003 + 1
                                                                                            var63004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var63006 = var63006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _3285) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _3285) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var63003 = var63003 + 1
                                                                                                var63004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var63006 = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1086) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var63003]))
                                                                            staticcall address(stor3[arg1 + var63003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var38007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3879 = mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32
                                                                            require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3921 = mem[_3879 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3879 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3879 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3879 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3921) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var63006 > mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var63006
                                                                                        if arg1 < stor3.length:
                                                                                            var63003 = var63003 + 1
                                                                                            var63004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var63006 = var63006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var63003 + 1 >= uint256(stor3[arg1]):
                                                                                                mem[(32 * _3921) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                return memory
                                                                                                  from (32 * _3921) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                   len 32
                                                                                            if arg1 < stor3.length:
                                                                                                var63003 = var63003 + 1
                                                                                                var63004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var63006 = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _1402 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var38003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var38003 = var38003 + 1
                                                                var38005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var38007 = _1402
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var61003 >= uint256(stor3[arg1]):
                                                                    return var61006
                                                                if arg1 < stor3.length:
                                                                    if var65003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _1402
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var65003]))
                                                                                staticcall address(stor3[arg1 + var65003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1402, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3225 = mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32
                                                                                require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 <= 4294967296
                                                                                require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3286 = mem[_3225 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3225 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3225 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3225 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3286) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var65006 > mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var65006
                                                                                            if arg1 < stor3.length:
                                                                                                var65003 = var65003 + 1
                                                                                                var65004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var65006 = var65006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _3286) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _3286) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var65003 = var65003 + 1
                                                                                                    var65004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var65006 = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1086) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var65003]))
                                                                                staticcall address(stor3[arg1 + var65003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1402, Array(len=stor2[arg1].field_0, data=mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3881 = mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32
                                                                                require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 <= 4294967296
                                                                                require mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1402) >> 32 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3922 = mem[_3881 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3881 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3881 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3881 + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3922) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var65006 > mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var65006
                                                                                            if arg1 < stor3.length:
                                                                                                var65003 = var65003 + 1
                                                                                                var65004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var65006 = var65006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var65003 + 1 >= uint256(stor3[arg1]):
                                                                                                    mem[(32 * _3922) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    return memory
                                                                                                      from (32 * _3922) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                                       len 32
                                                                                                if arg1 < stor3.length:
                                                                                                    var65003 = var65003 + 1
                                                                                                    var65004 = (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var65006 = mem[(32 * mem[(32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1086) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                                    continue 
                                    else:
                                        mem[0] = sha3(1) + arg1
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260] = stor1[arg1].field_0
                                        idx = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260
                                        s = 0
                                        while (64 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 > idx + 32:
                                            mem[idx + 32] = stor1[arg1 + s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(stor3[arg1 + var38003]))
                                        staticcall address(stor3[arg1 + var38003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor1[arg1].field_0, data=mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 260 len 32 * stor1[arg1].field_0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        _1721 = mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                        require mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                        require mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160] <= 4294967296 and mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]) + 32 <= return_data.size
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] = mem[mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        _1782 = mem[_1721 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160]
                                        mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len floor32(mem[_1721 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])] = mem[_1721 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 192 len floor32(mem[_1721 + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + 160])]
                                        mem[64] = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192
                                        if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                            if var38007 > mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]:
                                                if arg1 < stor3.length:
                                                    mem[0] = 3
                                                    if var38003 + 1 < uint256(stor3[arg1]):
                                                        if arg1 < stor3.length:
                                                            var38003 = var38003 + 1
                                                            var38005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                            var38007 = var38007
                                                            continue 
                                                    else:
                                                        if arg1 < stor3.length:
                                                            if var63003 >= uint256(stor3[arg1]):
                                                                return var63006
                                                            if arg1 < stor3.length:
                                                                if var67003 < uint256(stor3[arg1]):
                                                                    if arg1 < stor2.length:
                                                                        mem[0] = 2
                                                                        mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = var38007
                                                                        mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                        mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                        if not stor2[arg1].field_0:
                                                                            require ext_code.size(address(stor3[arg1 + var67003]))
                                                                            staticcall address(stor3[arg1 + var67003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var38007, 64, stor2[arg1].field_0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _3923 = mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32
                                                                            require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _3973 = mem[_3923 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3923 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3923 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3923 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _3973) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var67006 > mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var67006
                                                                                        if arg1 < stor3.length:
                                                                                            var67003 = var67003 + 1
                                                                                            var67004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var67006 = var67006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _4261 = mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _4261
                                                                                            if arg1 < stor3.length:
                                                                                                var67003 = var67003 + 1
                                                                                                var67004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var67006 = _4261
                                                                                                continue 
                                                                        else:
                                                                            mem[0] = sha3(2) + arg1
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                            idx = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                            s = 0
                                                                            while (32 * _1782) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            require ext_code.size(address(stor3[arg1 + var67003]))
                                                                            staticcall address(stor3[arg1 + var67003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args var38007, Array(len=stor2[arg1].field_0, data=mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            mem[64] = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                            require return_data.size >= 32
                                                                            _4387 = mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32
                                                                            require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 <= 4294967296
                                                                            require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + 32 <= return_data.size
                                                                            require mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, var38007) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            _4405 = mem[_4387 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4387 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4387 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4387 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                            mem[64] = (32 * _4405) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                            if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                if var67006 > mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                    if arg1 < stor3.length:
                                                                                        mem[0] = 3
                                                                                        if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                            return var67006
                                                                                        if arg1 < stor3.length:
                                                                                            var67003 = var67003 + 1
                                                                                            var67004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                            var67006 = var67006
                                                                                            continue 
                                                                                else:
                                                                                    if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                        _4565 = mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var67003 + 1 >= uint256(stor3[arg1]):
                                                                                                return _4565
                                                                                            if arg1 < stor3.length:
                                                                                                var67003 = var67003 + 1
                                                                                                var67004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var67006 = _4565
                                                                                                continue 
                                            else:
                                                if mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1 < mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160]:
                                                    _2254 = mem[(32 * mem[(32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160] - 1) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                    if arg1 < stor3.length:
                                                        mem[0] = 3
                                                        if var38003 + 1 < uint256(stor3[arg1]):
                                                            if arg1 < stor3.length:
                                                                var38003 = var38003 + 1
                                                                var38005 = (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 160
                                                                var38007 = _2254
                                                                continue 
                                                        else:
                                                            if arg1 < stor3.length:
                                                                if var65003 >= uint256(stor3[arg1]):
                                                                    return var65006
                                                                if arg1 < stor3.length:
                                                                    if var69003 < uint256(stor3[arg1]):
                                                                        if arg1 < stor2.length:
                                                                            mem[0] = 2
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 196] = _2254
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 228] = 64
                                                                            mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 260] = stor2[arg1].field_0
                                                                            if not stor2[arg1].field_0:
                                                                                require ext_code.size(address(stor3[arg1 + var69003]))
                                                                                staticcall address(stor3[arg1 + var69003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2254, 64, stor2[arg1].field_0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _3925 = mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32
                                                                                require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 <= 4294967296
                                                                                require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _3974 = mem[_3925 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_3925 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_3925 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_3925 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _3974) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var69006 > mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var69003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var69006
                                                                                            if arg1 < stor3.length:
                                                                                                var69003 = var69003 + 1
                                                                                                var69004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var69006 = var69006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _4262 = mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var69003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _4262
                                                                                                if arg1 < stor3.length:
                                                                                                    var69003 = var69003 + 1
                                                                                                    var69004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var69006 = _4262
                                                                                                    continue 
                                                                            else:
                                                                                mem[0] = sha3(2) + arg1
                                                                                mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292] = stor2[arg1].field_0
                                                                                idx = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292
                                                                                s = 0
                                                                                while (32 * _1782) + (32 * stor1[arg1].field_0) + (64 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 > idx + 32:
                                                                                    mem[idx + 32] = stor2[arg1 + s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                require ext_code.size(address(stor3[arg1 + var69003]))
                                                                                staticcall address(stor3[arg1 + var69003]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args _2254, Array(len=stor2[arg1].field_0, data=mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 292 len 32 * stor2[arg1].field_0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                require return_data.size >= 32
                                                                                _4389 = mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32
                                                                                require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 <= 4294967296
                                                                                require mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + 32 <= return_data.size
                                                                                require mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                                                                                mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _2254) >> 32 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                _4406 = mem[_4389 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192]
                                                                                mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_4389 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])] = mem[_4389 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 224 len floor32(mem[_4389 + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + ceil32(return_data.size) + 192])]
                                                                                mem[64] = (32 * _4406) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224
                                                                                if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                    if var69006 > mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]:
                                                                                        if arg1 < stor3.length:
                                                                                            mem[0] = 3
                                                                                            if var69003 + 1 >= uint256(stor3[arg1]):
                                                                                                return var69006
                                                                                            if arg1 < stor3.length:
                                                                                                var69003 = var69003 + 1
                                                                                                var69004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                var69006 = var69006
                                                                                                continue 
                                                                                    else:
                                                                                        if mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192]:
                                                                                            _4566 = mem[(32 * mem[(32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 224]
                                                                                            if arg1 < stor3.length:
                                                                                                mem[0] = 3
                                                                                                if var69003 + 1 >= uint256(stor3[arg1]):
                                                                                                    return _4566
                                                                                                if arg1 < stor3.length:
                                                                                                    var69003 = var69003 + 1
                                                                                                    var69004 = (32 * _1782) + (32 * stor1[arg1].field_0) + (32 * stor2[arg1].field_0) + (2 * ceil32(return_data.size)) + 192
                                                                                                    var69006 = _4566
                                                                                                    continue 
    revert
}



}
