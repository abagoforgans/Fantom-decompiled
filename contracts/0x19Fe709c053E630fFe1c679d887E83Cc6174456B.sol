contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
address routerAddress;
uint256 stor1;
mapping of uint8 stor2;
uint256 sub_9774b264;
mapping of uint256 sub_da3a0092;

function callers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function sub_9774b264(?) {
    return sub_9774b264
}

function sub_da3a0092(?) {
    require calldata.size - 4 >= 32
    return sub_da3a0092[arg1]
}

function router() {
    return address(routerAddress)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if msg.value + sub_9774b264 < sub_9774b264:
        revert with 0, 'SafeMath: addition overflow'
    sub_9774b264 += msg.value
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCaller(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor2[address(arg1)] = uint8(arg2)
}

function withdrawEth() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if ext_call.success:
        if eth.balance(this.address) <= sub_9774b264:
            sub_9774b264 -= eth.balance(this.address)
        else:
            sub_9774b264 = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f18773ed(?) {
    require calldata.size - 4 >= 96
    if not stor2[msg.sender]:
        revert with 0, 'you are not caller'
    if not arg2:
        sub_da3a0092[address(arg1)] = 0
    else:
        if arg3 * arg2 / arg2 != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_da3a0092[address(arg1)] = arg3 * arg2
}

function withdrawERC20Tokens(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9e3fb527(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if not stor2[msg.sender]:
        revert with 0, 'you are not caller'
    require 0 < arg2.length
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(32 * arg2.length) + 128] = 26
        require 0 < arg2.length
        mem[(32 * arg2.length) + 292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), 0
        call mem[140 len 20] with:
           funct uint32(stor1)
             gas gas_remaining wei
            args 0, mem[(32 * arg2.length) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if arg2.length:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[(32 * arg2.length) + 488 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, owner, block.timestamp, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 488 len (32 * arg2.length) - floor32(arg2.length)]
        else:
            mem[(32 * arg2.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * arg2.length) + 324]:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[(32 * arg2.length) + ceil32(return_data.size) + 489 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, owner, block.timestamp, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 489 len (32 * arg2.length) - floor32(arg2.length)]
    else:
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
        mem[(32 * arg2.length) + 128] = 26
        require 0 < arg2.length
        mem[(32 * arg2.length) + 292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1 * ext_call.return_data[0] / 100) >> 32
        call mem[140 len 20] with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(224, 32, arg1 * ext_call.return_data[0] / 100) << 224, mem[(32 * arg2.length) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if arg2.length:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[(32 * arg2.length) + 488 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1 * ext_call.return_data[0] / 100, 0, 160, owner, block.timestamp, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 488 len (32 * arg2.length) - floor32(arg2.length)]
        else:
            mem[(32 * arg2.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * arg2.length) + 324]:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[(32 * arg2.length) + ceil32(return_data.size) + 489 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1 * ext_call.return_data[0] / 100, 0, 160, owner, block.timestamp, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 489 len (32 * arg2.length) - floor32(arg2.length)]
    if not ext_call.success:
        revert with 0, 'Cannot sell tokens'
}

function sub_d2376e0c(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'you are not caller'
    if not arg2:
        if sub_9774b264 < 0:
            revert with 0, 'Insufficient funds'
        require arg3.length - 1 < arg3.length
        _10 = mem[(32 * arg3.length - 1) + 128]
        mem[(32 * arg3.length) + 132] = this.address
        require ext_code.size(address(_10))
        staticcall address(_10).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5 != 0:
            idx = 0
            s = 0
            while idx < arg1:
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _775 = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _775) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2128 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2155 = mem[_2128]
                require mem[_2128] <= 4294967296
                require mem[_2128] + 32 <= return_data.size
                require mem[_2128 + mem[_2128]] <= 4294967296 and mem[_2128] + (32 * mem[_2128 + mem[_2128]]) + 32 <= return_data.size
                mem[_2128 + ceil32(return_data.size)] = mem[_2128 + mem[_2128]]
                _2203 = mem[_2128 + _2155]
                t = 0
                while t < 32 * _2203:
                    mem[t + _2128 + ceil32(return_data.size) + 32] = mem[t + _2128 + _2155 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2203) + _2128 + ceil32(return_data.size) + 32
                require arg3.length - 1 < mem[_2128 + ceil32(return_data.size)]
                _3247 = mem[(32 * arg3.length - 1) + _2128 + ceil32(return_data.size) + 32]
                if mem[(32 * arg3.length - 1) + _2128 + ceil32(return_data.size) + 32] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require mem[(32 * arg3.length - 1) + _2128 + ceil32(return_data.size) + 32] + s > 0
                mem[64] = (32 * _2203) + _2128 + ceil32(return_data.size) + 96
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 32] = 30
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 64] = 'SafeMath: subtraction overflow'
                if arg2 > sub_9774b264:
                    mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 100] = 32
                    idx = 0
                    while idx < 30:
                        mem[idx + (32 * _2203) + _2128 + ceil32(return_data.size) + 164] = mem[idx + (32 * _2203) + _2128 + ceil32(return_data.size) + 64]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 164] = mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 166 len 30]
                    revert with 0, 32, 30, mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 164]
                sub_9774b264 -= arg2
                mem[64] = (32 * _2203) + _2128 + ceil32(return_data.size) + 160
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 96] = 29
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 128] = 'Insufficient funds for tokens'
                if arg2 > sub_da3a0092[address(_10)]:
                    mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 164] = 32
                    idx = 0
                    while idx < 29:
                        mem[idx + (32 * _2203) + _2128 + ceil32(return_data.size) + 228] = mem[idx + (32 * _2203) + _2128 + ceil32(return_data.size) + 128]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 228] = mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 231 len 29]
                    revert with 0, 32, 29, mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 228]
                mem[0] = address(_10)
                mem[32] = 4
                sub_da3a0092[address(_10)] -= arg2
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 160] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 164] = 0
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 196] = 128
                mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 292] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + (32 * _2203) + _2128 + ceil32(return_data.size) + 324] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                call address(routerAddress).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, mem[(32 * _2203) + _2128 + ceil32(return_data.size) + 292 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot buy tokens'
                idx = idx + 1
                s = _3247 + s
                continue 
            if arg5:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_10))
                staticcall address(_10).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _813 = mem[64]
                mem[64] = mem[64] + 64
                mem[_813] = 30
                mem[_813 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s:
                    _885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_885] = 26
                    mem[_885 + 32] = 'SafeMath: division by zero'
                    _921 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_921] = 30
                    mem[_921 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > 0:
                        revert with 0, 'burn too much'
                    if var60003 >= var60001 / 2:
                        _3324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3324] = 26
                        mem[_3324 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3418 = mem[128]
                        _3471 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3472 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3472 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3475 = mem[_3472]
                        mem[_3471 + 100 len floor32(mem[_3472])] = mem[_3472 + 32 len floor32(mem[_3472])]
                        mem[_3471 + floor32(mem[_3472]) + -(mem[_3472] % 32) + 132 len mem[_3472] % 32] = mem[_3472 + -(mem[_3472] % 32) + floor32(mem[_3472]) + 64 len mem[_3472] % 32]
                        call address(_3418).mem[_3471 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3471 + 104 len _3475 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3471 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3471 + 104] = 0
                            mem[_3471 + 136] = 0
                            mem[_3471 + 200] = this.address
                            mem[_3471 + 232] = block.timestamp
                            mem[_3471 + 168] = 160
                            mem[_3471 + 264] = mem[96]
                            mem[_3471 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3471 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3471 + 100] = return_data.size
                            mem[_3471 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3471 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3471 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3471 + ceil32(return_data.size) + 105] = 0
                            mem[_3471 + ceil32(return_data.size) + 137] = 0
                            mem[_3471 + ceil32(return_data.size) + 201] = this.address
                            mem[_3471 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3471 + ceil32(return_data.size) + 169] = 160
                            mem[_3471 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3471 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3471 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var62001 < mem[96]
                        _6986 = mem[(32 * var62001) + 128]
                        require mem[96] + -var62001 - 1 < mem[96]
                        require var62001 < mem[96]
                        mem[(32 * var62001) + 128] = mem[(32 * mem[96] + -var62001 - 1) + 140 len 20]
                        require mem[96] + -var62001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var62001 - 1) + 128] = address(_6986)
                        _7256 = mem[96]
                        s = var62001
                        idx = var62001
                        s = var62002
                        while idx + 1 < _7256 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7320] = 26
                        mem[_7320 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7344 = mem[128]
                        _7378 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7379 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7379 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7382 = mem[_7379]
                        mem[_7378 + 100 len floor32(mem[_7379])] = mem[_7379 + 32 len floor32(mem[_7379])]
                        mem[_7378 + floor32(mem[_7379]) + -(mem[_7379] % 32) + 132 len mem[_7379] % 32] = mem[_7379 + -(mem[_7379] % 32) + floor32(mem[_7379]) + 64 len mem[_7379] % 32]
                        call address(_7344).mem[_7378 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7378 + 104 len _7382 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7378 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7378 + 104] = 0
                            mem[_7378 + 136] = 0
                            mem[_7378 + 200] = this.address
                            mem[_7378 + 232] = block.timestamp
                            mem[_7378 + 168] = 160
                            mem[_7378 + 264] = mem[96]
                            mem[_7378 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7378 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7378 + 100] = return_data.size
                            mem[_7378 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7378 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7378 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7378 + ceil32(return_data.size) + 105] = 0
                            mem[_7378 + ceil32(return_data.size) + 137] = 0
                            mem[_7378 + ceil32(return_data.size) + 201] = this.address
                            mem[_7378 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7378 + ceil32(return_data.size) + 169] = 160
                            mem[_7378 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7378 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7378 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                else:
                    if arg4 * s / s != arg4:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_891] = 26
                    mem[_891 + 32] = 'SafeMath: division by zero'
                    _949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_949] = 30
                    mem[_949 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > arg4 * s / 100:
                        revert with 0, 'burn too much'
                    if var62003 >= var62001 / 2:
                        _3323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3323] = 26
                        mem[_3323 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3417 = mem[128]
                        _3464 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3465 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3465 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3468 = mem[_3465]
                        mem[_3464 + 100 len floor32(mem[_3465])] = mem[_3465 + 32 len floor32(mem[_3465])]
                        mem[_3464 + floor32(mem[_3465]) + -(mem[_3465] % 32) + 132 len mem[_3465] % 32] = mem[_3465 + -(mem[_3465] % 32) + floor32(mem[_3465]) + 64 len mem[_3465] % 32]
                        call address(_3417).mem[_3464 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3464 + 104 len _3468 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3464 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3464 + 104] = 0
                            mem[_3464 + 136] = 0
                            mem[_3464 + 200] = this.address
                            mem[_3464 + 232] = block.timestamp
                            mem[_3464 + 168] = 160
                            mem[_3464 + 264] = mem[96]
                            mem[_3464 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3464 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3464 + 100] = return_data.size
                            mem[_3464 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3464 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3464 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3464 + ceil32(return_data.size) + 105] = 0
                            mem[_3464 + ceil32(return_data.size) + 137] = 0
                            mem[_3464 + ceil32(return_data.size) + 201] = this.address
                            mem[_3464 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3464 + ceil32(return_data.size) + 169] = 160
                            mem[_3464 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3464 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3464 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var64001 < mem[96]
                        _6983 = mem[(32 * var64001) + 128]
                        require mem[96] + -var64001 - 1 < mem[96]
                        require var64001 < mem[96]
                        mem[(32 * var64001) + 128] = mem[(32 * mem[96] + -var64001 - 1) + 140 len 20]
                        require mem[96] + -var64001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var64001 - 1) + 128] = address(_6983)
                        _7239 = mem[96]
                        s = var64001
                        idx = var64001
                        s = var64002
                        while idx + 1 < _7239 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7319] = 26
                        mem[_7319 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7343 = mem[128]
                        _7372 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7373 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7373 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7376 = mem[_7373]
                        mem[_7372 + 100 len floor32(mem[_7373])] = mem[_7373 + 32 len floor32(mem[_7373])]
                        mem[_7372 + floor32(mem[_7373]) + -(mem[_7373] % 32) + 132 len mem[_7373] % 32] = mem[_7373 + -(mem[_7373] % 32) + floor32(mem[_7373]) + 64 len mem[_7373] % 32]
                        call address(_7343).mem[_7372 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7372 + 104 len _7376 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7372 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7372 + 104] = 0
                            mem[_7372 + 136] = 0
                            mem[_7372 + 200] = this.address
                            mem[_7372 + 232] = block.timestamp
                            mem[_7372 + 168] = 160
                            mem[_7372 + 264] = mem[96]
                            mem[_7372 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7372 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7372 + 100] = return_data.size
                            mem[_7372 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7372 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7372 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7372 + ceil32(return_data.size) + 105] = 0
                            mem[_7372 + ceil32(return_data.size) + 137] = 0
                            mem[_7372 + ceil32(return_data.size) + 201] = this.address
                            mem[_7372 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7372 + ceil32(return_data.size) + 169] = 160
                            mem[_7372 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7372 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7372 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot sell tokens'
        else:
            idx = 0
            s = 0
            while idx < arg1:
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _778 = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _778) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2138 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2161 = mem[_2138]
                require mem[_2138] <= 4294967296
                require mem[_2138] + 32 <= return_data.size
                require mem[_2138 + mem[_2138]] <= 4294967296 and mem[_2138] + (32 * mem[_2138 + mem[_2138]]) + 32 <= return_data.size
                mem[_2138 + ceil32(return_data.size)] = mem[_2138 + mem[_2138]]
                _2210 = mem[_2138 + _2161]
                t = 0
                while t < 32 * _2210:
                    mem[t + _2138 + ceil32(return_data.size) + 32] = mem[t + _2138 + _2161 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2210) + _2138 + ceil32(return_data.size) + 32
                require arg3.length - 1 < mem[_2138 + ceil32(return_data.size)]
                _3254 = mem[(32 * arg3.length - 1) + _2138 + ceil32(return_data.size) + 32]
                if mem[(32 * arg3.length - 1) + _2138 + ceil32(return_data.size) + 32] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require mem[(32 * arg3.length - 1) + _2138 + ceil32(return_data.size) + 32] + s > 0
                mem[64] = (32 * _2210) + _2138 + ceil32(return_data.size) + 96
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 32] = 30
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 64] = 'SafeMath: subtraction overflow'
                if arg2 > sub_9774b264:
                    mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 100] = 32
                    idx = 0
                    while idx < 30:
                        mem[idx + (32 * _2210) + _2138 + ceil32(return_data.size) + 164] = mem[idx + (32 * _2210) + _2138 + ceil32(return_data.size) + 64]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 164] = mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 166 len 30]
                    revert with 0, 32, 30, mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 164]
                sub_9774b264 -= arg2
                mem[64] = (32 * _2210) + _2138 + ceil32(return_data.size) + 160
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 96] = 29
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 128] = 'Insufficient funds for tokens'
                if arg2 > sub_da3a0092[address(_10)]:
                    mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 164] = 32
                    idx = 0
                    while idx < 29:
                        mem[idx + (32 * _2210) + _2138 + ceil32(return_data.size) + 228] = mem[idx + (32 * _2210) + _2138 + ceil32(return_data.size) + 128]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 228] = mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 231 len 29]
                    revert with 0, 32, 29, mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 228]
                mem[0] = address(_10)
                mem[32] = 4
                sub_da3a0092[address(_10)] -= arg2
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 160] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 164] = 0
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 228] = owner
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 196] = 128
                mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 292] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + (32 * _2210) + _2138 + ceil32(return_data.size) + 324] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                call address(routerAddress).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, 128, owner, block.timestamp, mem[(32 * _2210) + _2138 + ceil32(return_data.size) + 292 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot buy tokens'
                idx = idx + 1
                s = _3254 + s
                continue 
            if arg5:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_10))
                staticcall address(_10).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _816 = mem[64]
                mem[64] = mem[64] + 64
                mem[_816] = 30
                mem[_816 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s:
                    _886 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_886] = 26
                    mem[_886 + 32] = 'SafeMath: division by zero'
                    _926 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_926] = 30
                    mem[_926 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > 0:
                        revert with 0, 'burn too much'
                    if var63003 >= var63001 / 2:
                        _3326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3326] = 26
                        mem[_3326 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3423 = mem[128]
                        _3489 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3490 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3490 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3493 = mem[_3490]
                        mem[_3489 + 100 len floor32(mem[_3490])] = mem[_3490 + 32 len floor32(mem[_3490])]
                        mem[_3489 + floor32(mem[_3490]) + -(mem[_3490] % 32) + 132 len mem[_3490] % 32] = mem[_3490 + -(mem[_3490] % 32) + floor32(mem[_3490]) + 64 len mem[_3490] % 32]
                        call address(_3423).mem[_3489 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3489 + 104 len _3493 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3489 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3489 + 104] = 0
                            mem[_3489 + 136] = 0
                            mem[_3489 + 200] = owner
                            mem[_3489 + 232] = block.timestamp
                            mem[_3489 + 168] = 160
                            mem[_3489 + 264] = mem[96]
                            mem[_3489 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3489 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3489 + 100] = return_data.size
                            mem[_3489 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3489 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3489 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3489 + ceil32(return_data.size) + 105] = 0
                            mem[_3489 + ceil32(return_data.size) + 137] = 0
                            mem[_3489 + ceil32(return_data.size) + 201] = owner
                            mem[_3489 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3489 + ceil32(return_data.size) + 169] = 160
                            mem[_3489 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3489 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3489 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var65001 < mem[96]
                        _6992 = mem[(32 * var65001) + 128]
                        require mem[96] + -var65001 - 1 < mem[96]
                        require var65001 < mem[96]
                        mem[(32 * var65001) + 128] = mem[(32 * mem[96] + -var65001 - 1) + 140 len 20]
                        require mem[96] + -var65001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var65001 - 1) + 128] = address(_6992)
                        _7290 = mem[96]
                        s = var65001
                        idx = var65001
                        s = var65002
                        while idx + 1 < _7290 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7322] = 26
                        mem[_7322 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7346 = mem[128]
                        _7390 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7391 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7391 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7394 = mem[_7391]
                        mem[_7390 + 100 len floor32(mem[_7391])] = mem[_7391 + 32 len floor32(mem[_7391])]
                        mem[_7390 + floor32(mem[_7391]) + -(mem[_7391] % 32) + 132 len mem[_7391] % 32] = mem[_7391 + -(mem[_7391] % 32) + floor32(mem[_7391]) + 64 len mem[_7391] % 32]
                        call address(_7346).mem[_7390 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7390 + 104 len _7394 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7390 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7390 + 104] = 0
                            mem[_7390 + 136] = 0
                            mem[_7390 + 200] = owner
                            mem[_7390 + 232] = block.timestamp
                            mem[_7390 + 168] = 160
                            mem[_7390 + 264] = mem[96]
                            mem[_7390 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7390 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7390 + 100] = return_data.size
                            mem[_7390 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7390 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7390 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7390 + ceil32(return_data.size) + 105] = 0
                            mem[_7390 + ceil32(return_data.size) + 137] = 0
                            mem[_7390 + ceil32(return_data.size) + 201] = owner
                            mem[_7390 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7390 + ceil32(return_data.size) + 169] = 160
                            mem[_7390 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7390 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7390 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                else:
                    if arg4 * s / s != arg4:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_893] = 26
                    mem[_893 + 32] = 'SafeMath: division by zero'
                    _956 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_956] = 30
                    mem[_956 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > arg4 * s / 100:
                        revert with 0, 'burn too much'
                    if var65003 >= var65001 / 2:
                        _3325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3325] = 26
                        mem[_3325 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3422 = mem[128]
                        _3482 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3483 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3483 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3486 = mem[_3483]
                        mem[_3482 + 100 len floor32(mem[_3483])] = mem[_3483 + 32 len floor32(mem[_3483])]
                        mem[_3482 + floor32(mem[_3483]) + -(mem[_3483] % 32) + 132 len mem[_3483] % 32] = mem[_3483 + -(mem[_3483] % 32) + floor32(mem[_3483]) + 64 len mem[_3483] % 32]
                        call address(_3422).mem[_3482 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3482 + 104 len _3486 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3482 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3482 + 104] = 0
                            mem[_3482 + 136] = 0
                            mem[_3482 + 200] = owner
                            mem[_3482 + 232] = block.timestamp
                            mem[_3482 + 168] = 160
                            mem[_3482 + 264] = mem[96]
                            mem[_3482 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3482 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3482 + 100] = return_data.size
                            mem[_3482 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3482 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3482 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3482 + ceil32(return_data.size) + 105] = 0
                            mem[_3482 + ceil32(return_data.size) + 137] = 0
                            mem[_3482 + ceil32(return_data.size) + 201] = owner
                            mem[_3482 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3482 + ceil32(return_data.size) + 169] = 160
                            mem[_3482 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3482 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3482 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var67001 < mem[96]
                        _6989 = mem[(32 * var67001) + 128]
                        require mem[96] + -var67001 - 1 < mem[96]
                        require var67001 < mem[96]
                        mem[(32 * var67001) + 128] = mem[(32 * mem[96] + -var67001 - 1) + 140 len 20]
                        require mem[96] + -var67001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var67001 - 1) + 128] = address(_6989)
                        _7273 = mem[96]
                        s = var67001
                        idx = var67001
                        s = var67002
                        while idx + 1 < _7273 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7321] = 26
                        mem[_7321 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7345 = mem[128]
                        _7384 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7385 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7385 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7388 = mem[_7385]
                        mem[_7384 + 100 len floor32(mem[_7385])] = mem[_7385 + 32 len floor32(mem[_7385])]
                        mem[_7384 + floor32(mem[_7385]) + -(mem[_7385] % 32) + 132 len mem[_7385] % 32] = mem[_7385 + -(mem[_7385] % 32) + floor32(mem[_7385]) + 64 len mem[_7385] % 32]
                        call address(_7345).mem[_7384 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7384 + 104 len _7388 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7384 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7384 + 104] = 0
                            mem[_7384 + 136] = 0
                            mem[_7384 + 200] = owner
                            mem[_7384 + 232] = block.timestamp
                            mem[_7384 + 168] = 160
                            mem[_7384 + 264] = mem[96]
                            mem[_7384 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7384 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7384 + 100] = return_data.size
                            mem[_7384 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7384 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7384 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7384 + ceil32(return_data.size) + 105] = 0
                            mem[_7384 + ceil32(return_data.size) + 137] = 0
                            mem[_7384 + ceil32(return_data.size) + 201] = owner
                            mem[_7384 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7384 + ceil32(return_data.size) + 169] = 160
                            mem[_7384 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7384 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7384 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot sell tokens'
    else:
        if arg1 * arg2 / arg2 != arg1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg3.length) + 229 len 31]
        if sub_9774b264 < arg1 * arg2:
            revert with 0, 'Insufficient funds'
        require arg3.length - 1 < arg3.length
        _16 = mem[(32 * arg3.length - 1) + 128]
        mem[(32 * arg3.length) + 132] = this.address
        require ext_code.size(address(_16))
        staticcall address(_16).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5 != 0:
            idx = 0
            s = 0
            while idx < arg1:
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _769 = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _769) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2108 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2143 = mem[_2108]
                require mem[_2108] <= 4294967296
                require mem[_2108] + 32 <= return_data.size
                require mem[_2108 + mem[_2108]] <= 4294967296 and mem[_2108] + (32 * mem[_2108 + mem[_2108]]) + 32 <= return_data.size
                mem[_2108 + ceil32(return_data.size)] = mem[_2108 + mem[_2108]]
                _2189 = mem[_2108 + _2143]
                t = 0
                while t < 32 * _2189:
                    mem[t + _2108 + ceil32(return_data.size) + 32] = mem[t + _2108 + _2143 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2189) + _2108 + ceil32(return_data.size) + 32
                require arg3.length - 1 < mem[_2108 + ceil32(return_data.size)]
                _3233 = mem[(32 * arg3.length - 1) + _2108 + ceil32(return_data.size) + 32]
                if mem[(32 * arg3.length - 1) + _2108 + ceil32(return_data.size) + 32] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require mem[(32 * arg3.length - 1) + _2108 + ceil32(return_data.size) + 32] + s > 0
                mem[64] = (32 * _2189) + _2108 + ceil32(return_data.size) + 96
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 32] = 30
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 64] = 'SafeMath: subtraction overflow'
                if arg2 > sub_9774b264:
                    mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 100] = 32
                    idx = 0
                    while idx < 30:
                        mem[idx + (32 * _2189) + _2108 + ceil32(return_data.size) + 164] = mem[idx + (32 * _2189) + _2108 + ceil32(return_data.size) + 64]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 164] = mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 166 len 30]
                    revert with 0, 32, 30, mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 164]
                sub_9774b264 -= arg2
                mem[64] = (32 * _2189) + _2108 + ceil32(return_data.size) + 160
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 96] = 29
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 128] = 'Insufficient funds for tokens'
                if arg2 > sub_da3a0092[address(_16)]:
                    mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 164] = 32
                    idx = 0
                    while idx < 29:
                        mem[idx + (32 * _2189) + _2108 + ceil32(return_data.size) + 228] = mem[idx + (32 * _2189) + _2108 + ceil32(return_data.size) + 128]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 228] = mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 231 len 29]
                    revert with 0, 32, 29, mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 228]
                mem[0] = address(_16)
                mem[32] = 4
                sub_da3a0092[address(_16)] -= arg2
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 160] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 164] = 0
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 196] = 128
                mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 292] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + (32 * _2189) + _2108 + ceil32(return_data.size) + 324] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                call address(routerAddress).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, mem[(32 * _2189) + _2108 + ceil32(return_data.size) + 292 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot buy tokens'
                idx = idx + 1
                s = _3233 + s
                continue 
            if arg5:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_16))
                staticcall address(_16).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _807 = mem[64]
                mem[64] = mem[64] + 64
                mem[_807] = 30
                mem[_807 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s:
                    _883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_883] = 26
                    mem[_883 + 32] = 'SafeMath: division by zero'
                    _911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_911] = 30
                    mem[_911 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > 0:
                        revert with 0, 'burn too much'
                    if var62003 >= var62001 / 2:
                        _3320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3320] = 26
                        mem[_3320 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3408 = mem[128]
                        _3435 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3436 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3436 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3439 = mem[_3436]
                        mem[_3435 + 100 len floor32(mem[_3436])] = mem[_3436 + 32 len floor32(mem[_3436])]
                        mem[_3435 + floor32(mem[_3436]) + -(mem[_3436] % 32) + 132 len mem[_3436] % 32] = mem[_3436 + -(mem[_3436] % 32) + floor32(mem[_3436]) + 64 len mem[_3436] % 32]
                        call address(_3408).mem[_3435 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3435 + 104 len _3439 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3435 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3435 + 104] = 0
                            mem[_3435 + 136] = 0
                            mem[_3435 + 200] = this.address
                            mem[_3435 + 232] = block.timestamp
                            mem[_3435 + 168] = 160
                            mem[_3435 + 264] = mem[96]
                            mem[_3435 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3435 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3435 + 100] = return_data.size
                            mem[_3435 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3435 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3435 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3435 + ceil32(return_data.size) + 105] = 0
                            mem[_3435 + ceil32(return_data.size) + 137] = 0
                            mem[_3435 + ceil32(return_data.size) + 201] = this.address
                            mem[_3435 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3435 + ceil32(return_data.size) + 169] = 160
                            mem[_3435 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3435 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3435 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var64001 < mem[96]
                        _6974 = mem[(32 * var64001) + 128]
                        require mem[96] + -var64001 - 1 < mem[96]
                        require var64001 < mem[96]
                        mem[(32 * var64001) + 128] = mem[(32 * mem[96] + -var64001 - 1) + 140 len 20]
                        require mem[96] + -var64001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var64001 - 1) + 128] = address(_6974)
                        _7188 = mem[96]
                        s = var64001
                        idx = var64001
                        s = var64002
                        while idx + 1 < _7188 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7316] = 26
                        mem[_7316 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7340 = mem[128]
                        _7354 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7355 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7355 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7358 = mem[_7355]
                        mem[_7354 + 100 len floor32(mem[_7355])] = mem[_7355 + 32 len floor32(mem[_7355])]
                        mem[_7354 + floor32(mem[_7355]) + -(mem[_7355] % 32) + 132 len mem[_7355] % 32] = mem[_7355 + -(mem[_7355] % 32) + floor32(mem[_7355]) + 64 len mem[_7355] % 32]
                        call address(_7340).mem[_7354 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7354 + 104 len _7358 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7354 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7354 + 104] = 0
                            mem[_7354 + 136] = 0
                            mem[_7354 + 200] = this.address
                            mem[_7354 + 232] = block.timestamp
                            mem[_7354 + 168] = 160
                            mem[_7354 + 264] = mem[96]
                            mem[_7354 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7354 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7354 + 100] = return_data.size
                            mem[_7354 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7354 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7354 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7354 + ceil32(return_data.size) + 105] = 0
                            mem[_7354 + ceil32(return_data.size) + 137] = 0
                            mem[_7354 + ceil32(return_data.size) + 201] = this.address
                            mem[_7354 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7354 + ceil32(return_data.size) + 169] = 160
                            mem[_7354 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7354 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7354 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                else:
                    if arg4 * s / s != arg4:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_887] = 26
                    mem[_887 + 32] = 'SafeMath: division by zero'
                    _935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_935] = 30
                    mem[_935 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > arg4 * s / 100:
                        revert with 0, 'burn too much'
                    if var64003 >= var64001 / 2:
                        _3319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3319] = 26
                        mem[_3319 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3407 = mem[128]
                        _3428 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3429 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3429 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3432 = mem[_3429]
                        mem[_3428 + 100 len floor32(mem[_3429])] = mem[_3429 + 32 len floor32(mem[_3429])]
                        mem[_3428 + floor32(mem[_3429]) + -(mem[_3429] % 32) + 132 len mem[_3429] % 32] = mem[_3429 + -(mem[_3429] % 32) + floor32(mem[_3429]) + 64 len mem[_3429] % 32]
                        call address(_3407).mem[_3428 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3428 + 104 len _3432 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3428 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3428 + 104] = 0
                            mem[_3428 + 136] = 0
                            mem[_3428 + 200] = this.address
                            mem[_3428 + 232] = block.timestamp
                            mem[_3428 + 168] = 160
                            mem[_3428 + 264] = mem[96]
                            mem[_3428 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3428 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3428 + 100] = return_data.size
                            mem[_3428 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3428 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3428 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3428 + ceil32(return_data.size) + 105] = 0
                            mem[_3428 + ceil32(return_data.size) + 137] = 0
                            mem[_3428 + ceil32(return_data.size) + 201] = this.address
                            mem[_3428 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3428 + ceil32(return_data.size) + 169] = 160
                            mem[_3428 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3428 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_3428 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var66001 < mem[96]
                        _6971 = mem[(32 * var66001) + 128]
                        require mem[96] + -var66001 - 1 < mem[96]
                        require var66001 < mem[96]
                        mem[(32 * var66001) + 128] = mem[(32 * mem[96] + -var66001 - 1) + 140 len 20]
                        require mem[96] + -var66001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var66001 - 1) + 128] = address(_6971)
                        _7171 = mem[96]
                        s = var66001
                        idx = var66001
                        s = var66002
                        while idx + 1 < _7171 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7315] = 26
                        mem[_7315 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7339 = mem[128]
                        _7348 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7349 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7349 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7352 = mem[_7349]
                        mem[_7348 + 100 len floor32(mem[_7349])] = mem[_7349 + 32 len floor32(mem[_7349])]
                        mem[_7348 + floor32(mem[_7349]) + -(mem[_7349] % 32) + 132 len mem[_7349] % 32] = mem[_7349 + -(mem[_7349] % 32) + floor32(mem[_7349]) + 64 len mem[_7349] % 32]
                        call address(_7339).mem[_7348 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7348 + 104 len _7352 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7348 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7348 + 104] = 0
                            mem[_7348 + 136] = 0
                            mem[_7348 + 200] = this.address
                            mem[_7348 + 232] = block.timestamp
                            mem[_7348 + 168] = 160
                            mem[_7348 + 264] = mem[96]
                            mem[_7348 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7348 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7348 + 100] = return_data.size
                            mem[_7348 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7348 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7348 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7348 + ceil32(return_data.size) + 105] = 0
                            mem[_7348 + ceil32(return_data.size) + 137] = 0
                            mem[_7348 + ceil32(return_data.size) + 201] = this.address
                            mem[_7348 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7348 + ceil32(return_data.size) + 169] = 160
                            mem[_7348 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7348 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, mem[_7348 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot sell tokens'
        else:
            idx = 0
            s = 0
            while idx < arg1:
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _772 = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + mem[64] + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _772) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2118 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2149 = mem[_2118]
                require mem[_2118] <= 4294967296
                require mem[_2118] + 32 <= return_data.size
                require mem[_2118 + mem[_2118]] <= 4294967296 and mem[_2118] + (32 * mem[_2118 + mem[_2118]]) + 32 <= return_data.size
                mem[_2118 + ceil32(return_data.size)] = mem[_2118 + mem[_2118]]
                _2196 = mem[_2118 + _2149]
                t = 0
                while t < 32 * _2196:
                    mem[t + _2118 + ceil32(return_data.size) + 32] = mem[t + _2118 + _2149 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _2196) + _2118 + ceil32(return_data.size) + 32
                require arg3.length - 1 < mem[_2118 + ceil32(return_data.size)]
                _3240 = mem[(32 * arg3.length - 1) + _2118 + ceil32(return_data.size) + 32]
                if mem[(32 * arg3.length - 1) + _2118 + ceil32(return_data.size) + 32] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require mem[(32 * arg3.length - 1) + _2118 + ceil32(return_data.size) + 32] + s > 0
                mem[64] = (32 * _2196) + _2118 + ceil32(return_data.size) + 96
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 32] = 30
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 64] = 'SafeMath: subtraction overflow'
                if arg2 > sub_9774b264:
                    mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 100] = 32
                    idx = 0
                    while idx < 30:
                        mem[idx + (32 * _2196) + _2118 + ceil32(return_data.size) + 164] = mem[idx + (32 * _2196) + _2118 + ceil32(return_data.size) + 64]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 164] = mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 166 len 30]
                    revert with 0, 32, 30, mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 164]
                sub_9774b264 -= arg2
                mem[64] = (32 * _2196) + _2118 + ceil32(return_data.size) + 160
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 96] = 29
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 128] = 'Insufficient funds for tokens'
                if arg2 > sub_da3a0092[address(_16)]:
                    mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 164] = 32
                    idx = 0
                    while idx < 29:
                        mem[idx + (32 * _2196) + _2118 + ceil32(return_data.size) + 228] = mem[idx + (32 * _2196) + _2118 + ceil32(return_data.size) + 128]
                        idx = idx + 32
                        continue 
                    mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 228] = mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 231 len 29]
                    revert with 0, 32, 29, mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 228]
                mem[0] = address(_16)
                mem[32] = 4
                sub_da3a0092[address(_16)] -= arg2
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 160] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 164] = 0
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 228] = owner
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 260] = block.timestamp
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 196] = 128
                mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 292] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + (32 * _2196) + _2118 + ceil32(return_data.size) + 324] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(routerAddress))
                call address(routerAddress).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 0, 128, owner, block.timestamp, mem[(32 * _2196) + _2118 + ceil32(return_data.size) + 292 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot buy tokens'
                idx = idx + 1
                s = _3240 + s
                continue 
            if arg5:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_16))
                staticcall address(_16).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_810] = 30
                mem[_810 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not s:
                    _884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_884] = 26
                    mem[_884 + 32] = 'SafeMath: division by zero'
                    _916 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_916] = 30
                    mem[_916 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > 0:
                        revert with 0, 'burn too much'
                    if var65003 >= var65001 / 2:
                        _3322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3322] = 26
                        mem[_3322 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3413 = mem[128]
                        _3453 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3454 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3454 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3457 = mem[_3454]
                        mem[_3453 + 100 len floor32(mem[_3454])] = mem[_3454 + 32 len floor32(mem[_3454])]
                        mem[_3453 + floor32(mem[_3454]) + -(mem[_3454] % 32) + 132 len mem[_3454] % 32] = mem[_3454 + -(mem[_3454] % 32) + floor32(mem[_3454]) + 64 len mem[_3454] % 32]
                        call address(_3413).mem[_3453 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3453 + 104 len _3457 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3453 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3453 + 104] = 0
                            mem[_3453 + 136] = 0
                            mem[_3453 + 200] = owner
                            mem[_3453 + 232] = block.timestamp
                            mem[_3453 + 168] = 160
                            mem[_3453 + 264] = mem[96]
                            mem[_3453 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3453 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3453 + 100] = return_data.size
                            mem[_3453 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3453 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3453 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3453 + ceil32(return_data.size) + 105] = 0
                            mem[_3453 + ceil32(return_data.size) + 137] = 0
                            mem[_3453 + ceil32(return_data.size) + 201] = owner
                            mem[_3453 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3453 + ceil32(return_data.size) + 169] = 160
                            mem[_3453 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3453 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3453 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var67001 < mem[96]
                        _6980 = mem[(32 * var67001) + 128]
                        require mem[96] + -var67001 - 1 < mem[96]
                        require var67001 < mem[96]
                        mem[(32 * var67001) + 128] = mem[(32 * mem[96] + -var67001 - 1) + 140 len 20]
                        require mem[96] + -var67001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var67001 - 1) + 128] = address(_6980)
                        _7222 = mem[96]
                        s = var67001
                        idx = var67001
                        s = var67002
                        while idx + 1 < _7222 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7318] = 26
                        mem[_7318 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7342 = mem[128]
                        _7366 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7367 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7367 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7370 = mem[_7367]
                        mem[_7366 + 100 len floor32(mem[_7367])] = mem[_7367 + 32 len floor32(mem[_7367])]
                        mem[_7366 + floor32(mem[_7367]) + -(mem[_7367] % 32) + 132 len mem[_7367] % 32] = mem[_7367 + -(mem[_7367] % 32) + floor32(mem[_7367]) + 64 len mem[_7367] % 32]
                        call address(_7342).mem[_7366 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7366 + 104 len _7370 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7366 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7366 + 104] = 0
                            mem[_7366 + 136] = 0
                            mem[_7366 + 200] = owner
                            mem[_7366 + 232] = block.timestamp
                            mem[_7366 + 168] = 160
                            mem[_7366 + 264] = mem[96]
                            mem[_7366 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7366 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7366 + 100] = return_data.size
                            mem[_7366 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7366 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7366 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7366 + ceil32(return_data.size) + 105] = 0
                            mem[_7366 + ceil32(return_data.size) + 137] = 0
                            mem[_7366 + ceil32(return_data.size) + 201] = owner
                            mem[_7366 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7366 + ceil32(return_data.size) + 169] = 160
                            mem[_7366 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7366 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7366 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                else:
                    if arg4 * s / s != arg4:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _889 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_889] = 26
                    mem[_889 + 32] = 'SafeMath: division by zero'
                    _942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_942] = 30
                    mem[_942 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if s > arg4 * s / 100:
                        revert with 0, 'burn too much'
                    if var67003 >= var67001 / 2:
                        _3321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3321] = 26
                        mem[_3321 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _3412 = mem[128]
                        _3446 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _3447 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_3447 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _3450 = mem[_3447]
                        mem[_3446 + 100 len floor32(mem[_3447])] = mem[_3447 + 32 len floor32(mem[_3447])]
                        mem[_3446 + floor32(mem[_3447]) + -(mem[_3447] % 32) + 132 len mem[_3447] % 32] = mem[_3447 + -(mem[_3447] % 32) + floor32(mem[_3447]) + 64 len mem[_3447] % 32]
                        call address(_3412).mem[_3446 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_3446 + 104 len _3450 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3446 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3446 + 104] = 0
                            mem[_3446 + 136] = 0
                            mem[_3446 + 200] = owner
                            mem[_3446 + 232] = block.timestamp
                            mem[_3446 + 168] = 160
                            mem[_3446 + 264] = mem[96]
                            mem[_3446 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3446 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_3446 + 100] = return_data.size
                            mem[_3446 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_3446 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_3446 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_3446 + ceil32(return_data.size) + 105] = 0
                            mem[_3446 + ceil32(return_data.size) + 137] = 0
                            mem[_3446 + ceil32(return_data.size) + 201] = owner
                            mem[_3446 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_3446 + ceil32(return_data.size) + 169] = 160
                            mem[_3446 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3446 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_3446 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        require var69001 < mem[96]
                        _6977 = mem[(32 * var69001) + 128]
                        require mem[96] + -var69001 - 1 < mem[96]
                        require var69001 < mem[96]
                        mem[(32 * var69001) + 128] = mem[(32 * mem[96] + -var69001 - 1) + 140 len 20]
                        require mem[96] + -var69001 - 1 < mem[96]
                        mem[(32 * mem[96] + -var69001 - 1) + 128] = address(_6977)
                        _7205 = mem[96]
                        s = var69001
                        idx = var69001
                        s = var69002
                        while idx + 1 < _7205 / 2:
                            require idx + 1 < mem[96]
                            require mem[96] + -idx - 2 < mem[96]
                            require idx + 1 < mem[96]
                            mem[(32 * idx + 1) + 128] = mem[(32 * mem[96] + -idx - 2) + 140 len 20]
                            require mem[96] + -idx - 2 < mem[96]
                            mem[(32 * mem[96] + -idx - 2) + 128] = mem[(32 * idx + 2) + 140 len 20]
                            s = idx + 1
                            idx = idx + 1
                            s = mem[(32 * idx + 2) + 128]
                            continue 
                        _7317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7317] = 26
                        mem[_7317 + 32] = 'SafeMath: division by zero'
                        require 0 < mem[96]
                        _7341 = mem[128]
                        _7360 = mem[64]
                        mem[mem[64] + 36] = address(routerAddress)
                        mem[mem[64] + 68] = 0
                        _7361 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7361 + 32 len 4] = approve(address arg1, uint256 arg2)
                        _7364 = mem[_7361]
                        mem[_7360 + 100 len floor32(mem[_7361])] = mem[_7361 + 32 len floor32(mem[_7361])]
                        mem[_7360 + floor32(mem[_7361]) + -(mem[_7361] % 32) + 132 len mem[_7361] % 32] = mem[_7361 + -(mem[_7361] % 32) + floor32(mem[_7361]) + 64 len mem[_7361] % 32]
                        call address(_7341).mem[_7360 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7360 + 104 len _7364 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7360 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7360 + 104] = 0
                            mem[_7360 + 136] = 0
                            mem[_7360 + 200] = owner
                            mem[_7360 + 232] = block.timestamp
                            mem[_7360 + 168] = 160
                            mem[_7360 + 264] = mem[96]
                            mem[_7360 + 296 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7360 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_7360 + 100] = return_data.size
                            mem[_7360 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: APPROVE_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_7360 + 132]:
                                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                            mem[_7360 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_7360 + ceil32(return_data.size) + 105] = 0
                            mem[_7360 + ceil32(return_data.size) + 137] = 0
                            mem[_7360 + ceil32(return_data.size) + 201] = owner
                            mem[_7360 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_7360 + ceil32(return_data.size) + 169] = 160
                            mem[_7360 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_7360 + ceil32(return_data.size) + 297 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, owner, block.timestamp, mem[_7360 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with 0, 'Cannot sell tokens'
}



}
