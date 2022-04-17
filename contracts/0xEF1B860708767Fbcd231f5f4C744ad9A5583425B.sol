contract main {




// =====================  Runtime code  =====================


address owner;
address WETHAddress;

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'Bot: ZERO_BALANCE'
    require ext_code.size(WETHAddress)
    call WETHAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'Bot: ZERO_BALANCE'
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawEthAll(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if not eth.balance(this.address):
        revert with 0, 'Bot: ZERO_BALANCE'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}

function withdrawEth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if arg2 <= 0:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Bot: BALANCE < amount'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}

function withdrawErc20All(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if not arg1:
        revert with 0, 'Bot: ZERO_Token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Bot: ZERO_BALANCE'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function withdrawErc20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if not arg1:
        revert with 0, 'Bot: ZERO_Token'
    if arg3 <= 0:
        revert with 0, 'Bot: ZERO_ADDRESS'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Bot: BALANCE < amount'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function swapBot(uint256 arg1, address[] arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg2.length - 1 != arg3.length:
        revert with 0, 'INVALID_PATH_PAIR'
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg2.length
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[(32 * arg2.length) + 128]
            require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(64 * arg2.length) + (32 * arg3.length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < arg2.length
            require idx + 1 < arg2.length
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg2.length) + (32 * arg3.length) + 297 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + 303 len 21]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + 303 len 21]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
            idx = idx + 1
            continue 
        require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        require arg2.length - 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        if mem[(32 * arg2.length - 1) + (32 * arg2.length) + (32 * arg3.length) + 192] <= mem[(32 * arg2.length) + (32 * arg3.length) + 192]:
            revert with 0, 'AMOUNT ERROR'
        require 0 < arg2.length
        require 0 < mem[(32 * arg2.length) + 128]
        require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        mem[(64 * arg2.length) + (32 * arg3.length) + 228] = this.address
        mem[(64 * arg2.length) + (32 * arg3.length) + 260] = mem[(32 * arg2.length) + 172 len 20]
        mem[(64 * arg2.length) + (32 * arg3.length) + 292] = mem[(32 * arg2.length) + (32 * arg3.length) + 192]
        mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 100
        mem[64] = (64 * arg2.length) + (32 * arg3.length) + 324
        mem[(64 * arg2.length) + (32 * arg3.length) + 224 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * arg2.length) + (32 * arg3.length) + 324 len 96] = 0, address(this.address), mem[(64 * arg2.length) + (32 * arg3.length) + 260 len 60]
        mem[(64 * arg2.length) + (32 * arg3.length) + 448 len 4] = mem[(64 * arg2.length) + (32 * arg3.length) + 312 len 4]
        call mem[140 len 20].mem[(64 * arg2.length) + (32 * arg3.length) + 288 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg2.length) + (32 * arg3.length) + 292], mem[(64 * arg2.length) + (32 * arg3.length) + 288 len 36], mem[(64 * arg2.length) + (32 * arg3.length) + 288 len 24], mem[(64 * arg2.length) + (32 * arg3.length) + 420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * arg2.length) + (32 * arg3.length) + 428 len 20],
                            mem[(64 * arg2.length) + (32 * arg3.length) + 312 len 4],
                            mem[(64 * arg2.length) + (32 * arg3.length) + 452 len 4]
            if not arg2.length:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3309 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3454 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3518 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3518 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3518 + 36] = 0
                                mem[_3518 + 68] = _3309
                                mem[_3518 + 100] = this.address
                                mem[_3518 + 132] = 128
                                mem[_3518 + 164] = mem[_3518]
                                s = 0
                                while s < mem[_3518]:
                                    mem[s + _3518 + 196] = mem[s + _3518 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3518] % 32:
                                    require ext_code.size(address(_3454))
                                    call address(_3454).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3309, address(this.address), 128, mem[_3518 + 164 len mem[_3518] + 32]
                                else:
                                    mem[floor32(mem[_3518]) + _3518 + 196] = mem[floor32(mem[_3518]) + _3518 + -(mem[_3518] % 32) + 228 len mem[_3518] % 32]
                                    require ext_code.size(address(_3454))
                                    call address(_3454).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3309, address(this.address), 128, mem[_3518], mem[_3518 + 196 len floor32(mem[_3518]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3389 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3517 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3581 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3581 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3581 + 36] = 0
                                mem[_3581 + 68] = _3309
                                mem[_3581 + 100] = address(_3389)
                                mem[_3581 + 132] = 128
                                mem[_3581 + 164] = mem[_3581]
                                s = 0
                                while s < mem[_3581]:
                                    mem[s + _3581 + 196] = mem[s + _3581 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3581] % 32:
                                    require ext_code.size(address(_3517))
                                    call address(_3517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3309, address(_3389), 128, mem[_3581 + 164 len mem[_3581] + 32]
                                else:
                                    mem[floor32(mem[_3581]) + _3581 + 196] = mem[floor32(mem[_3581]) + _3581 + -(mem[_3581] % 32) + 228 len mem[_3581] % 32]
                                    require ext_code.size(address(_3517))
                                    call address(_3517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3309, address(_3389), 128, mem[_3581], mem[_3581 + 196 len floor32(mem[_3581]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3456 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3520 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3520 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3520 + 36] = _3309
                                mem[_3520 + 68] = 0
                                mem[_3520 + 100] = this.address
                                mem[_3520 + 132] = 128
                                mem[_3520 + 164] = mem[_3520]
                                s = 0
                                while s < mem[_3520]:
                                    mem[s + _3520 + 196] = mem[s + _3520 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3520] % 32:
                                    require ext_code.size(address(_3456))
                                    call address(_3456).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3309, 0, address(this.address), 128, mem[_3520 + 164 len mem[_3520] + 32]
                                else:
                                    mem[floor32(mem[_3520]) + _3520 + 196] = mem[floor32(mem[_3520]) + _3520 + -(mem[_3520] % 32) + 228 len mem[_3520] % 32]
                                    require ext_code.size(address(_3456))
                                    call address(_3456).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3309, 0, address(this.address), 128, mem[_3520], mem[_3520 + 196 len floor32(mem[_3520]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3391 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3519 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3585 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3585 + 36] = _3309
                                mem[_3585 + 68] = 0
                                mem[_3585 + 100] = address(_3391)
                                mem[_3585 + 132] = 128
                                mem[_3585 + 164] = mem[_3585]
                                s = 0
                                while s < mem[_3585]:
                                    mem[s + _3585 + 196] = mem[s + _3585 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3585] % 32:
                                    require ext_code.size(address(_3519))
                                    call address(_3519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3309, 0, address(_3391), 128, mem[_3585 + 164 len mem[_3585] + 32]
                                else:
                                    mem[floor32(mem[_3585]) + _3585 + 196] = mem[floor32(mem[_3585]) + _3585 + -(mem[_3585] % 32) + 228 len mem[_3585] % 32]
                                    require ext_code.size(address(_3519))
                                    call address(_3519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3309, 0, address(_3391), 128, mem[_3585], mem[_3585 + 196 len floor32(mem[_3585]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3310 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3458 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3522 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3522 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3522 + 36] = 0
                                mem[_3522 + 68] = _3310
                                mem[_3522 + 100] = this.address
                                mem[_3522 + 132] = 128
                                mem[_3522 + 164] = mem[_3522]
                                s = 0
                                while s < mem[_3522]:
                                    mem[s + _3522 + 196] = mem[s + _3522 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3522] % 32:
                                    require ext_code.size(address(_3458))
                                    call address(_3458).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3310, address(this.address), 128, mem[_3522 + 164 len mem[_3522] + 32]
                                else:
                                    mem[floor32(mem[_3522]) + _3522 + 196] = mem[floor32(mem[_3522]) + _3522 + -(mem[_3522] % 32) + 228 len mem[_3522] % 32]
                                    require ext_code.size(address(_3458))
                                    call address(_3458).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3310, address(this.address), 128, mem[_3522], mem[_3522 + 196 len floor32(mem[_3522]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3393 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3521 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3589 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3589 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3589 + 36] = 0
                                mem[_3589 + 68] = _3310
                                mem[_3589 + 100] = address(_3393)
                                mem[_3589 + 132] = 128
                                mem[_3589 + 164] = mem[_3589]
                                s = 0
                                while s < mem[_3589]:
                                    mem[s + _3589 + 196] = mem[s + _3589 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3589] % 32:
                                    require ext_code.size(address(_3521))
                                    call address(_3521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3310, address(_3393), 128, mem[_3589 + 164 len mem[_3589] + 32]
                                else:
                                    mem[floor32(mem[_3589]) + _3589 + 196] = mem[floor32(mem[_3589]) + _3589 + -(mem[_3589] % 32) + 228 len mem[_3589] % 32]
                                    require ext_code.size(address(_3521))
                                    call address(_3521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3310, address(_3393), 128, mem[_3589], mem[_3589 + 196 len floor32(mem[_3589]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3460 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3524 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3524 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3524 + 36] = _3310
                                mem[_3524 + 68] = 0
                                mem[_3524 + 100] = this.address
                                mem[_3524 + 132] = 128
                                mem[_3524 + 164] = mem[_3524]
                                s = 0
                                while s < mem[_3524]:
                                    mem[s + _3524 + 196] = mem[s + _3524 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3524] % 32:
                                    require ext_code.size(address(_3460))
                                    call address(_3460).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3310, 0, address(this.address), 128, mem[_3524 + 164 len mem[_3524] + 32]
                                else:
                                    mem[floor32(mem[_3524]) + _3524 + 196] = mem[floor32(mem[_3524]) + _3524 + -(mem[_3524] % 32) + 228 len mem[_3524] % 32]
                                    require ext_code.size(address(_3460))
                                    call address(_3460).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3310, 0, address(this.address), 128, mem[_3524], mem[_3524 + 196 len floor32(mem[_3524]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3395 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3523 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3593 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3593 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3593 + 36] = _3310
                                mem[_3593 + 68] = 0
                                mem[_3593 + 100] = address(_3395)
                                mem[_3593 + 132] = 128
                                mem[_3593 + 164] = mem[_3593]
                                s = 0
                                while s < mem[_3593]:
                                    mem[s + _3593 + 196] = mem[s + _3593 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3593] % 32:
                                    require ext_code.size(address(_3523))
                                    call address(_3523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3310, 0, address(_3395), 128, mem[_3593 + 164 len mem[_3593] + 32]
                                else:
                                    mem[floor32(mem[_3593]) + _3593 + 196] = mem[floor32(mem[_3593]) + _3593 + -(mem[_3593] % 32) + 228 len mem[_3593] % 32]
                                    require ext_code.size(address(_3523))
                                    call address(_3523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3310, 0, address(_3395), 128, mem[_3593], mem[_3593 + 196 len floor32(mem[_3593]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * arg2.length) + (32 * arg3.length) + 428 len 20],
                                mem[(64 * arg2.length) + (32 * arg3.length) + 312 len 4],
                                mem[(64 * arg2.length) + (32 * arg3.length) + 452 len 4]
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3311 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3462 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3526 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3526 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3526 + 36] = 0
                                mem[_3526 + 68] = _3311
                                mem[_3526 + 100] = this.address
                                mem[_3526 + 132] = 128
                                mem[_3526 + 164] = mem[_3526]
                                s = 0
                                while s < mem[_3526]:
                                    mem[s + _3526 + 196] = mem[s + _3526 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3526] % 32:
                                    require ext_code.size(address(_3462))
                                    call address(_3462).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3311, address(this.address), 128, mem[_3526 + 164 len mem[_3526] + 32]
                                else:
                                    mem[floor32(mem[_3526]) + _3526 + 196] = mem[floor32(mem[_3526]) + _3526 + -(mem[_3526] % 32) + 228 len mem[_3526] % 32]
                                    require ext_code.size(address(_3462))
                                    call address(_3462).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3311, address(this.address), 128, mem[_3526], mem[_3526 + 196 len floor32(mem[_3526]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3397 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3525 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3597 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3597 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3597 + 36] = 0
                                mem[_3597 + 68] = _3311
                                mem[_3597 + 100] = address(_3397)
                                mem[_3597 + 132] = 128
                                mem[_3597 + 164] = mem[_3597]
                                s = 0
                                while s < mem[_3597]:
                                    mem[s + _3597 + 196] = mem[s + _3597 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3597] % 32:
                                    require ext_code.size(address(_3525))
                                    call address(_3525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3311, address(_3397), 128, mem[_3597 + 164 len mem[_3597] + 32]
                                else:
                                    mem[floor32(mem[_3597]) + _3597 + 196] = mem[floor32(mem[_3597]) + _3597 + -(mem[_3597] % 32) + 228 len mem[_3597] % 32]
                                    require ext_code.size(address(_3525))
                                    call address(_3525).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3311, address(_3397), 128, mem[_3597], mem[_3597 + 196 len floor32(mem[_3597]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3464 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3528 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3528 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3528 + 36] = _3311
                                mem[_3528 + 68] = 0
                                mem[_3528 + 100] = this.address
                                mem[_3528 + 132] = 128
                                mem[_3528 + 164] = mem[_3528]
                                s = 0
                                while s < mem[_3528]:
                                    mem[s + _3528 + 196] = mem[s + _3528 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3528] % 32:
                                    require ext_code.size(address(_3464))
                                    call address(_3464).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3311, 0, address(this.address), 128, mem[_3528 + 164 len mem[_3528] + 32]
                                else:
                                    mem[floor32(mem[_3528]) + _3528 + 196] = mem[floor32(mem[_3528]) + _3528 + -(mem[_3528] % 32) + 228 len mem[_3528] % 32]
                                    require ext_code.size(address(_3464))
                                    call address(_3464).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3311, 0, address(this.address), 128, mem[_3528], mem[_3528 + 196 len floor32(mem[_3528]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3399 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3527 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3601 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3601 + 36] = _3311
                                mem[_3601 + 68] = 0
                                mem[_3601 + 100] = address(_3399)
                                mem[_3601 + 132] = 128
                                mem[_3601 + 164] = mem[_3601]
                                s = 0
                                while s < mem[_3601]:
                                    mem[s + _3601 + 196] = mem[s + _3601 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3601] % 32:
                                    require ext_code.size(address(_3527))
                                    call address(_3527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3311, 0, address(_3399), 128, mem[_3601 + 164 len mem[_3601] + 32]
                                else:
                                    mem[floor32(mem[_3601]) + _3601 + 196] = mem[floor32(mem[_3601]) + _3601 + -(mem[_3601] % 32) + 228 len mem[_3601] % 32]
                                    require ext_code.size(address(_3527))
                                    call address(_3527).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3311, 0, address(_3399), 128, mem[_3601], mem[_3601 + 196 len floor32(mem[_3601]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3312 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3466 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3530 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3530 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3530 + 36] = 0
                                mem[_3530 + 68] = _3312
                                mem[_3530 + 100] = this.address
                                mem[_3530 + 132] = 128
                                mem[_3530 + 164] = mem[_3530]
                                s = 0
                                while s < mem[_3530]:
                                    mem[s + _3530 + 196] = mem[s + _3530 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3530] % 32:
                                    require ext_code.size(address(_3466))
                                    call address(_3466).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3312, address(this.address), 128, mem[_3530 + 164 len mem[_3530] + 32]
                                else:
                                    mem[floor32(mem[_3530]) + _3530 + 196] = mem[floor32(mem[_3530]) + _3530 + -(mem[_3530] % 32) + 228 len mem[_3530] % 32]
                                    require ext_code.size(address(_3466))
                                    call address(_3466).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3312, address(this.address), 128, mem[_3530], mem[_3530 + 196 len floor32(mem[_3530]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3401 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3529 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3605 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3605 + 36] = 0
                                mem[_3605 + 68] = _3312
                                mem[_3605 + 100] = address(_3401)
                                mem[_3605 + 132] = 128
                                mem[_3605 + 164] = mem[_3605]
                                s = 0
                                while s < mem[_3605]:
                                    mem[s + _3605 + 196] = mem[s + _3605 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3605] % 32:
                                    require ext_code.size(address(_3529))
                                    call address(_3529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3312, address(_3401), 128, mem[_3605 + 164 len mem[_3605] + 32]
                                else:
                                    mem[floor32(mem[_3605]) + _3605 + 196] = mem[floor32(mem[_3605]) + _3605 + -(mem[_3605] % 32) + 228 len mem[_3605] % 32]
                                    require ext_code.size(address(_3529))
                                    call address(_3529).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3312, address(_3401), 128, mem[_3605], mem[_3605 + 196 len floor32(mem[_3605]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3468 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3532 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3532 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3532 + 36] = _3312
                                mem[_3532 + 68] = 0
                                mem[_3532 + 100] = this.address
                                mem[_3532 + 132] = 128
                                mem[_3532 + 164] = mem[_3532]
                                s = 0
                                while s < mem[_3532]:
                                    mem[s + _3532 + 196] = mem[s + _3532 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3532] % 32:
                                    require ext_code.size(address(_3468))
                                    call address(_3468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3312, 0, address(this.address), 128, mem[_3532 + 164 len mem[_3532] + 32]
                                else:
                                    mem[floor32(mem[_3532]) + _3532 + 196] = mem[floor32(mem[_3532]) + _3532 + -(mem[_3532] % 32) + 228 len mem[_3532] % 32]
                                    require ext_code.size(address(_3468))
                                    call address(_3468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3312, 0, address(this.address), 128, mem[_3532], mem[_3532 + 196 len floor32(mem[_3532]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3403 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3531 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3609 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3609 + 36] = _3312
                                mem[_3609 + 68] = 0
                                mem[_3609 + 100] = address(_3403)
                                mem[_3609 + 132] = 128
                                mem[_3609 + 164] = mem[_3609]
                                s = 0
                                while s < mem[_3609]:
                                    mem[s + _3609 + 196] = mem[s + _3609 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3609] % 32:
                                    require ext_code.size(address(_3531))
                                    call address(_3531).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3312, 0, address(_3403), 128, mem[_3609 + 164 len mem[_3609] + 32]
                                else:
                                    mem[floor32(mem[_3609]) + _3609 + 196] = mem[floor32(mem[_3609]) + _3609 + -(mem[_3609] % 32) + 228 len mem[_3609] % 32]
                                    require ext_code.size(address(_3531))
                                    call address(_3531).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3312, 0, address(_3403), 128, mem[_3609], mem[_3609 + 196 len floor32(mem[_3609]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (64 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 325
            mem[(64 * arg2.length) + (32 * arg3.length) + 324] = return_data.size
            mem[(64 * arg2.length) + (32 * arg3.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 429 len 28]
            if not return_data.size:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3313 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3470 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3534 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3534 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3534 + 36] = 0
                                mem[_3534 + 68] = _3313
                                mem[_3534 + 100] = this.address
                                mem[_3534 + 132] = 128
                                mem[_3534 + 164] = mem[_3534]
                                s = 0
                                while s < mem[_3534]:
                                    mem[s + _3534 + 196] = mem[s + _3534 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3534] % 32:
                                    require ext_code.size(address(_3470))
                                    call address(_3470).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3313, address(this.address), 128, mem[_3534 + 164 len mem[_3534] + 32]
                                else:
                                    mem[floor32(mem[_3534]) + _3534 + 196] = mem[floor32(mem[_3534]) + _3534 + -(mem[_3534] % 32) + 228 len mem[_3534] % 32]
                                    require ext_code.size(address(_3470))
                                    call address(_3470).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3313, address(this.address), 128, mem[_3534], mem[_3534 + 196 len floor32(mem[_3534]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3405 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3533 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3613 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3613 + 36] = 0
                                mem[_3613 + 68] = _3313
                                mem[_3613 + 100] = address(_3405)
                                mem[_3613 + 132] = 128
                                mem[_3613 + 164] = mem[_3613]
                                s = 0
                                while s < mem[_3613]:
                                    mem[s + _3613 + 196] = mem[s + _3613 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3613] % 32:
                                    require ext_code.size(address(_3533))
                                    call address(_3533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3313, address(_3405), 128, mem[_3613 + 164 len mem[_3613] + 32]
                                else:
                                    mem[floor32(mem[_3613]) + _3613 + 196] = mem[floor32(mem[_3613]) + _3613 + -(mem[_3613] % 32) + 228 len mem[_3613] % 32]
                                    require ext_code.size(address(_3533))
                                    call address(_3533).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3313, address(_3405), 128, mem[_3613], mem[_3613 + 196 len floor32(mem[_3613]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3472 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3536 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3536 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3536 + 36] = _3313
                                mem[_3536 + 68] = 0
                                mem[_3536 + 100] = this.address
                                mem[_3536 + 132] = 128
                                mem[_3536 + 164] = mem[_3536]
                                s = 0
                                while s < mem[_3536]:
                                    mem[s + _3536 + 196] = mem[s + _3536 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3536] % 32:
                                    require ext_code.size(address(_3472))
                                    call address(_3472).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3313, 0, address(this.address), 128, mem[_3536 + 164 len mem[_3536] + 32]
                                else:
                                    mem[floor32(mem[_3536]) + _3536 + 196] = mem[floor32(mem[_3536]) + _3536 + -(mem[_3536] % 32) + 228 len mem[_3536] % 32]
                                    require ext_code.size(address(_3472))
                                    call address(_3472).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3313, 0, address(this.address), 128, mem[_3536], mem[_3536 + 196 len floor32(mem[_3536]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3407 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3535 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3617 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3617 + 36] = _3313
                                mem[_3617 + 68] = 0
                                mem[_3617 + 100] = address(_3407)
                                mem[_3617 + 132] = 128
                                mem[_3617 + 164] = mem[_3617]
                                s = 0
                                while s < mem[_3617]:
                                    mem[s + _3617 + 196] = mem[s + _3617 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3617] % 32:
                                    require ext_code.size(address(_3535))
                                    call address(_3535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3313, 0, address(_3407), 128, mem[_3617 + 164 len mem[_3617] + 32]
                                else:
                                    mem[floor32(mem[_3617]) + _3617 + 196] = mem[floor32(mem[_3617]) + _3617 + -(mem[_3617] % 32) + 228 len mem[_3617] % 32]
                                    require ext_code.size(address(_3535))
                                    call address(_3535).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3313, 0, address(_3407), 128, mem[_3617], mem[_3617 + 196 len floor32(mem[_3617]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3314 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3474 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3538 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3538 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3538 + 36] = 0
                                mem[_3538 + 68] = _3314
                                mem[_3538 + 100] = this.address
                                mem[_3538 + 132] = 128
                                mem[_3538 + 164] = mem[_3538]
                                s = 0
                                while s < mem[_3538]:
                                    mem[s + _3538 + 196] = mem[s + _3538 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3538] % 32:
                                    require ext_code.size(address(_3474))
                                    call address(_3474).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3314, address(this.address), 128, mem[_3538 + 164 len mem[_3538] + 32]
                                else:
                                    mem[floor32(mem[_3538]) + _3538 + 196] = mem[floor32(mem[_3538]) + _3538 + -(mem[_3538] % 32) + 228 len mem[_3538] % 32]
                                    require ext_code.size(address(_3474))
                                    call address(_3474).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3314, address(this.address), 128, mem[_3538], mem[_3538 + 196 len floor32(mem[_3538]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3409 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3537 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3621 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3621 + 36] = 0
                                mem[_3621 + 68] = _3314
                                mem[_3621 + 100] = address(_3409)
                                mem[_3621 + 132] = 128
                                mem[_3621 + 164] = mem[_3621]
                                s = 0
                                while s < mem[_3621]:
                                    mem[s + _3621 + 196] = mem[s + _3621 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3621] % 32:
                                    require ext_code.size(address(_3537))
                                    call address(_3537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3314, address(_3409), 128, mem[_3621 + 164 len mem[_3621] + 32]
                                else:
                                    mem[floor32(mem[_3621]) + _3621 + 196] = mem[floor32(mem[_3621]) + _3621 + -(mem[_3621] % 32) + 228 len mem[_3621] % 32]
                                    require ext_code.size(address(_3537))
                                    call address(_3537).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3314, address(_3409), 128, mem[_3621], mem[_3621 + 196 len floor32(mem[_3621]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3476 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3540 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3540 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3540 + 36] = _3314
                                mem[_3540 + 68] = 0
                                mem[_3540 + 100] = this.address
                                mem[_3540 + 132] = 128
                                mem[_3540 + 164] = mem[_3540]
                                s = 0
                                while s < mem[_3540]:
                                    mem[s + _3540 + 196] = mem[s + _3540 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3540] % 32:
                                    require ext_code.size(address(_3476))
                                    call address(_3476).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3314, 0, address(this.address), 128, mem[_3540 + 164 len mem[_3540] + 32]
                                else:
                                    mem[floor32(mem[_3540]) + _3540 + 196] = mem[floor32(mem[_3540]) + _3540 + -(mem[_3540] % 32) + 228 len mem[_3540] % 32]
                                    require ext_code.size(address(_3476))
                                    call address(_3476).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3314, 0, address(this.address), 128, mem[_3540], mem[_3540 + 196 len floor32(mem[_3540]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3411 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3539 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3625 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3625 + 36] = _3314
                                mem[_3625 + 68] = 0
                                mem[_3625 + 100] = address(_3411)
                                mem[_3625 + 132] = 128
                                mem[_3625 + 164] = mem[_3625]
                                s = 0
                                while s < mem[_3625]:
                                    mem[s + _3625 + 196] = mem[s + _3625 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3625] % 32:
                                    require ext_code.size(address(_3539))
                                    call address(_3539).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3314, 0, address(_3411), 128, mem[_3625 + 164 len mem[_3625] + 32]
                                else:
                                    mem[floor32(mem[_3625]) + _3625 + 196] = mem[floor32(mem[_3625]) + _3625 + -(mem[_3625] % 32) + 228 len mem[_3625] % 32]
                                    require ext_code.size(address(_3539))
                                    call address(_3539).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3314, 0, address(_3411), 128, mem[_3625], mem[_3625 + 196 len floor32(mem[_3625]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * arg2.length) + (32 * arg3.length) + 356]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 429 len 28]
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3315 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3478 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3542 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3542 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3542 + 36] = 0
                                mem[_3542 + 68] = _3315
                                mem[_3542 + 100] = this.address
                                mem[_3542 + 132] = 128
                                mem[_3542 + 164] = mem[_3542]
                                s = 0
                                while s < mem[_3542]:
                                    mem[s + _3542 + 196] = mem[s + _3542 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3542] % 32:
                                    require ext_code.size(address(_3478))
                                    call address(_3478).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3315, address(this.address), 128, mem[_3542 + 164 len mem[_3542] + 32]
                                else:
                                    mem[floor32(mem[_3542]) + _3542 + 196] = mem[floor32(mem[_3542]) + _3542 + -(mem[_3542] % 32) + 228 len mem[_3542] % 32]
                                    require ext_code.size(address(_3478))
                                    call address(_3478).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3315, address(this.address), 128, mem[_3542], mem[_3542 + 196 len floor32(mem[_3542]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3413 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3541 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3629 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3629 + 36] = 0
                                mem[_3629 + 68] = _3315
                                mem[_3629 + 100] = address(_3413)
                                mem[_3629 + 132] = 128
                                mem[_3629 + 164] = mem[_3629]
                                s = 0
                                while s < mem[_3629]:
                                    mem[s + _3629 + 196] = mem[s + _3629 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3629] % 32:
                                    require ext_code.size(address(_3541))
                                    call address(_3541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3315, address(_3413), 128, mem[_3629 + 164 len mem[_3629] + 32]
                                else:
                                    mem[floor32(mem[_3629]) + _3629 + 196] = mem[floor32(mem[_3629]) + _3629 + -(mem[_3629] % 32) + 228 len mem[_3629] % 32]
                                    require ext_code.size(address(_3541))
                                    call address(_3541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3315, address(_3413), 128, mem[_3629], mem[_3629 + 196 len floor32(mem[_3629]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3480 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3544 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3544 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3544 + 36] = _3315
                                mem[_3544 + 68] = 0
                                mem[_3544 + 100] = this.address
                                mem[_3544 + 132] = 128
                                mem[_3544 + 164] = mem[_3544]
                                s = 0
                                while s < mem[_3544]:
                                    mem[s + _3544 + 196] = mem[s + _3544 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3544] % 32:
                                    require ext_code.size(address(_3480))
                                    call address(_3480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3315, 0, address(this.address), 128, mem[_3544 + 164 len mem[_3544] + 32]
                                else:
                                    mem[floor32(mem[_3544]) + _3544 + 196] = mem[floor32(mem[_3544]) + _3544 + -(mem[_3544] % 32) + 228 len mem[_3544] % 32]
                                    require ext_code.size(address(_3480))
                                    call address(_3480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3315, 0, address(this.address), 128, mem[_3544], mem[_3544 + 196 len floor32(mem[_3544]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3415 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3543 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3633 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3633 + 36] = _3315
                                mem[_3633 + 68] = 0
                                mem[_3633 + 100] = address(_3415)
                                mem[_3633 + 132] = 128
                                mem[_3633 + 164] = mem[_3633]
                                s = 0
                                while s < mem[_3633]:
                                    mem[s + _3633 + 196] = mem[s + _3633 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3633] % 32:
                                    require ext_code.size(address(_3543))
                                    call address(_3543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3315, 0, address(_3415), 128, mem[_3633 + 164 len mem[_3633] + 32]
                                else:
                                    mem[floor32(mem[_3633]) + _3633 + 196] = mem[floor32(mem[_3633]) + _3633 + -(mem[_3633] % 32) + 228 len mem[_3633] % 32]
                                    require ext_code.size(address(_3543))
                                    call address(_3543).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3315, 0, address(_3415), 128, mem[_3633], mem[_3633 + 196 len floor32(mem[_3633]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3316 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3482 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3546 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3546 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3546 + 36] = 0
                                mem[_3546 + 68] = _3316
                                mem[_3546 + 100] = this.address
                                mem[_3546 + 132] = 128
                                mem[_3546 + 164] = mem[_3546]
                                s = 0
                                while s < mem[_3546]:
                                    mem[s + _3546 + 196] = mem[s + _3546 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3546] % 32:
                                    require ext_code.size(address(_3482))
                                    call address(_3482).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3316, address(this.address), 128, mem[_3546 + 164 len mem[_3546] + 32]
                                else:
                                    mem[floor32(mem[_3546]) + _3546 + 196] = mem[floor32(mem[_3546]) + _3546 + -(mem[_3546] % 32) + 228 len mem[_3546] % 32]
                                    require ext_code.size(address(_3482))
                                    call address(_3482).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3316, address(this.address), 128, mem[_3546], mem[_3546 + 196 len floor32(mem[_3546]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3417 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3545 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3637 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3637 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3637 + 36] = 0
                                mem[_3637 + 68] = _3316
                                mem[_3637 + 100] = address(_3417)
                                mem[_3637 + 132] = 128
                                mem[_3637 + 164] = mem[_3637]
                                s = 0
                                while s < mem[_3637]:
                                    mem[s + _3637 + 196] = mem[s + _3637 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3637] % 32:
                                    require ext_code.size(address(_3545))
                                    call address(_3545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3316, address(_3417), 128, mem[_3637 + 164 len mem[_3637] + 32]
                                else:
                                    mem[floor32(mem[_3637]) + _3637 + 196] = mem[floor32(mem[_3637]) + _3637 + -(mem[_3637] % 32) + 228 len mem[_3637] % 32]
                                    require ext_code.size(address(_3545))
                                    call address(_3545).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3316, address(_3417), 128, mem[_3637], mem[_3637 + 196 len floor32(mem[_3637]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3484 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3548 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3548 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3548 + 36] = _3316
                                mem[_3548 + 68] = 0
                                mem[_3548 + 100] = this.address
                                mem[_3548 + 132] = 128
                                mem[_3548 + 164] = mem[_3548]
                                s = 0
                                while s < mem[_3548]:
                                    mem[s + _3548 + 196] = mem[s + _3548 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3548] % 32:
                                    require ext_code.size(address(_3484))
                                    call address(_3484).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3316, 0, address(this.address), 128, mem[_3548 + 164 len mem[_3548] + 32]
                                else:
                                    mem[floor32(mem[_3548]) + _3548 + 196] = mem[floor32(mem[_3548]) + _3548 + -(mem[_3548] % 32) + 228 len mem[_3548] % 32]
                                    require ext_code.size(address(_3484))
                                    call address(_3484).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3316, 0, address(this.address), 128, mem[_3548], mem[_3548 + 196 len floor32(mem[_3548]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3419 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3547 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3641 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3641 + 36] = _3316
                                mem[_3641 + 68] = 0
                                mem[_3641 + 100] = address(_3419)
                                mem[_3641 + 132] = 128
                                mem[_3641 + 164] = mem[_3641]
                                s = 0
                                while s < mem[_3641]:
                                    mem[s + _3641 + 196] = mem[s + _3641 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3641] % 32:
                                    require ext_code.size(address(_3547))
                                    call address(_3547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3316, 0, address(_3419), 128, mem[_3641 + 164 len mem[_3641] + 32]
                                else:
                                    mem[floor32(mem[_3641]) + _3641 + 196] = mem[floor32(mem[_3641]) + _3641 + -(mem[_3641] % 32) + 228 len mem[_3641] % 32]
                                    require ext_code.size(address(_3547))
                                    call address(_3547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3316, 0, address(_3419), 128, mem[_3641], mem[_3641 + 196 len floor32(mem[_3641]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[(32 * arg2.length) + 128]
            require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + 172 len 20])
            staticcall mem[(32 * idx) + (32 * arg2.length) + 172 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(64 * arg2.length) + (32 * arg3.length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < arg2.length
            require idx + 1 < arg2.length
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg2.length) + (32 * arg3.length) + 297 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + 303 len 21]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                if mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg2.length) + (32 * arg3.length) + 303 len 21]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg2.length) + (32 * arg3.length) + 300 len 24]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] / 997 != mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192] = 997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192])
            idx = idx + 1
            continue 
        require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        require arg2.length - 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        if mem[(32 * arg2.length - 1) + (32 * arg2.length) + (32 * arg3.length) + 192] <= mem[(32 * arg2.length) + (32 * arg3.length) + 192]:
            revert with 0, 'AMOUNT ERROR'
        require 0 < arg2.length
        require 0 < mem[(32 * arg2.length) + 128]
        require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        mem[(64 * arg2.length) + (32 * arg3.length) + 228] = this.address
        mem[(64 * arg2.length) + (32 * arg3.length) + 260] = mem[(32 * arg2.length) + 172 len 20]
        mem[(64 * arg2.length) + (32 * arg3.length) + 292] = mem[(32 * arg2.length) + (32 * arg3.length) + 192]
        mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 100
        mem[64] = (64 * arg2.length) + (32 * arg3.length) + 324
        mem[(64 * arg2.length) + (32 * arg3.length) + 224 len 4] = unknown_0x23b872dd(?????)
        mem[(64 * arg2.length) + (32 * arg3.length) + 324 len 96] = 0, address(this.address), mem[(64 * arg2.length) + (32 * arg3.length) + 260 len 60]
        mem[(64 * arg2.length) + (32 * arg3.length) + 448 len 4] = mem[(64 * arg2.length) + (32 * arg3.length) + 312 len 4]
        call mem[140 len 20].mem[(64 * arg2.length) + (32 * arg3.length) + 288 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg2.length) + (32 * arg3.length) + 292], mem[(64 * arg2.length) + (32 * arg3.length) + 288 len 36], mem[(64 * arg2.length) + (32 * arg3.length) + 288 len 24], mem[(64 * arg2.length) + (32 * arg3.length) + 420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * arg2.length) + (32 * arg3.length) + 428 len 20],
                            mem[(64 * arg2.length) + (32 * arg3.length) + 312 len 4],
                            mem[(64 * arg2.length) + (32 * arg3.length) + 452 len 4]
            if not arg2.length:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3317 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3486 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3550 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3550 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3550 + 36] = 0
                                mem[_3550 + 68] = _3317
                                mem[_3550 + 100] = this.address
                                mem[_3550 + 132] = 128
                                mem[_3550 + 164] = mem[_3550]
                                s = 0
                                while s < mem[_3550]:
                                    mem[s + _3550 + 196] = mem[s + _3550 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3550] % 32:
                                    require ext_code.size(address(_3486))
                                    call address(_3486).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3317, address(this.address), 128, mem[_3550 + 164 len mem[_3550] + 32]
                                else:
                                    mem[floor32(mem[_3550]) + _3550 + 196] = mem[floor32(mem[_3550]) + _3550 + -(mem[_3550] % 32) + 228 len mem[_3550] % 32]
                                    require ext_code.size(address(_3486))
                                    call address(_3486).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3317, address(this.address), 128, mem[_3550], mem[_3550 + 196 len floor32(mem[_3550]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3421 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3549 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3645 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3645 + 36] = 0
                                mem[_3645 + 68] = _3317
                                mem[_3645 + 100] = address(_3421)
                                mem[_3645 + 132] = 128
                                mem[_3645 + 164] = mem[_3645]
                                s = 0
                                while s < mem[_3645]:
                                    mem[s + _3645 + 196] = mem[s + _3645 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3645] % 32:
                                    require ext_code.size(address(_3549))
                                    call address(_3549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3317, address(_3421), 128, mem[_3645 + 164 len mem[_3645] + 32]
                                else:
                                    mem[floor32(mem[_3645]) + _3645 + 196] = mem[floor32(mem[_3645]) + _3645 + -(mem[_3645] % 32) + 228 len mem[_3645] % 32]
                                    require ext_code.size(address(_3549))
                                    call address(_3549).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3317, address(_3421), 128, mem[_3645], mem[_3645 + 196 len floor32(mem[_3645]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3488 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3552 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3552 + 36] = _3317
                                mem[_3552 + 68] = 0
                                mem[_3552 + 100] = this.address
                                mem[_3552 + 132] = 128
                                mem[_3552 + 164] = mem[_3552]
                                s = 0
                                while s < mem[_3552]:
                                    mem[s + _3552 + 196] = mem[s + _3552 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3552] % 32:
                                    require ext_code.size(address(_3488))
                                    call address(_3488).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3317, 0, address(this.address), 128, mem[_3552 + 164 len mem[_3552] + 32]
                                else:
                                    mem[floor32(mem[_3552]) + _3552 + 196] = mem[floor32(mem[_3552]) + _3552 + -(mem[_3552] % 32) + 228 len mem[_3552] % 32]
                                    require ext_code.size(address(_3488))
                                    call address(_3488).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3317, 0, address(this.address), 128, mem[_3552], mem[_3552 + 196 len floor32(mem[_3552]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3423 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3551 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3649 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3649 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3649 + 36] = _3317
                                mem[_3649 + 68] = 0
                                mem[_3649 + 100] = address(_3423)
                                mem[_3649 + 132] = 128
                                mem[_3649 + 164] = mem[_3649]
                                s = 0
                                while s < mem[_3649]:
                                    mem[s + _3649 + 196] = mem[s + _3649 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3649] % 32:
                                    require ext_code.size(address(_3551))
                                    call address(_3551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3317, 0, address(_3423), 128, mem[_3649 + 164 len mem[_3649] + 32]
                                else:
                                    mem[floor32(mem[_3649]) + _3649 + 196] = mem[floor32(mem[_3649]) + _3649 + -(mem[_3649] % 32) + 228 len mem[_3649] % 32]
                                    require ext_code.size(address(_3551))
                                    call address(_3551).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3317, 0, address(_3423), 128, mem[_3649], mem[_3649 + 196 len floor32(mem[_3649]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3318 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3490 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3554 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3554 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3554 + 36] = 0
                                mem[_3554 + 68] = _3318
                                mem[_3554 + 100] = this.address
                                mem[_3554 + 132] = 128
                                mem[_3554 + 164] = mem[_3554]
                                s = 0
                                while s < mem[_3554]:
                                    mem[s + _3554 + 196] = mem[s + _3554 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3554] % 32:
                                    require ext_code.size(address(_3490))
                                    call address(_3490).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3318, address(this.address), 128, mem[_3554 + 164 len mem[_3554] + 32]
                                else:
                                    mem[floor32(mem[_3554]) + _3554 + 196] = mem[floor32(mem[_3554]) + _3554 + -(mem[_3554] % 32) + 228 len mem[_3554] % 32]
                                    require ext_code.size(address(_3490))
                                    call address(_3490).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3318, address(this.address), 128, mem[_3554], mem[_3554 + 196 len floor32(mem[_3554]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3425 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3553 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3653 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3653 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3653 + 36] = 0
                                mem[_3653 + 68] = _3318
                                mem[_3653 + 100] = address(_3425)
                                mem[_3653 + 132] = 128
                                mem[_3653 + 164] = mem[_3653]
                                s = 0
                                while s < mem[_3653]:
                                    mem[s + _3653 + 196] = mem[s + _3653 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3653] % 32:
                                    require ext_code.size(address(_3553))
                                    call address(_3553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3318, address(_3425), 128, mem[_3653 + 164 len mem[_3653] + 32]
                                else:
                                    mem[floor32(mem[_3653]) + _3653 + 196] = mem[floor32(mem[_3653]) + _3653 + -(mem[_3653] % 32) + 228 len mem[_3653] % 32]
                                    require ext_code.size(address(_3553))
                                    call address(_3553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3318, address(_3425), 128, mem[_3653], mem[_3653 + 196 len floor32(mem[_3653]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3492 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3556 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3556 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3556 + 36] = _3318
                                mem[_3556 + 68] = 0
                                mem[_3556 + 100] = this.address
                                mem[_3556 + 132] = 128
                                mem[_3556 + 164] = mem[_3556]
                                s = 0
                                while s < mem[_3556]:
                                    mem[s + _3556 + 196] = mem[s + _3556 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3556] % 32:
                                    require ext_code.size(address(_3492))
                                    call address(_3492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3318, 0, address(this.address), 128, mem[_3556 + 164 len mem[_3556] + 32]
                                else:
                                    mem[floor32(mem[_3556]) + _3556 + 196] = mem[floor32(mem[_3556]) + _3556 + -(mem[_3556] % 32) + 228 len mem[_3556] % 32]
                                    require ext_code.size(address(_3492))
                                    call address(_3492).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3318, 0, address(this.address), 128, mem[_3556], mem[_3556 + 196 len floor32(mem[_3556]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3427 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3555 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3657 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3657 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3657 + 36] = _3318
                                mem[_3657 + 68] = 0
                                mem[_3657 + 100] = address(_3427)
                                mem[_3657 + 132] = 128
                                mem[_3657 + 164] = mem[_3657]
                                s = 0
                                while s < mem[_3657]:
                                    mem[s + _3657 + 196] = mem[s + _3657 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3657] % 32:
                                    require ext_code.size(address(_3555))
                                    call address(_3555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3318, 0, address(_3427), 128, mem[_3657 + 164 len mem[_3657] + 32]
                                else:
                                    mem[floor32(mem[_3657]) + _3657 + 196] = mem[floor32(mem[_3657]) + _3657 + -(mem[_3657] % 32) + 228 len mem[_3657] % 32]
                                    require ext_code.size(address(_3555))
                                    call address(_3555).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3318, 0, address(_3427), 128, mem[_3657], mem[_3657 + 196 len floor32(mem[_3657]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * arg2.length) + (32 * arg3.length) + 428 len 20],
                                mem[(64 * arg2.length) + (32 * arg3.length) + 312 len 4],
                                mem[(64 * arg2.length) + (32 * arg3.length) + 452 len 4]
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3319 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3494 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3558 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3558 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3558 + 36] = 0
                                mem[_3558 + 68] = _3319
                                mem[_3558 + 100] = this.address
                                mem[_3558 + 132] = 128
                                mem[_3558 + 164] = mem[_3558]
                                s = 0
                                while s < mem[_3558]:
                                    mem[s + _3558 + 196] = mem[s + _3558 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3558] % 32:
                                    require ext_code.size(address(_3494))
                                    call address(_3494).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3319, address(this.address), 128, mem[_3558 + 164 len mem[_3558] + 32]
                                else:
                                    mem[floor32(mem[_3558]) + _3558 + 196] = mem[floor32(mem[_3558]) + _3558 + -(mem[_3558] % 32) + 228 len mem[_3558] % 32]
                                    require ext_code.size(address(_3494))
                                    call address(_3494).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3319, address(this.address), 128, mem[_3558], mem[_3558 + 196 len floor32(mem[_3558]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3429 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3557 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3661 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3661 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3661 + 36] = 0
                                mem[_3661 + 68] = _3319
                                mem[_3661 + 100] = address(_3429)
                                mem[_3661 + 132] = 128
                                mem[_3661 + 164] = mem[_3661]
                                s = 0
                                while s < mem[_3661]:
                                    mem[s + _3661 + 196] = mem[s + _3661 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3661] % 32:
                                    require ext_code.size(address(_3557))
                                    call address(_3557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3319, address(_3429), 128, mem[_3661 + 164 len mem[_3661] + 32]
                                else:
                                    mem[floor32(mem[_3661]) + _3661 + 196] = mem[floor32(mem[_3661]) + _3661 + -(mem[_3661] % 32) + 228 len mem[_3661] % 32]
                                    require ext_code.size(address(_3557))
                                    call address(_3557).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3319, address(_3429), 128, mem[_3661], mem[_3661 + 196 len floor32(mem[_3661]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3496 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3560 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3560 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3560 + 36] = _3319
                                mem[_3560 + 68] = 0
                                mem[_3560 + 100] = this.address
                                mem[_3560 + 132] = 128
                                mem[_3560 + 164] = mem[_3560]
                                s = 0
                                while s < mem[_3560]:
                                    mem[s + _3560 + 196] = mem[s + _3560 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3560] % 32:
                                    require ext_code.size(address(_3496))
                                    call address(_3496).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3319, 0, address(this.address), 128, mem[_3560 + 164 len mem[_3560] + 32]
                                else:
                                    mem[floor32(mem[_3560]) + _3560 + 196] = mem[floor32(mem[_3560]) + _3560 + -(mem[_3560] % 32) + 228 len mem[_3560] % 32]
                                    require ext_code.size(address(_3496))
                                    call address(_3496).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3319, 0, address(this.address), 128, mem[_3560], mem[_3560 + 196 len floor32(mem[_3560]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3431 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3559 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3665 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3665 + 36] = _3319
                                mem[_3665 + 68] = 0
                                mem[_3665 + 100] = address(_3431)
                                mem[_3665 + 132] = 128
                                mem[_3665 + 164] = mem[_3665]
                                s = 0
                                while s < mem[_3665]:
                                    mem[s + _3665 + 196] = mem[s + _3665 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3665] % 32:
                                    require ext_code.size(address(_3559))
                                    call address(_3559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3319, 0, address(_3431), 128, mem[_3665 + 164 len mem[_3665] + 32]
                                else:
                                    mem[floor32(mem[_3665]) + _3665 + 196] = mem[floor32(mem[_3665]) + _3665 + -(mem[_3665] % 32) + 228 len mem[_3665] % 32]
                                    require ext_code.size(address(_3559))
                                    call address(_3559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3319, 0, address(_3431), 128, mem[_3665], mem[_3665 + 196 len floor32(mem[_3665]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3320 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3498 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3562 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3562 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3562 + 36] = 0
                                mem[_3562 + 68] = _3320
                                mem[_3562 + 100] = this.address
                                mem[_3562 + 132] = 128
                                mem[_3562 + 164] = mem[_3562]
                                s = 0
                                while s < mem[_3562]:
                                    mem[s + _3562 + 196] = mem[s + _3562 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3562] % 32:
                                    require ext_code.size(address(_3498))
                                    call address(_3498).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3320, address(this.address), 128, mem[_3562 + 164 len mem[_3562] + 32]
                                else:
                                    mem[floor32(mem[_3562]) + _3562 + 196] = mem[floor32(mem[_3562]) + _3562 + -(mem[_3562] % 32) + 228 len mem[_3562] % 32]
                                    require ext_code.size(address(_3498))
                                    call address(_3498).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3320, address(this.address), 128, mem[_3562], mem[_3562 + 196 len floor32(mem[_3562]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3433 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3561 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3669 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3669 + 36] = 0
                                mem[_3669 + 68] = _3320
                                mem[_3669 + 100] = address(_3433)
                                mem[_3669 + 132] = 128
                                mem[_3669 + 164] = mem[_3669]
                                s = 0
                                while s < mem[_3669]:
                                    mem[s + _3669 + 196] = mem[s + _3669 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3669] % 32:
                                    require ext_code.size(address(_3561))
                                    call address(_3561).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3320, address(_3433), 128, mem[_3669 + 164 len mem[_3669] + 32]
                                else:
                                    mem[floor32(mem[_3669]) + _3669 + 196] = mem[floor32(mem[_3669]) + _3669 + -(mem[_3669] % 32) + 228 len mem[_3669] % 32]
                                    require ext_code.size(address(_3561))
                                    call address(_3561).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3320, address(_3433), 128, mem[_3669], mem[_3669 + 196 len floor32(mem[_3669]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3500 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3564 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3564 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3564 + 36] = _3320
                                mem[_3564 + 68] = 0
                                mem[_3564 + 100] = this.address
                                mem[_3564 + 132] = 128
                                mem[_3564 + 164] = mem[_3564]
                                s = 0
                                while s < mem[_3564]:
                                    mem[s + _3564 + 196] = mem[s + _3564 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3564] % 32:
                                    require ext_code.size(address(_3500))
                                    call address(_3500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3320, 0, address(this.address), 128, mem[_3564 + 164 len mem[_3564] + 32]
                                else:
                                    mem[floor32(mem[_3564]) + _3564 + 196] = mem[floor32(mem[_3564]) + _3564 + -(mem[_3564] % 32) + 228 len mem[_3564] % 32]
                                    require ext_code.size(address(_3500))
                                    call address(_3500).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3320, 0, address(this.address), 128, mem[_3564], mem[_3564 + 196 len floor32(mem[_3564]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3435 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3563 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3673 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3673 + 36] = _3320
                                mem[_3673 + 68] = 0
                                mem[_3673 + 100] = address(_3435)
                                mem[_3673 + 132] = 128
                                mem[_3673 + 164] = mem[_3673]
                                s = 0
                                while s < mem[_3673]:
                                    mem[s + _3673 + 196] = mem[s + _3673 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3673] % 32:
                                    require ext_code.size(address(_3563))
                                    call address(_3563).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3320, 0, address(_3435), 128, mem[_3673 + 164 len mem[_3673] + 32]
                                else:
                                    mem[floor32(mem[_3673]) + _3673 + 196] = mem[floor32(mem[_3673]) + _3673 + -(mem[_3673] % 32) + 228 len mem[_3673] % 32]
                                    require ext_code.size(address(_3563))
                                    call address(_3563).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3320, 0, address(_3435), 128, mem[_3673], mem[_3673 + 196 len floor32(mem[_3673]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (64 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 325
            mem[(64 * arg2.length) + (32 * arg3.length) + 324] = return_data.size
            mem[(64 * arg2.length) + (32 * arg3.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 429 len 28]
            if not return_data.size:
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3321 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3502 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3566 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3566 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3566 + 36] = 0
                                mem[_3566 + 68] = _3321
                                mem[_3566 + 100] = this.address
                                mem[_3566 + 132] = 128
                                mem[_3566 + 164] = mem[_3566]
                                s = 0
                                while s < mem[_3566]:
                                    mem[s + _3566 + 196] = mem[s + _3566 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3566] % 32:
                                    require ext_code.size(address(_3502))
                                    call address(_3502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3321, address(this.address), 128, mem[_3566 + 164 len mem[_3566] + 32]
                                else:
                                    mem[floor32(mem[_3566]) + _3566 + 196] = mem[floor32(mem[_3566]) + _3566 + -(mem[_3566] % 32) + 228 len mem[_3566] % 32]
                                    require ext_code.size(address(_3502))
                                    call address(_3502).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3321, address(this.address), 128, mem[_3566], mem[_3566 + 196 len floor32(mem[_3566]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3437 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3565 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3677 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3677 + 36] = 0
                                mem[_3677 + 68] = _3321
                                mem[_3677 + 100] = address(_3437)
                                mem[_3677 + 132] = 128
                                mem[_3677 + 164] = mem[_3677]
                                s = 0
                                while s < mem[_3677]:
                                    mem[s + _3677 + 196] = mem[s + _3677 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3677] % 32:
                                    require ext_code.size(address(_3565))
                                    call address(_3565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3321, address(_3437), 128, mem[_3677 + 164 len mem[_3677] + 32]
                                else:
                                    mem[floor32(mem[_3677]) + _3677 + 196] = mem[floor32(mem[_3677]) + _3677 + -(mem[_3677] % 32) + 228 len mem[_3677] % 32]
                                    require ext_code.size(address(_3565))
                                    call address(_3565).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3321, address(_3437), 128, mem[_3677], mem[_3677 + 196 len floor32(mem[_3677]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3504 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3568 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3568 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3568 + 36] = _3321
                                mem[_3568 + 68] = 0
                                mem[_3568 + 100] = this.address
                                mem[_3568 + 132] = 128
                                mem[_3568 + 164] = mem[_3568]
                                s = 0
                                while s < mem[_3568]:
                                    mem[s + _3568 + 196] = mem[s + _3568 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3568] % 32:
                                    require ext_code.size(address(_3504))
                                    call address(_3504).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3321, 0, address(this.address), 128, mem[_3568 + 164 len mem[_3568] + 32]
                                else:
                                    mem[floor32(mem[_3568]) + _3568 + 196] = mem[floor32(mem[_3568]) + _3568 + -(mem[_3568] % 32) + 228 len mem[_3568] % 32]
                                    require ext_code.size(address(_3504))
                                    call address(_3504).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3321, 0, address(this.address), 128, mem[_3568], mem[_3568 + 196 len floor32(mem[_3568]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3439 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3567 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3681 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3681 + 36] = _3321
                                mem[_3681 + 68] = 0
                                mem[_3681 + 100] = address(_3439)
                                mem[_3681 + 132] = 128
                                mem[_3681 + 164] = mem[_3681]
                                s = 0
                                while s < mem[_3681]:
                                    mem[s + _3681 + 196] = mem[s + _3681 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3681] % 32:
                                    require ext_code.size(address(_3567))
                                    call address(_3567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3321, 0, address(_3439), 128, mem[_3681 + 164 len mem[_3681] + 32]
                                else:
                                    mem[floor32(mem[_3681]) + _3681 + 196] = mem[floor32(mem[_3681]) + _3681 + -(mem[_3681] % 32) + 228 len mem[_3681] % 32]
                                    require ext_code.size(address(_3567))
                                    call address(_3567).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3321, 0, address(_3439), 128, mem[_3681], mem[_3681 + 196 len floor32(mem[_3681]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3322 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3506 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3570 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3570 + 36] = 0
                                mem[_3570 + 68] = _3322
                                mem[_3570 + 100] = this.address
                                mem[_3570 + 132] = 128
                                mem[_3570 + 164] = mem[_3570]
                                s = 0
                                while s < mem[_3570]:
                                    mem[s + _3570 + 196] = mem[s + _3570 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3570] % 32:
                                    require ext_code.size(address(_3506))
                                    call address(_3506).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3322, address(this.address), 128, mem[_3570 + 164 len mem[_3570] + 32]
                                else:
                                    mem[floor32(mem[_3570]) + _3570 + 196] = mem[floor32(mem[_3570]) + _3570 + -(mem[_3570] % 32) + 228 len mem[_3570] % 32]
                                    require ext_code.size(address(_3506))
                                    call address(_3506).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3322, address(this.address), 128, mem[_3570], mem[_3570 + 196 len floor32(mem[_3570]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3441 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3569 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3685 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3685 + 36] = 0
                                mem[_3685 + 68] = _3322
                                mem[_3685 + 100] = address(_3441)
                                mem[_3685 + 132] = 128
                                mem[_3685 + 164] = mem[_3685]
                                s = 0
                                while s < mem[_3685]:
                                    mem[s + _3685 + 196] = mem[s + _3685 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3685] % 32:
                                    require ext_code.size(address(_3569))
                                    call address(_3569).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3322, address(_3441), 128, mem[_3685 + 164 len mem[_3685] + 32]
                                else:
                                    mem[floor32(mem[_3685]) + _3685 + 196] = mem[floor32(mem[_3685]) + _3685 + -(mem[_3685] % 32) + 228 len mem[_3685] % 32]
                                    require ext_code.size(address(_3569))
                                    call address(_3569).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3322, address(_3441), 128, mem[_3685], mem[_3685 + 196 len floor32(mem[_3685]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3508 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3572 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3572 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3572 + 36] = _3322
                                mem[_3572 + 68] = 0
                                mem[_3572 + 100] = this.address
                                mem[_3572 + 132] = 128
                                mem[_3572 + 164] = mem[_3572]
                                s = 0
                                while s < mem[_3572]:
                                    mem[s + _3572 + 196] = mem[s + _3572 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3572] % 32:
                                    require ext_code.size(address(_3508))
                                    call address(_3508).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3322, 0, address(this.address), 128, mem[_3572 + 164 len mem[_3572] + 32]
                                else:
                                    mem[floor32(mem[_3572]) + _3572 + 196] = mem[floor32(mem[_3572]) + _3572 + -(mem[_3572] % 32) + 228 len mem[_3572] % 32]
                                    require ext_code.size(address(_3508))
                                    call address(_3508).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3322, 0, address(this.address), 128, mem[_3572], mem[_3572 + 196 len floor32(mem[_3572]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3443 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3571 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3689 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3689 + 36] = _3322
                                mem[_3689 + 68] = 0
                                mem[_3689 + 100] = address(_3443)
                                mem[_3689 + 132] = 128
                                mem[_3689 + 164] = mem[_3689]
                                s = 0
                                while s < mem[_3689]:
                                    mem[s + _3689 + 196] = mem[s + _3689 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3689] % 32:
                                    require ext_code.size(address(_3571))
                                    call address(_3571).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3322, 0, address(_3443), 128, mem[_3689 + 164 len mem[_3689] + 32]
                                else:
                                    mem[floor32(mem[_3689]) + _3689 + 196] = mem[floor32(mem[_3689]) + _3689 + -(mem[_3689] % 32) + 228 len mem[_3689] % 32]
                                    require ext_code.size(address(_3571))
                                    call address(_3571).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3322, 0, address(_3443), 128, mem[_3689], mem[_3689 + 196 len floor32(mem[_3689]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(64 * arg2.length) + (32 * arg3.length) + 356]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 429 len 28]
                idx = 0
                while idx < arg2.length - 1:
                    require idx < mem[96]
                    require idx + 1 < mem[96]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3323 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3510 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3574 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3574 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3574 + 36] = 0
                                mem[_3574 + 68] = _3323
                                mem[_3574 + 100] = this.address
                                mem[_3574 + 132] = 128
                                mem[_3574 + 164] = mem[_3574]
                                s = 0
                                while s < mem[_3574]:
                                    mem[s + _3574 + 196] = mem[s + _3574 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3574] % 32:
                                    require ext_code.size(address(_3510))
                                    call address(_3510).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3323, address(this.address), 128, mem[_3574 + 164 len mem[_3574] + 32]
                                else:
                                    mem[floor32(mem[_3574]) + _3574 + 196] = mem[floor32(mem[_3574]) + _3574 + -(mem[_3574] % 32) + 228 len mem[_3574] % 32]
                                    require ext_code.size(address(_3510))
                                    call address(_3510).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3323, address(this.address), 128, mem[_3574], mem[_3574 + 196 len floor32(mem[_3574]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3445 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3573 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3693 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3693 + 36] = 0
                                mem[_3693 + 68] = _3323
                                mem[_3693 + 100] = address(_3445)
                                mem[_3693 + 132] = 128
                                mem[_3693 + 164] = mem[_3693]
                                s = 0
                                while s < mem[_3693]:
                                    mem[s + _3693 + 196] = mem[s + _3693 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3693] % 32:
                                    require ext_code.size(address(_3573))
                                    call address(_3573).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3323, address(_3445), 128, mem[_3693 + 164 len mem[_3693] + 32]
                                else:
                                    mem[floor32(mem[_3693]) + _3693 + 196] = mem[floor32(mem[_3693]) + _3693 + -(mem[_3693] % 32) + 228 len mem[_3693] % 32]
                                    require ext_code.size(address(_3573))
                                    call address(_3573).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3323, address(_3445), 128, mem[_3693], mem[_3693 + 196 len floor32(mem[_3693]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3512 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3576 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3576 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3576 + 36] = _3323
                                mem[_3576 + 68] = 0
                                mem[_3576 + 100] = this.address
                                mem[_3576 + 132] = 128
                                mem[_3576 + 164] = mem[_3576]
                                s = 0
                                while s < mem[_3576]:
                                    mem[s + _3576 + 196] = mem[s + _3576 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3576] % 32:
                                    require ext_code.size(address(_3512))
                                    call address(_3512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3323, 0, address(this.address), 128, mem[_3576 + 164 len mem[_3576] + 32]
                                else:
                                    mem[floor32(mem[_3576]) + _3576 + 196] = mem[floor32(mem[_3576]) + _3576 + -(mem[_3576] % 32) + 228 len mem[_3576] % 32]
                                    require ext_code.size(address(_3512))
                                    call address(_3512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3323, 0, address(this.address), 128, mem[_3576], mem[_3576 + 196 len floor32(mem[_3576]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3447 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3575 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3697 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3697 + 36] = _3323
                                mem[_3697 + 68] = 0
                                mem[_3697 + 100] = address(_3447)
                                mem[_3697 + 132] = 128
                                mem[_3697 + 164] = mem[_3697]
                                s = 0
                                while s < mem[_3697]:
                                    mem[s + _3697 + 196] = mem[s + _3697 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3697] % 32:
                                    require ext_code.size(address(_3575))
                                    call address(_3575).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3323, 0, address(_3447), 128, mem[_3697 + 164 len mem[_3697] + 32]
                                else:
                                    mem[floor32(mem[_3697]) + _3697 + 196] = mem[floor32(mem[_3697]) + _3697 + -(mem[_3697] % 32) + 228 len mem[_3697] % 32]
                                    require ext_code.size(address(_3575))
                                    call address(_3575).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3323, 0, address(_3447), 128, mem[_3697], mem[_3697 + 196 len floor32(mem[_3697]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                        _3324 = mem[(32 * idx + 1) + (32 * arg2.length) + (32 * arg3.length) + 192]
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3514 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3578 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3578 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3578 + 36] = 0
                                mem[_3578 + 68] = _3324
                                mem[_3578 + 100] = this.address
                                mem[_3578 + 132] = 128
                                mem[_3578 + 164] = mem[_3578]
                                s = 0
                                while s < mem[_3578]:
                                    mem[s + _3578 + 196] = mem[s + _3578 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3578] % 32:
                                    require ext_code.size(address(_3514))
                                    call address(_3514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3324, address(this.address), 128, mem[_3578 + 164 len mem[_3578] + 32]
                                else:
                                    mem[floor32(mem[_3578]) + _3578 + 196] = mem[floor32(mem[_3578]) + _3578 + -(mem[_3578] % 32) + 228 len mem[_3578] % 32]
                                    require ext_code.size(address(_3514))
                                    call address(_3514).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3324, address(this.address), 128, mem[_3578], mem[_3578 + 196 len floor32(mem[_3578]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3449 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3577 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3701 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3701 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3701 + 36] = 0
                                mem[_3701 + 68] = _3324
                                mem[_3701 + 100] = address(_3449)
                                mem[_3701 + 132] = 128
                                mem[_3701 + 164] = mem[_3701]
                                s = 0
                                while s < mem[_3701]:
                                    mem[s + _3701 + 196] = mem[s + _3701 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3701] % 32:
                                    require ext_code.size(address(_3577))
                                    call address(_3577).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3324, address(_3449), 128, mem[_3701 + 164 len mem[_3701] + 32]
                                else:
                                    mem[floor32(mem[_3701]) + _3701 + 196] = mem[floor32(mem[_3701]) + _3701 + -(mem[_3701] % 32) + 228 len mem[_3701] % 32]
                                    require ext_code.size(address(_3577))
                                    call address(_3577).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3324, address(_3449), 128, mem[_3701], mem[_3701 + 196 len floor32(mem[_3701]) + 32]
                        else:
                            if idx >= mem[96] - 2:
                                require idx < mem[(32 * arg2.length) + 128]
                                _3516 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3580 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3580 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3580 + 36] = _3324
                                mem[_3580 + 68] = 0
                                mem[_3580 + 100] = this.address
                                mem[_3580 + 132] = 128
                                mem[_3580 + 164] = mem[_3580]
                                s = 0
                                while s < mem[_3580]:
                                    mem[s + _3580 + 196] = mem[s + _3580 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3580] % 32:
                                    require ext_code.size(address(_3516))
                                    call address(_3516).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3324, 0, address(this.address), 128, mem[_3580 + 164 len mem[_3580] + 32]
                                else:
                                    mem[floor32(mem[_3580]) + _3580 + 196] = mem[floor32(mem[_3580]) + _3580 + -(mem[_3580] % 32) + 228 len mem[_3580] % 32]
                                    require ext_code.size(address(_3516))
                                    call address(_3516).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3324, 0, address(this.address), 128, mem[_3580], mem[_3580 + 196 len floor32(mem[_3580]) + 32]
                            else:
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                _3451 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                                require idx < mem[(32 * arg2.length) + 128]
                                _3579 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                _3705 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3705 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3705 + 36] = _3324
                                mem[_3705 + 68] = 0
                                mem[_3705 + 100] = address(_3451)
                                mem[_3705 + 132] = 128
                                mem[_3705 + 164] = mem[_3705]
                                s = 0
                                while s < mem[_3705]:
                                    mem[s + _3705 + 196] = mem[s + _3705 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_3705] % 32:
                                    require ext_code.size(address(_3579))
                                    call address(_3579).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3324, 0, address(_3451), 128, mem[_3705 + 164 len mem[_3705] + 32]
                                else:
                                    mem[floor32(mem[_3705]) + _3705 + 196] = mem[floor32(mem[_3705]) + _3705 + -(mem[_3705] % 32) + 228 len mem[_3705] % 32]
                                    require ext_code.size(address(_3579))
                                    call address(_3579).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3324, 0, address(_3451), 128, mem[_3705], mem[_3705 + 196 len floor32(mem[_3705]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}



}
