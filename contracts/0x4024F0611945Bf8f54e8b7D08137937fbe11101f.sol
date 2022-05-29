contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address sub_d4384dbeAddress;
address sub_8ed8ea7eAddress;
address sub_d8f06c26Address;
address sub_50d7d613Address;
address devAddress;

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function dev() payable {
    return devAddress
}

function sub_d4384dbe(?) payable {
    return sub_d4384dbeAddress
}

function sub_d8f06c26(?) payable {
    return sub_d8f06c26Address
}

function _fallback() payable {
    revert
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == devAddress:
        devAddress = arg1
}

function sub_584af88e(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_d8f06c26Address)
    staticcall sub_d8f06c26Address.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    if arg3:
        require not arg4
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty bytes'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f786fe29(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_d4384dbeAddress)
    staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    if arg3:
        require not arg4
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty bytes'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 2
            mem[224 len 64] = call.data[calldata.size len 64]
            mem[256] = arg3
            if not arg2:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5607 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5607) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10784 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10879 = mem[_10784 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10784 + 288])] = mem[_10784 + 320 len floor32(mem[_10784 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5617 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5617) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10788 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10881 = mem[_10788 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10788 + 288])] = mem[_10788 + 320 len floor32(mem[_10788 + 288])]
            else:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5627 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5627) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10792 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10883 = mem[_10792 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10792 + 288])] = mem[_10792 + 320 len floor32(mem[_10792 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5637 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5637) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10796 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10885 = mem[_10796 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10796 + 288])] = mem[_10796 + 320 len floor32(mem[_10796 + 288])]
        else:
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 2
            mem[224 len 64] = call.data[calldata.size len 64]
            mem[256] = arg3
            if not arg2:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5647 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5647) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10800 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10887 = mem[_10800 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10800 + 288])] = mem[_10800 + 320 len floor32(mem[_10800 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5657 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5657) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10804 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10889 = mem[_10804 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10804 + 288])] = mem[_10804 + 320 len floor32(mem[_10804 + 288])]
            else:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5667 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5667) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10808 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10891 = mem[_10808 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10808 + 288])] = mem[_10808 + 320 len floor32(mem[_10808 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5677 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5677) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg3
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10812 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _10893 = mem[_10812 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10812 + 288])] = mem[_10812 + 320 len floor32(mem[_10812 + 288])]
    else:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 2
            mem[224 len 64] = call.data[calldata.size len 64]
            mem[256] = arg2
            if not arg2:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5687 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5687) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10816 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10895 = mem[_10816 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10816 + 288])] = mem[_10816 + 320 len floor32(mem[_10816 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5697 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5697) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10820 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10897 = mem[_10820 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10820 + 288])] = mem[_10820 + 320 len floor32(mem[_10820 + 288])]
            else:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5707 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5707) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10824 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10899 = mem[_10824 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10824 + 288])] = mem[_10824 + 320 len floor32(mem[_10824 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5717 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5717) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10828 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10901 = mem[_10828 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10828 + 288])] = mem[_10828 + 320 len floor32(mem[_10828 + 288])]
        else:
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 2
            mem[224 len 64] = call.data[calldata.size len 64]
            mem[256] = arg2
            if not arg2:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5727 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5727) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10832 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10903 = mem[_10832 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10832 + 288])] = mem[_10832 + 320 len floor32(mem[_10832 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5737 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5737) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10836 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10905 = mem[_10836 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10836 + 288])] = mem[_10836 + 320 len floor32(mem[_10836 + 288])]
            else:
                if not arg2:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5747 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5747) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10840 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10907 = mem[_10840 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10840 + 288])] = mem[_10840 + 320 len floor32(mem[_10840 + 288])]
                else:
                    idx = 1
                    while idx:
                        require idx - 1 < 2
                        require idx < 2
                        _5757 = mem[(32 * idx) + 128]
                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[393 len 27]
                        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                            if not mem[(32 * idx - 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(sub_8ed8ea7eAddress)
                            staticcall sub_8ed8ea7eAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx - 1) + 140 len 20], address(mem[(32 * idx) + 128])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[288 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require idx < mem[192]
                            if mem[(32 * idx) + 224] <= 0:
                                revert with 0, 32, 44, 0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[400 len 20]
                            if address(_5757) == mem[(32 * idx - 1) + 140 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 224])) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[396 len 24]
                                if not mem[(32 * idx) + 224]:
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                                else:
                                    require mem[(32 * idx) + 224]
                                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224] > Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 224]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])
                                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require idx - 1 < mem[192]
                                    mem[(32 * idx - 1) + 224] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 224] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 224])) + 1
                        idx = idx - 1
                        continue 
                    require 0 < mem[192]
                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[292] = arg2
                    mem[324] = mem[224]
                    mem[388] = msg.sender
                    mem[420] = block.timestamp
                    mem[356] = 160
                    mem[452] = 2
                    mem[484 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, mem[224], Array(len=2, data=mem[484 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _10844 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _10909 = mem[_10844 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_10844 + 288])] = mem[_10844 + 320 len floor32(mem[_10844 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, mem[224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args devAddress, mem[ceil32(return_data.size) + 352] - mem[224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xbbf737c0: address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
}



}
