contract main {




// =====================  Runtime code  =====================


#
#  - sub_810b6f88(?)
#
const getBalance = eth.balance(this.address)


address owner;
address stor1;
uint256 geUnlockTime;
array of address sub_921c649e;

function owner() payable {
    return owner
}

function sub_921c649e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_921c649e.length
    return sub_921c649e[arg1]
}

function geUnlockTime() payable {
    return geUnlockTime
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) payable {
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

function getTokenPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(112, 0, ext_call.return_data[32])
    return (arg2 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
}

function sub_153e500e(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require 0 < arg4.length
    _3 = mem[128]
    mem[(32 * arg4.length) + 164] = msg.sender
    mem[(32 * arg4.length) + 196] = this.address
    mem[(32 * arg4.length) + 228] = arg2
    mem[(32 * arg4.length) + 128] = 100
    mem[(32 * arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * arg4.length) + 160 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[(32 * arg4.length) + 260 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[(32 * arg4.length) + 384 len 4] = uint32(arg2)
    call address(_3) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[(32 * arg4.length) + 356 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * arg4.length) + 377 len 7],
                        uint32(arg2),
                        mem[(32 * arg4.length) + 388 len 4]
        if not arg4.length:
            mem[(32 * arg4.length) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + 264] = arg2
            mem[(32 * arg4.length) + 296] = arg3
            mem[(32 * arg4.length) + 360] = arg5
            mem[(32 * arg4.length) + 392] = arg6
            mem[(32 * arg4.length) + 328] = 160
            mem[(32 * arg4.length) + 424] = arg4.length
            mem[(32 * arg4.length) + 456 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 456 len (32 * arg4.length) - floor32(arg4.length)]), address(arg5), arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 260
            require return_data.size >= 32
            _363 = mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 260] <= 4294967296 and mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 260]) + 32 <= return_data.size
            mem[(32 * arg4.length) + ceil32(return_data.size) + 260] = mem[mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 260]
            _375 = mem[_363 + (32 * arg4.length) + 260]
            mem[(32 * arg4.length) + ceil32(return_data.size) + 292 len floor32(mem[_363 + (32 * arg4.length) + 260])] = mem[_363 + (32 * arg4.length) + 292 len floor32(mem[_363 + (32 * arg4.length) + 260])]
            require arg4.length - 1 < arg4.length
            _503 = mem[(32 * arg4.length - 1) + 128]
            mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 424 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(this.address) << 64, 0, msg.sender, Mask(224, 32, arg3) >> 32
            mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 548 len 4] = uint32(arg3)
            call address(_503) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg3) << 480, mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                49,
                                0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 541 len 7],
                                uint32(arg3),
                                mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 552 len 4]
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    49,
                                    0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 541 len 7],
                                    uint32(arg3),
                                    mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 552 len 4]
            else:
                mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                49,
                                0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 15]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + 456]:
                        revert with 0, 
                                    32,
                                    49,
                                    0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[(32 * _375) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 15]
        else:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            49,
                            0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * arg4.length) + 377 len 7],
                            uint32(arg2),
                            mem[(32 * arg4.length) + 388 len 4]
            mem[(32 * arg4.length) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + 264] = arg2
            mem[(32 * arg4.length) + 296] = arg3
            mem[(32 * arg4.length) + 360] = arg5
            mem[(32 * arg4.length) + 392] = arg6
            mem[(32 * arg4.length) + 328] = 160
            mem[(32 * arg4.length) + 424] = arg4.length
            mem[(32 * arg4.length) + 456 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 456 len (32 * arg4.length) - floor32(arg4.length)]), address(arg5), arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 260
            require return_data.size >= 32
            _365 = mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 260] <= 4294967296 and mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 260]) + 32 <= return_data.size
            mem[(32 * arg4.length) + ceil32(return_data.size) + 260] = mem[mem[(32 * arg4.length) + 260 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 260]
            _376 = mem[_365 + (32 * arg4.length) + 260]
            mem[(32 * arg4.length) + ceil32(return_data.size) + 292 len floor32(mem[_365 + (32 * arg4.length) + 260])] = mem[_365 + (32 * arg4.length) + 292 len floor32(mem[_365 + (32 * arg4.length) + 260])]
            require arg4.length - 1 < arg4.length
            _504 = mem[(32 * arg4.length - 1) + 128]
            mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 424 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(this.address) << 64, 0, msg.sender, Mask(224, 32, arg3) >> 32
            mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 548 len 4] = uint32(arg3)
            call address(_504) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg3) << 480, mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                49,
                                0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 541 len 7],
                                uint32(arg3),
                                mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 552 len 4]
                if arg4.length:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    49,
                                    0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 541 len 7],
                                    uint32(arg3),
                                    mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 552 len 4]
            else:
                mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                49,
                                0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 15]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + 456]:
                        revert with 0, 
                                    32,
                                    49,
                                    0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[(32 * _376) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 15]
    mem[(32 * arg4.length) + 260] = return_data.size
    mem[(32 * arg4.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    49,
                    0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                    mem[(32 * arg4.length) + ceil32(return_data.size) + 378 len 15]
    if not return_data.size:
        mem[(32 * arg4.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + ceil32(return_data.size) + 265] = arg2
        mem[(32 * arg4.length) + ceil32(return_data.size) + 297] = arg3
        mem[(32 * arg4.length) + ceil32(return_data.size) + 361] = arg5
        mem[(32 * arg4.length) + ceil32(return_data.size) + 393] = arg6
        mem[(32 * arg4.length) + ceil32(return_data.size) + 329] = 160
        mem[(32 * arg4.length) + ceil32(return_data.size) + 425] = arg4.length
        mem[(32 * arg4.length) + ceil32(return_data.size) + 457 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        require ext_code.size(arg1)
        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + ceil32(return_data.size) + floor32(arg4.length) + 457 len (32 * arg4.length) - floor32(arg4.length)]), address(arg5), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _367 = mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + ceil32(return_data.size) + 261] <= 4294967296 and mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + ceil32(return_data.size) + 261]) + 32 <= return_data.size
        mem[(32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + ceil32(return_data.size) + 261]
        _377 = mem[_367 + (32 * arg4.length) + ceil32(return_data.size) + 261]
        mem[(32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_367 + (32 * arg4.length) + ceil32(return_data.size) + 261])] = mem[_367 + (32 * arg4.length) + ceil32(return_data.size) + 293 len floor32(mem[_367 + (32 * arg4.length) + ceil32(return_data.size) + 261])]
        require arg4.length - 1 < arg4.length
        _505 = mem[(32 * arg4.length - 1) + 128]
        mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(this.address) << 64, 0, msg.sender, Mask(224, 32, arg3) >> 32
        mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = uint32(arg3)
        call address(_505) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 480, mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 7],
                            uint32(arg3),
                            mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 4]
            if arg4.length:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                49,
                                0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 7],
                                uint32(arg3),
                                mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 4]
        else:
            mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * _377) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 543 len 15]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _377) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                49,
                                0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * _377) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 543 len 15]
    require return_data.size >= 32
    if not mem[(32 * arg4.length) + 292]:
        revert with 0, 
                    32,
                    49,
                    0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                    mem[(32 * arg4.length) + ceil32(return_data.size) + 378 len 15]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + ceil32(return_data.size) + 265] = arg2
    mem[(32 * arg4.length) + ceil32(return_data.size) + 297] = arg3
    mem[(32 * arg4.length) + ceil32(return_data.size) + 361] = arg5
    mem[(32 * arg4.length) + ceil32(return_data.size) + 393] = arg6
    mem[(32 * arg4.length) + ceil32(return_data.size) + 329] = 160
    mem[(32 * arg4.length) + ceil32(return_data.size) + 425] = arg4.length
    mem[(32 * arg4.length) + ceil32(return_data.size) + 457 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + ceil32(return_data.size) + floor32(arg4.length) + 457 len (32 * arg4.length) - floor32(arg4.length)]), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 261
    require return_data.size >= 32
    _369 = mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + ceil32(return_data.size) + 261] <= 4294967296 and mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + ceil32(return_data.size) + 261]) + 32 <= return_data.size
    mem[(32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[(32 * arg4.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + ceil32(return_data.size) + 261]
    _378 = mem[_369 + (32 * arg4.length) + ceil32(return_data.size) + 261]
    mem[(32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_369 + (32 * arg4.length) + ceil32(return_data.size) + 261])] = mem[_369 + (32 * arg4.length) + ceil32(return_data.size) + 293 len floor32(mem[_369 + (32 * arg4.length) + ceil32(return_data.size) + 261])]
    require arg4.length - 1 < arg4.length
    _506 = mem[(32 * arg4.length - 1) + 128]
    mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), address(this.address) << 64, 0, msg.sender, Mask(224, 32, arg3) >> 32
    mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = uint32(arg3)
    call address(_506) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 7],
                        uint32(arg3),
                        mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 4]
        if arg4.length:
            require arg4.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            49,
                            0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 542 len 7],
                            uint32(arg3),
                            mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 4]
    mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
    mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if not return_data.size:
        require return_data.size >= 32
        if mem[(32 * _378) + (32 * arg4.length) + ceil32(return_data.size) + ceil32(return_data.size) + 457]:
    mem[(32 * _378) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _378) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 430] = 32
    mem[(32 * _378) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 462] = 49
    mem[(32 * _378) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 494 len 49] = 0x735472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65
    revert with memory
      from (32 * _378) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 426
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
