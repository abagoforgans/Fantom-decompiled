contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - polyZapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1750699e(?)
#  - complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - polydexCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_39815037(?)
#  - jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_5d7d72db(?)
#  - sub_61987d16(?)
#  - sub_66ec9fb8(?)
#  - BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_78b94ae6(?)
#  - sub_801d49f8(?)
#  - sub_813029ee(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_87c26197(?)
#  - sub_8955316a(?)
#  - sub_8d07fe0d(?)
#  - sub_9bdb3b48(?)
#  - swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_b792a49d(?)
#  - sub_bb4d259f(?)
#  - apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_c0fc3ce6(?)
#  - sub_c45c35e1(?)
#  - sub_cb0f5aba(?)
#  - sub_cdc84872(?)
#  - sub_d053452f(?)
#  - sub_d9f7cd9e(?)
#  - sub_e3102c02(?)
#  - sub_f0cc0646(?)
#  - sub_fd5cc49d(?)
#  - sub_ffcd3013(?)
#
address owner;
address operatorAddress;
address stor2;
address stor3;

function operator() {
    return operatorAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_65968173(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'not operator'
    if not arg1:
        revert with 0, 'BAD NEW OPERATOR!'
    stor2 = arg1
    emit 0xf5aa4a25: stor2, arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor3 != arg1:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
    else:
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if stor3 != arg1:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
    else:
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if stor3 != arg1:
            require ext_code.size(arg1)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
        else:
            require ext_code.size(stor3)
            call stor3.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_a623fb63(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 2
    require 0 < arg4.length
    mem[(32 * arg4.length) + 160] = mem[140 len 20]
    require 1 < arg4.length
    mem[(32 * arg4.length) + 192] = mem[172 len 20]
    if not arg2:
        mem[(32 * arg4.length) + 224] = 2
        mem[(32 * arg4.length) + 256 len 64] = call.data[calldata.size len 64]
        mem[(32 * arg4.length) + 288] = arg1
        idx = 1
        while idx:
            require idx - 1 < 2
            require idx < 2
            _408 = mem[(32 * idx) + (32 * arg4.length) + 160]
            if mem[(32 * idx - 1) + (32 * arg4.length) + 172 len 20] == mem[(32 * idx) + (32 * arg4.length) + 172 len 20]:
                revert with 0, 
                            32,
                            40,
                            0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                            mem[(32 * arg4.length) + 428 len 24]
            if mem[(32 * idx - 1) + (32 * arg4.length) + 172 len 20] < mem[(32 * idx) + (32 * arg4.length) + 172 len 20]:
                if not mem[(32 * idx - 1) + (32 * arg4.length) + 172 len 20]:
                    revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[(32 * arg4.length) + 421 len 31]
                require ext_code.size(arg3)
                staticcall arg3.getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + 320 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg4.length) + 224]
                if mem[(32 * idx) + (32 * arg4.length) + 256] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg4.length) + 435 len 17]
                if mem[(32 * idx - 1) + (32 * arg4.length) + 172 len 20] == mem[(32 * idx - 1) + (32 * arg4.length) + 172 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + 224]
                        mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + 224]
                        mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
            else:
                if not mem[(32 * idx) + (32 * arg4.length) + 172 len 20]:
                    revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[(32 * arg4.length) + 421 len 31]
                require ext_code.size(arg3)
                staticcall arg3.getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + 320 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg4.length) + 224]
                if mem[(32 * idx) + (32 * arg4.length) + 256] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg4.length) + 435 len 17]
                if address(_408) == mem[(32 * idx - 1) + (32 * arg4.length) + 172 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + 224]
                        mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + 431 len 21]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + 224]
                        mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + 256]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + 256] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + 256] != 997:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg4.length) + 421 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + 224]
                            mem[(32 * idx - 1) + (32 * arg4.length) + 256] = (1000 * mem[(32 * idx) + (32 * arg4.length) + 256] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + 256])) + 1
            idx = idx - 1
            continue 
        if 0 < mem[(32 * arg4.length) + 224]:
            return memory
              from (32 * arg4.length) + 256
               len 32
        revert
    mem[(32 * arg4.length) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 228] = arg1
    mem[(32 * arg4.length) + 260] = 64
    mem[(32 * arg4.length) + 292] = 2
    mem[(32 * arg4.length) + 324 len 0] = None
    require ext_code.size(arg2)
    staticcall arg2.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[(32 * arg4.length) + 324 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _410 = mem[(32 * arg4.length) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg4.length) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[(32 * arg4.length) + mem[(32 * arg4.length) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[(32 * arg4.length) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * arg4.length) + mem[(32 * arg4.length) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * arg4.length) + ceil32(return_data.size) + 224] = mem[(32 * arg4.length) + mem[(32 * arg4.length) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    _421 = mem[(32 * arg4.length) + _410 + 224]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg4.length) + _410 + 224])] = mem[(32 * arg4.length) + _410 + 256 len floor32(mem[(32 * arg4.length) + _410 + 224])]
    require 0 < mem[(32 * arg4.length) + ceil32(return_data.size) + 224]
    mem[(32 * _421) + (32 * arg4.length) + ceil32(return_data.size) + 256] = mem[(32 * arg4.length) + ceil32(return_data.size) + 256]
    return memory
      from (32 * _421) + (32 * arg4.length) + ceil32(return_data.size) + 256
       len 32
}

function sub_a8df1e85(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 0
    if arg6.length <= 0:
        require 0 < arg5.length
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 2
        require 0 < arg4.length
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = mem[140 len 20]
        require 1 < arg4.length
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = mem[172 len 20]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = 2
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320 len 64] = call.data[calldata.size len 64]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 352] = arg1
        idx = 1
        while idx:
            require idx - 1 < 2
            require idx < 2
            _2556 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224]
            if mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20] == mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                revert with 0, 
                            32,
                            40,
                            0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 492 len 24]
            if mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20] < mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                if not mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                require ext_code.size(mem[(32 * arg4.length) + 172 len 20])
                staticcall mem[(32 * arg4.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 499 len 17]
                if mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20] == mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
            else:
                if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                require ext_code.size(mem[(32 * arg4.length) + 172 len 20])
                staticcall mem[(32 * arg4.length) + 172 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 499 len 17]
                if address(_2556) == mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
            idx = idx - 1
            continue 
        require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        _2555 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = 2
        mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 480
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416 len 64] = call.data[calldata.size len 64]
        idx = 1
        s = arg1
        while idx < arg5.length:
            require idx < mem[96]
            require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = mem[(32 * idx) + 140 len 20]
            require idx + 1 < mem[96]
            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 448] = mem[(32 * idx + 1) + 140 len 20]
            require idx < mem[(32 * arg4.length) + 128]
            _5081 = mem[(32 * idx) + (32 * arg4.length) + 160]
            if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] < 2:
                revert with 0, 32, 33, 0x73556e697377617056324c6962726172794f75723a20494e56414c49445f504154, mem[mem[64] + 101 len 31]
            _5122 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] <= test266151307()
            _5132 = mem[64]
            mem[mem[64]] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[64] = mem[64] + (32 * _5122) + 32
            if not _5122:
                if 0 < mem[_5132]:
                    mem[_5132 + 32] = s
                    _6778 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                    s = 0
                    while s < _6778 - 1:
                        require s < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6818 = mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        require s + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6841 = mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] == mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                                        mem[mem[64] + 108 len 24]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] < mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            if not mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5081))
                            staticcall address(_5081).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5132]
                            if mem[(32 * s) + _5132 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6818) == address(_6818):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if not mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5081))
                            staticcall address(_5081).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5132]
                            if mem[(32 * s) + _5132 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6841) == address(_6818):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        s = s + 1
                        continue 
                    if 1 < mem[_5132]:
                        idx = idx + 1
                        s = mem[_5132 + 64]
                        continue 
            else:
                mem[_5132 + 32 len 32 * _5122] = call.data[calldata.size len 32 * _5122]
                if 0 < mem[_5132]:
                    mem[_5132 + 32] = s
                    _6779 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                    s = 0
                    while s < _6779 - 1:
                        require s < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6821 = mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        require s + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6843 = mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] == mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                                        mem[mem[64] + 108 len 24]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] < mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            if not mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5081))
                            staticcall address(_5081).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5132]
                            if mem[(32 * s) + _5132 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6821) == address(_6821):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if not mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5081))
                            staticcall address(_5081).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5132]
                            if mem[(32 * s) + _5132 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6843) == address(_6821):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5132 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5132]
                                    mem[(32 * s + 1) + _5132 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5132 + 32] / mem[(32 * s) + _5132 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5132 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 0 / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5132 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5132 + 32]
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / 997 * mem[(32 * s) + _5132 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5132]
                                            mem[(32 * s + 1) + _5132 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5132 + 32] / (997 * mem[(32 * s) + _5132 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        s = s + 1
                        continue 
                    if 1 < mem[_5132]:
                        idx = idx + 1
                        s = mem[_5132 + 64]
                        continue 
            revert
        if s <= _2555:
            return 0
        if not arg2:
            return (s - _2555)
        if not arg3:
            return (s - _2555)
        require 0 < mem[96]
        require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = mem[140 len 20]
        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 448] = arg3
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s - _2555
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        _5121 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[mem[64] + 100 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384])]
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args s - _2555, 64, mem[mem[64] + 68 len (32 * _5121) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6839 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _6854 = mem[_6839]
        require mem[_6839] <= 4294967296
        require mem[_6839] + 32 <= return_data.size
        require mem[_6839 + mem[_6839]] <= 4294967296 and mem[_6839] + (32 * mem[_6839 + mem[_6839]]) + 32 <= return_data.size
        mem[_6839 + ceil32(return_data.size)] = mem[_6839 + mem[_6839]]
        _6890 = mem[_6839 + _6854]
        mem[_6839 + ceil32(return_data.size) + 32 len floor32(mem[_6839 + _6854])] = mem[_6839 + _6854 + 32 len floor32(mem[_6839 + _6854])]
        mem[64] = (32 * _6890) + _6839 + ceil32(return_data.size) + 32
        require 1 < mem[_6839 + ceil32(return_data.size)]
        mem[(32 * _6890) + _6839 + ceil32(return_data.size) + 32] = mem[_6839 + ceil32(return_data.size) + 64]
        return memory
          from (32 * _6890) + _6839 + ceil32(return_data.size) + 32
           len 32
    require 0 < arg6.length
    _7 = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 2
    require 0 < arg4.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = mem[140 len 20]
    require 1 < arg4.length
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = mem[172 len 20]
    if not address(_7):
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = 2
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320 len 64] = call.data[calldata.size len 64]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 352] = arg1
        idx = 1
        while idx:
            require idx - 1 < 2
            require idx < 2
            _2551 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224]
            if mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20] == mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                revert with 0, 
                            32,
                            40,
                            0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 492 len 24]
            if mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20] < mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                if not mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                require ext_code.size(0)
                staticcall 0x0.getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 499 len 17]
                if mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20] == mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
            else:
                if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    revert with 0, 
                                32,
                                33,
                                0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                require ext_code.size(0)
                staticcall 0x0.getReserves() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 499 len 17]
                if address(_2551) == mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 236 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[50 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 495 len 21]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 'ABORT!! BR TOO BIG!!'
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                        mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                        if not mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            if ext_call.return_data[18 len 14] <= mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]:
                                revert with 0, 'ABORT!! BR TOO BIG!!'
                            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 485 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])
                            if (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1 < 1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
                            mem[(32 * idx - 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = (1000 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320])) + 1
            idx = idx - 1
            continue 
        require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288]
        _2550 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = 2
        mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 480
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416 len 64] = call.data[calldata.size len 64]
        idx = 1
        s = arg1
        while idx < arg5.length:
            require idx < mem[96]
            require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = mem[(32 * idx) + 140 len 20]
            require idx + 1 < mem[96]
            require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 448] = mem[(32 * idx + 1) + 140 len 20]
            require idx < mem[(32 * arg4.length) + 128]
            _5070 = mem[(32 * idx) + (32 * arg4.length) + 160]
            if mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] < 2:
                revert with 0, 32, 33, 0x73556e697377617056324c6962726172794f75723a20494e56414c49445f504154, mem[mem[64] + 101 len 31]
            _5109 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] <= test266151307()
            _5126 = mem[64]
            mem[mem[64]] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
            mem[64] = mem[64] + (32 * _5109) + 32
            if not _5109:
                if 0 < mem[_5126]:
                    mem[_5126 + 32] = s
                    _6773 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                    s = 0
                    while s < _6773 - 1:
                        require s < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6804 = mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        require s + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6830 = mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] == mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                                        mem[mem[64] + 108 len 24]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] < mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            if not mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5070))
                            staticcall address(_5070).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5126]
                            if mem[(32 * s) + _5126 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6804) == address(_6804):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if not mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5070))
                            staticcall address(_5070).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5126]
                            if mem[(32 * s) + _5126 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6830) == address(_6804):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        s = s + 1
                        continue 
                    if 1 < mem[_5126]:
                        idx = idx + 1
                        s = mem[_5126 + 64]
                        continue 
            else:
                mem[_5126 + 32 len 32 * _5109] = call.data[calldata.size len 32 * _5109]
                if 0 < mem[_5126]:
                    mem[_5126 + 32] = s
                    _6774 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                    s = 0
                    while s < _6774 - 1:
                        require s < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6807 = mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        require s + 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
                        _6832 = mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] == mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                                        mem[mem[64] + 108 len 24]
                        if mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20] < mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                            if not mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5070))
                            staticcall address(_5070).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5126]
                            if mem[(32 * s) + _5126 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6807) == address(_6807):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if not mem[(32 * s + 1) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 428 len 20]:
                                revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                            require ext_code.size(address(_5070))
                            staticcall address(_5070).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_5126]
                            if mem[(32 * s) + _5126 + 32] <= 0:
                                revert with 0, 
                                            32,
                                            46,
                                            0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[mem[64] + 114 len 18]
                            if address(_6832) == address(_6807):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[0]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 
                                                32,
                                                43,
                                                0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                                mem[mem[64] + 111 len 21]
                                if not mem[(32 * s) + _5126 + 32]:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                                    require s + 1 < mem[_5126]
                                    mem[(32 * s + 1) + _5126 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if 997 * mem[(32 * s) + _5126 + 32] / mem[(32 * s) + _5126 + 32] != 997:
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 997 * mem[(32 * s) + _5126 + 32]:
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 0 / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not Mask(112, 0, ext_call.return_data[32]):
                                            if 997 * mem[(32 * s) + _5126 + 32] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * s) + _5126 + 32]
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / 997 * mem[(32 * s) + _5126 + 32]
                                        else:
                                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            require s + 1 < mem[_5126]
                                            mem[(32 * s + 1) + _5126 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _5126 + 32] / (997 * mem[(32 * s) + _5126 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        s = s + 1
                        continue 
                    if 1 < mem[_5126]:
                        idx = idx + 1
                        s = mem[_5126 + 64]
                        continue 
            revert
        if s <= _2550:
            return 0
        if not arg2:
            return (s - _2550)
        if not arg3:
            return (s - _2550)
        require 0 < mem[96]
        require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = mem[140 len 20]
        require 1 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 448] = arg3
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s - _2550
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        _5108 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384]
        mem[mem[64] + 100 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384])]
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args s - _2550, 64, mem[mem[64] + 68 len (32 * _5108) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6828 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _6846 = mem[_6828]
        require mem[_6828] <= 4294967296
        require mem[_6828] + 32 <= return_data.size
        require mem[_6828 + mem[_6828]] <= 4294967296 and mem[_6828] + (32 * mem[_6828 + mem[_6828]]) + 32 <= return_data.size
        mem[_6828 + ceil32(return_data.size)] = mem[_6828 + mem[_6828]]
        _6884 = mem[_6828 + _6846]
        mem[_6828 + ceil32(return_data.size) + 32 len floor32(mem[_6828 + _6846])] = mem[_6828 + _6846 + 32 len floor32(mem[_6828 + _6846])]
        mem[64] = (32 * _6884) + _6828 + ceil32(return_data.size) + 32
        require 1 < mem[_6828 + ceil32(return_data.size)]
        mem[(32 * _6884) + _6828 + ceil32(return_data.size) + 32] = mem[_6828 + ceil32(return_data.size) + 64]
        return memory
          from (32 * _6884) + _6828 + ceil32(return_data.size) + 32
           len 32
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292] = arg1
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 324] = 64
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 356] = 2
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 388 len 0] = None
    require ext_code.size(address(_7))
    staticcall address(_7).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 288
    require return_data.size >= 32
    _2557 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 32 <= return_data.size
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 288] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    _2576 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _2557 + 288]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _2557 + 288])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _2557 + 320 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + _2557 + 288])]
    require 0 < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 288]
    _5026 = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
    mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320] = 2
    mem[64] = (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 416
    mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352 len 64] = call.data[calldata.size len 64]
    idx = 1
    s = arg1
    while idx < arg5.length:
        require idx < mem[96]
        require 0 < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
        mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352] = mem[(32 * idx) + 140 len 20]
        require idx + 1 < mem[96]
        require 1 < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
        mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 384] = mem[(32 * idx + 1) + 140 len 20]
        require idx < mem[(32 * arg4.length) + 128]
        _6872 = mem[(32 * idx) + (32 * arg4.length) + 160]
        if mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320] < 2:
            revert with 0, 32, 33, 0x73556e697377617056324c6962726172794f75723a20494e56414c49445f504154, mem[mem[64] + 101 len 31]
        _6894 = mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
        require mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320] <= test266151307()
        _6917 = mem[64]
        mem[mem[64]] = mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
        mem[64] = mem[64] + (32 * _6894) + 32
        if not _6894:
            if 0 < mem[_6917]:
                mem[_6917 + 32] = s
                _8410 = mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
                s = 0
                while s < _8410 - 1:
                    require s < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
                    _8427 = mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352]
                    require s + 1 < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
                    _8436 = mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352]
                    if mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20] == mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                                    mem[mem[64] + 108 len 24]
                    if mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20] < mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                        if not mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                            revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                        require ext_code.size(address(_6872))
                        staticcall address(_6872).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_6917]
                        if mem[(32 * s) + _6917 + 32] <= 0:
                            revert with 0, 
                                        32,
                                        46,
                                        0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 114 len 18]
                        if address(_8427) == address(_8427):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if not mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                            revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                        require ext_code.size(address(_6872))
                        staticcall address(_6872).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_6917]
                        if mem[(32 * s) + _6917 + 32] <= 0:
                            revert with 0, 
                                        32,
                                        46,
                                        0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 114 len 18]
                        if address(_8436) == address(_8427):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    s = s + 1
                    continue 
                if 1 < mem[_6917]:
                    idx = idx + 1
                    s = mem[_6917 + 64]
                    continue 
        else:
            mem[_6917 + 32 len 32 * _6894] = call.data[calldata.size len 32 * _6894]
            if 0 < mem[_6917]:
                mem[_6917 + 32] = s
                _8411 = mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
                s = 0
                while s < _8411 - 1:
                    require s < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
                    _8430 = mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352]
                    require s + 1 < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
                    _8438 = mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352]
                    if mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20] == mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x59556e697377617056324c6962726172794f75723a204944454e544943414c5f4144445245535345,
                                    mem[mem[64] + 108 len 24]
                    if mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20] < mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                        if not mem[(32 * s) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                            revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                        require ext_code.size(address(_6872))
                        staticcall address(_6872).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_6917]
                        if mem[(32 * s) + _6917 + 32] <= 0:
                            revert with 0, 
                                        32,
                                        46,
                                        0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 114 len 18]
                        if address(_8430) == address(_8430):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if not mem[(32 * s + 1) + (32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 364 len 20]:
                            revert with 0, 32, 33, 0x21556e697377617056324c6962726172794f75723a205a45524f5f414444524553, mem[mem[64] + 101 len 31]
                        require ext_code.size(address(_6872))
                        staticcall address(_6872).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_6917]
                        if mem[(32 * s) + _6917 + 32] <= 0:
                            revert with 0, 
                                        32,
                                        46,
                                        0x54556e697377617056324c6962726172794f75723a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[mem[64] + 114 len 18]
                        if address(_8438) == address(_8430):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x77556e697377617056324c6962726172794f75723a20494e53554646494349454e545f4c49515549444954,
                                            mem[mem[64] + 111 len 21]
                            if not mem[(32 * s) + _6917 + 32]:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_6917]
                                mem[(32 * s + 1) + _6917 + 32] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 997 * mem[(32 * s) + _6917 + 32] / mem[(32 * s) + _6917 + 32] != 997:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 997 * mem[(32 * s) + _6917 + 32]:
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 0 / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                else:
                                    if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        if 997 * mem[(32 * s) + _6917 + 32] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * s) + _6917 + 32]
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / 997 * mem[(32 * s) + _6917 + 32]
                                    else:
                                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        require s + 1 < mem[_6917]
                                        mem[(32 * s + 1) + _6917 + 32] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * s) + _6917 + 32] / (997 * mem[(32 * s) + _6917 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    s = s + 1
                    continue 
                if 1 < mem[_6917]:
                    idx = idx + 1
                    s = mem[_6917 + 64]
                    continue 
        revert
    if s <= _5026:
        return 0
    if not arg2:
        return (s - _5026)
    if not arg3:
        return (s - _5026)
    require 0 < mem[96]
    require 0 < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
    mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352] = mem[140 len 20]
    require 1 < mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
    mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 384] = arg3
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = s - _5026
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
    _6893 = mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320]
    mem[mem[64] + 100 len floor32(mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320])] = mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 352 len floor32(mem[(32 * _2576) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + ceil32(return_data.size) + 320])]
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s - _5026, 64, mem[mem[64] + 68 len (32 * _6893) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _8434 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _8443 = mem[_8434]
    require mem[_8434] <= 4294967296
    require mem[_8434] + 32 <= return_data.size
    require mem[_8434 + mem[_8434]] <= 4294967296 and mem[_8434] + (32 * mem[_8434 + mem[_8434]]) + 32 <= return_data.size
    mem[_8434 + ceil32(return_data.size)] = mem[_8434 + mem[_8434]]
    _8454 = mem[_8434 + _8443]
    mem[_8434 + ceil32(return_data.size) + 32 len floor32(mem[_8434 + _8443])] = mem[_8434 + _8443 + 32 len floor32(mem[_8434 + _8443])]
    mem[64] = (32 * _8454) + _8434 + ceil32(return_data.size) + 32
    require 1 < mem[_8434 + ceil32(return_data.size)]
    mem[(32 * _8454) + _8434 + ceil32(return_data.size) + 32] = mem[_8434 + ceil32(return_data.size) + 64]
    return memory
      from (32 * _8454) + _8434 + ceil32(return_data.size) + 32
       len 32
}



}
