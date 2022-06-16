contract main {




// =====================  Runtime code  =====================


address sub_cc329cd7Address;
address sub_41c125eaAddress;
address hardwareWalletAddress;
address sub_21d7e452Address;
address sub_7a77735dAddress;
address sub_51f78af9Address;
address usdtAddress;
address usdcAddress;
address sub_f973c3d5Address;
address adminAddress;
mapping of address sub_30296ae5;

function sub_21d7e452(?) {
    return sub_21d7e452Address
}

function usdt() {
    return usdtAddress
}

function sub_30296ae5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_30296ae5[arg1]
}

function usdc() {
    return usdcAddress
}

function sub_41c125ea(?) {
    return sub_41c125eaAddress
}

function sub_51f78af9(?) {
    return sub_51f78af9Address
}

function sub_7a77735d(?) {
    return sub_7a77735dAddress
}

function sub_cc329cd7(?) {
    return sub_cc329cd7Address
}

function hardwareWallet() {
    return hardwareWalletAddress
}

function admin() {
    return adminAddress
}

function sub_f973c3d5(?) {
    return sub_f973c3d5Address
}

function sub_fc512c5d(?) {
    if hardwareWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by secure wallet.'
    adminAddress = 0
}

function updateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if hardwareWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by secure wallet.'
    adminAddress = arg1
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'Transaction undervalued.'
    require ext_code.size(sub_41c125eaAddress)
    call sub_41c125eaAddress.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72b45277(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    if not sub_30296ae5[address(arg1)]:
        revert with 0, 'Unsupported token'
    require ext_code.size(sub_30296ae5[address(arg1)])
    call sub_30296ae5[address(arg1)].mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9a7e4af7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    if not sub_30296ae5[address(arg1)]:
        revert with 0, 'Unsupported token'
    require ext_code.size(sub_30296ae5[address(arg1)])
    call sub_30296ae5[address(arg1)].borrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8780e5e2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    if not sub_30296ae5[address(arg1)]:
        revert with 0, 'Unsupported token'
    require ext_code.size(sub_30296ae5[address(arg1)])
    call sub_30296ae5[address(arg1)].repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_81a65bf5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    if not sub_30296ae5[address(arg1)]:
        revert with 0, 'Unsupported token'
    require ext_code.size(sub_30296ae5[address(arg1)])
    call sub_30296ae5[address(arg1)].redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOut(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args hardwareWalletAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function curveSwap() {
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    require ext_code.size(sub_51f78af9Address)
    call sub_51f78af9Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_21d7e452Address)
    call sub_21d7e452Address.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 1, ext_call.return_data[0], 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_21db1836(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    require ext_code.size(address(arg1))
    call address(arg1).balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args hardwareWalletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fff429ab(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == adminAddress:
        mem[96] = 3
        mem[128] = usdcAddress
        mem[160] = sub_41c125eaAddress
        mem[192] = sub_51f78af9Address
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = 50
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = this.address
        mem[356] = -1
        require ext_code.size(sub_f973c3d5Address)
        call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 50, Array(len=3, data=mem[420 len 96]), address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _35 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _37 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _35 + (32 * _37) + 32 <= return_data.size
        idx = 0
        s = _35 + 256
        t = ceil32(return_data.size) + 256
        while idx < _37:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
        mem[96] = 3
        mem[128] = usdcAddress
        mem[160] = sub_41c125eaAddress
        mem[192] = sub_51f78af9Address
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = 50
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = this.address
        mem[356] = -1
        require ext_code.size(sub_f973c3d5Address)
        call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 50, Array(len=3, data=mem[420 len 96]), address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _36 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _38 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _36 + (32 * _38) + 32 <= return_data.size
        idx = 0
        s = _36 + 256
        t = ceil32(return_data.size) + 256
        while idx < _38:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function sub_7ba0d31f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == adminAddress:
        mem[96] = 3
        mem[128] = usdcAddress
        mem[160] = sub_41c125eaAddress
        mem[192] = sub_51f78af9Address
        mem[0] = usdcAddress
        mem[32] = 10
        require ext_code.size(sub_30296ae5[stor7])
        call sub_30296ae5[stor7].borrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = 50
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = this.address
        mem[356] = -1
        require ext_code.size(sub_f973c3d5Address)
        call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 50, Array(len=3, data=mem[420 len 96]), address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _67 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _69 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _67 + (32 * _69) + 32 <= return_data.size
        idx = 0
        s = _67 + 256
        t = ceil32(return_data.size) + 256
        while idx < _69:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _69 < 1:
            revert with 'NH{q', 17
        if _69 - 1 >= _69:
            revert with 'NH{q', 50
        _107 = mem[(32 * _69 - 1) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = _107
        mem[mem[64] + 100] = 5
        require ext_code.size(sub_21d7e452Address)
        call sub_21d7e452Address.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 1, _107, 5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_113] == mem[_113]
        require ext_code.size(sub_30296ae5[stor7])
        if mem[_113] <= arg1:
            call sub_30296ae5[stor7].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[_113]
        else:
            call sub_30296ae5[stor7].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
    else:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
        mem[96] = 3
        mem[128] = usdcAddress
        mem[160] = sub_41c125eaAddress
        mem[192] = sub_51f78af9Address
        mem[0] = usdcAddress
        mem[32] = 10
        require ext_code.size(sub_30296ae5[stor7])
        call sub_30296ae5[stor7].borrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg1
        mem[260] = 50
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = this.address
        mem[356] = -1
        require ext_code.size(sub_f973c3d5Address)
        call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 50, Array(len=3, data=mem[420 len 96]), address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _68 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _70 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _68 + (32 * _70) + 32 <= return_data.size
        idx = 0
        s = _68 + 256
        t = ceil32(return_data.size) + 256
        while idx < _70:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _70 < 1:
            revert with 'NH{q', 17
        if _70 - 1 >= _70:
            revert with 'NH{q', 50
        _109 = mem[(32 * _70 - 1) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = _109
        mem[mem[64] + 100] = 5
        require ext_code.size(sub_21d7e452Address)
        call sub_21d7e452Address.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 1, _109, 5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_114] == mem[_114]
        require ext_code.size(sub_30296ae5[stor7])
        if mem[_114] <= arg1:
            call sub_30296ae5[stor7].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[_114]
        else:
            call sub_30296ae5[stor7].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
