contract main {




// =====================  Runtime code  =====================


mapping of uint256 deposits;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;
uint256 hardcap;
uint256 genesisBlock;
uint256 stor4;
uint32 stor5;
address stor5;

function genesisBlock() {
    return genesisBlock
}

function hardcap() {
    return hardcap
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function startLGE(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor1.field_0)
    if hardcap:
        require arg1 < hardcap
    Mask(96, 0, stor1.field_160) = 1
    hardcap = arg1
}

function sub_2d1d2744(?) {
    require msg.sender == address(stor1.field_0)
    if bool(uint8(stor1.field_168)) == 1:
        uint8(stor1.field_168) = 0
    else:
        Mask(88, 0, stor1.field_168) = 1
        uint8(stor1.field_160) = 0
}

function withdraw() {
    require bool(uint8(stor1.field_168)) == 1
    require deposits[address(msg.sender)] > 0
    require stor4 != 1
    stor4 = 1
    call msg.sender with:
       value deposits[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4 = 0
}

function sub_539aa3af(?) {
    require msg.sender == address(stor1.field_0)
    require eth.balance(this.address) > 0
    genesisBlock = block.number
    call address(stor1.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor5))
    call address(stor5).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor1.field_0), 100000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor1.field_160) = 0
}

function triggerLaunch() {
    require msg.sender == address(stor1.field_0)
    genesisBlock = block.number
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(stor5), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(stor5), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, uint32(stor5), 100000 * 10^18, 0, 0, 0x800b51e28d69268d34e2875232592be4a177a9e3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x800b51e28d69268d34e2875232592be4a177a9e3)
    call 0x800b51e28d69268d34e2875232592be4a177a9e3.0x9a48b7ba with:
         gas gas_remaining wei
        args eth.balance(this.address), address(ext_call.return_data[0]), block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor1.field_160) = 0
}

function sub_fd3ba800(?) payable {
    require bool(uint8(stor1.field_160)) == 1
    call address(stor1.field_0) with:
       value msg.value / 20 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    deposits[address(msg.sender)] = deposits[address(msg.sender)] + msg.value - (msg.value / 20)
    if eth.balance(this.address) >= hardcap:
        genesisBlock = block.number
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(stor5), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.createPair(address arg1, address arg2) with:
                 gas gas_remaining wei
                args address(stor5), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor5), 100000 * 10^18, 0, 0, 0x800b51e28d69268d34e2875232592be4a177a9e3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(0x800b51e28d69268d34e2875232592be4a177a9e3)
        call 0x800b51e28d69268d34e2875232592be4a177a9e3.0x9a48b7ba with:
             gas gas_remaining wei
            args eth.balance(this.address), address(ext_call.return_data[0]), block.number
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(stor1.field_160) = 0
    else:
        if block.number >= 20300000:
            genesisBlock = block.number
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(stor5), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.createPair(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(stor5), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(stor5), 100000 * 10^18, 0, 0, 0x800b51e28d69268d34e2875232592be4a177a9e3, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(0x800b51e28d69268d34e2875232592be4a177a9e3)
            call 0x800b51e28d69268d34e2875232592be4a177a9e3.0x9a48b7ba with:
                 gas gas_remaining wei
                args eth.balance(this.address), address(ext_call.return_data[0]), block.number
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint8(stor1.field_160) = 0
}



}
