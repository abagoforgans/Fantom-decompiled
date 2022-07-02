contract main {




// =====================  Runtime code  =====================


mapping of uint256 deposits;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
uint256 hardcap;
uint256 genesisBlock;

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
    require arg1 <= 200000 * 10^18
    require arg1 >= 100000 * 10^18
    if hardcap:
        require arg1 < hardcap
    Mask(96, 0, stor1.field_160) = 1
    hardcap = arg1
}

function triggerLaunch() {
    require msg.sender == address(stor1.field_0)
    genesisBlock = block.number
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc)
    call 0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 1000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), eth.balance(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).mint(address arg1) with:
         gas gas_remaining wei
        args 0x117258be971488976113f4055d2841c9e6a9d77f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x117258be971488976113f4055d2841c9e6a9d77f)
    call 0x117258be971488976113f4055d2841c9e6a9d77f.genesis(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args eth.balance(this.address), address(ext_call.return_data[0]), block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(stor1.field_0) = 0
    hardcap = 0
}

function sub_fd3ba800(?) payable {
    require bool(uint8(stor1.field_160)) == 1
    call address(stor1.field_0) with:
       value msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    deposits[address(msg.sender)] = deposits[address(msg.sender)] + msg.value - (msg.value / 100)
    if eth.balance(this.address) > hardcap:
        genesisBlock = block.number
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
            call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.createPair(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc)
        call 0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 1000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(address arg1) with:
             gas gas_remaining wei
            args 0x117258be971488976113f4055d2841c9e6a9d77f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x117258be971488976113f4055d2841c9e6a9d77f)
        call 0x117258be971488976113f4055d2841c9e6a9d77f.genesis(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args eth.balance(this.address), address(ext_call.return_data[0]), block.number
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        address(stor1.field_0) = 0
        hardcap = 0
}



}
