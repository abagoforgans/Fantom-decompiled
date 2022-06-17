contract main {




// =====================  Runtime code  =====================


address wBTCAddress;
address sub_41c125eaAddress;
address sub_51f78af9Address;
address usdtAddress;
address usdcAddress;
address sub_14671a29Address;
address linkAddress;
address sub_4f39059cAddress;
address sub_cc329cd7Address;
address hardwareWalletAddress;
address sub_21d7e452Address;
address sub_7a77735dAddress;
address sub_f973c3d5Address;
address sub_086129e5Address;
address sub_4fa4a865Address;
address adminAddress;
mapping of address sub_30296ae5;

function sub_086129e5(?) payable {
    return sub_086129e5Address
}

function sub_14671a29(?) payable {
    return sub_14671a29Address
}

function link() payable {
    return linkAddress
}

function sub_21d7e452(?) payable {
    return sub_21d7e452Address
}

function usdt() payable {
    return usdtAddress
}

function sub_30296ae5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_30296ae5[arg1]
}

function usdc() payable {
    return usdcAddress
}

function sub_41c125ea(?) payable {
    return sub_41c125eaAddress
}

function sub_4f39059c(?) payable {
    return sub_4f39059cAddress
}

function sub_4fa4a865(?) payable {
    return sub_4fa4a865Address
}

function sub_51f78af9(?) payable {
    return sub_51f78af9Address
}

function sub_7a77735d(?) payable {
    return sub_7a77735dAddress
}

function wBTC() payable {
    return wBTCAddress
}

function sub_cc329cd7(?) payable {
    return sub_cc329cd7Address
}

function hardwareWallet() payable {
    return hardwareWalletAddress
}

function admin() payable {
    return adminAddress
}

function sub_f973c3d5(?) payable {
    return sub_f973c3d5Address
}

function _fallback() payable {
    revert
}

function updateAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if hardwareWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only be called by secure wallet.'
    adminAddress = arg1
}

function sub_72b45277(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    if not sub_30296ae5[address(arg1)]:
        revert with 0, 'Unsupported token'
    require ext_code.size(sub_30296ae5[address(arg1)])
    call sub_30296ae5[address(arg1)].0xa0712d68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9a7e4af7(?) payable {
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

function transferOut(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args hardwareWalletAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8780e5e2(?) payable {
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

function sub_81a65bf5(?) payable {
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

function sub_21db1836(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    require ext_code.size(address(arg1))
    call address(arg1).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args hardwareWalletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claimRewards() payable {
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    require ext_code.size(sub_cc329cd7Address)
    call sub_cc329cd7Address.claimComp(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if adminAddress != msg.sender:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
    require ext_code.size(sub_4fa4a865Address)
    call sub_4fa4a865Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_4fa4a865Address)
    call sub_4fa4a865Address.0xa9059cbb with:
         gas gas_remaining wei
        args hardwareWalletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e9725b12(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == adminAddress:
        mem[96] = 3
        mem[128] = usdcAddress
        mem[160] = sub_41c125eaAddress
        mem[192] = sub_51f78af9Address
        mem[0] = usdcAddress
        mem[32] = 16
        require ext_code.size(sub_30296ae5[stor4])
        call sub_30296ae5[stor4].borrow(uint256 arg1) with:
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
        _65 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _67 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _65 + (32 * _67) + 32 <= return_data.size
        idx = 0
        s = _65 + 256
        t = ceil32(return_data.size) + 256
        while idx < _67:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _67 < 1:
            revert with 'NH{q', 17
        if _67 - 1 >= _67:
            revert with 'NH{q', 50
        _103 = mem[(32 * _67 - 1) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = _103
        mem[mem[64] + 100] = 5
        require ext_code.size(sub_21d7e452Address)
        call sub_21d7e452Address.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 1, _103, 5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == mem[_109]
        if mem[_109] <= arg1:
            revert with 0, 'Not Profitable'
    else:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
        mem[96] = 3
        mem[128] = usdcAddress
        mem[160] = sub_41c125eaAddress
        mem[192] = sub_51f78af9Address
        mem[0] = usdcAddress
        mem[32] = 16
        require ext_code.size(sub_30296ae5[stor4])
        call sub_30296ae5[stor4].borrow(uint256 arg1) with:
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
        _66 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _68 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _66 + (32 * _68) + 32 <= return_data.size
        idx = 0
        s = _66 + 256
        t = ceil32(return_data.size) + 256
        while idx < _68:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _68 < 1:
            revert with 'NH{q', 17
        if _68 - 1 >= _68:
            revert with 'NH{q', 50
        _105 = mem[(32 * _68 - 1) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = _105
        mem[mem[64] + 100] = 5
        require ext_code.size(sub_21d7e452Address)
        call sub_21d7e452Address.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 1, _105, 5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_110] == mem[_110]
        if mem[_110] <= arg1:
            revert with 0, 'Not Profitable'
    require ext_code.size(sub_30296ae5[stor4])
    call sub_30296ae5[stor4].repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_61580e91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == adminAddress:
        mem[96] = 3
        mem[128] = sub_51f78af9Address
        mem[160] = sub_41c125eaAddress
        mem[192] = usdcAddress
        mem[0] = sub_51f78af9Address
        mem[32] = 16
        require ext_code.size(sub_30296ae5[stor2])
        call sub_30296ae5[stor2].borrow(uint256 arg1) with:
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
        _65 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _67 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _65 + (32 * _67) + 32 <= return_data.size
        idx = 0
        s = _65 + 256
        t = ceil32(return_data.size) + 256
        while idx < _67:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _67 < 1:
            revert with 'NH{q', 17
        if _67 - 1 >= _67:
            revert with 'NH{q', 50
        _103 = mem[(32 * _67 - 1) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = _103
        mem[mem[64] + 100] = 5
        require ext_code.size(sub_21d7e452Address)
        call sub_21d7e452Address.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 1, 0, _103, 5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == mem[_109]
        if mem[_109] <= arg1:
            revert with 0, 'Not Profitable'
    else:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
        mem[96] = 3
        mem[128] = sub_51f78af9Address
        mem[160] = sub_41c125eaAddress
        mem[192] = usdcAddress
        mem[0] = sub_51f78af9Address
        mem[32] = 16
        require ext_code.size(sub_30296ae5[stor2])
        call sub_30296ae5[stor2].borrow(uint256 arg1) with:
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
        _66 = mem[224 len 4], Mask(224, 32, arg1) >> 32
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
        _68 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        require _66 + (32 * _68) + 32 <= return_data.size
        idx = 0
        s = _66 + 256
        t = ceil32(return_data.size) + 256
        while idx < _68:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _68 < 1:
            revert with 'NH{q', 17
        if _68 - 1 >= _68:
            revert with 'NH{q', 50
        _105 = mem[(32 * _68 - 1) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = _105
        mem[mem[64] + 100] = 5
        require ext_code.size(sub_21d7e452Address)
        call sub_21d7e452Address.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 1, 0, _105, 5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_110] == mem[_110]
        if mem[_110] <= arg1:
            revert with 0, 'Not Profitable'
    require ext_code.size(sub_30296ae5[stor2])
    call sub_30296ae5[stor2].repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_86c9f841(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == arg3
    if msg.sender == adminAddress:
        mem[96] = 2
        mem[128] = sub_41c125eaAddress
        mem[160] = address(arg1)
        mem[192] = 2
        mem[224] = address(arg1)
        mem[256] = sub_41c125eaAddress
        mem[0] = sub_41c125eaAddress
        mem[32] = 16
        require ext_code.size(sub_30296ae5[stor1])
        call sub_30296ae5[stor1].borrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 50
        mem[356] = 160
        mem[452] = 2
        if not arg2:
            idx = 0
            s = 128
            t = 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[388] = this.address
            mem[420] = -1
            require ext_code.size(sub_086129e5Address)
            call sub_086129e5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 50, Array(len=2, data=mem[484 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _143 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319 < return_data.size + 288
            _147 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            require _143 + (32 * _147) + 32 <= return_data.size
            idx = 0
            s = _143 + 320
            t = ceil32(return_data.size) + 320
            while idx < _147:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _147 < 1:
                revert with 'NH{q', 17
            if _147 - 1 >= _147:
                revert with 'NH{q', 50
            _247 = mem[(32 * _147 - 1) + ceil32(return_data.size) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _247
            mem[mem[64] + 36] = 5
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 224
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = -1
            require ext_code.size(sub_f973c3d5Address)
            call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _247, 5, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _327 = mem[_323]
            require mem[_323] <= test266151307()
            require _323 + mem[_323] + 31 < _323 + return_data.size
            _331 = mem[_323 + mem[_323]]
            if mem[_323 + mem[_323]] > test266151307():
                revert with 'NH{q', 65
            if _323 + ceil32(return_data.size) + floor32(mem[_323 + mem[_323]]) + 1 > test266151307() or floor32(mem[_323 + mem[_323]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _323 + ceil32(return_data.size) + floor32(mem[_323 + mem[_323]]) + 1
            mem[_323 + ceil32(return_data.size)] = _331
            require _327 + (32 * _331) + 32 <= return_data.size
            idx = 0
            s = _323 + _327 + 32
            t = _323 + ceil32(return_data.size) + 32
            while idx < _331:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[0] = sub_41c125eaAddress
            mem[32] = 16
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_41c125eaAddress)
            call sub_41c125eaAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_387] == mem[_387]
            require ext_code.size(sub_30296ae5[stor1])
            call sub_30296ae5[stor1].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[_387]
        else:
            idx = 0
            s = 128
            t = 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[388] = this.address
            mem[420] = -1
            require ext_code.size(sub_f973c3d5Address)
            call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 50, Array(len=2, data=mem[484 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _144 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319 < return_data.size + 288
            _148 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            require _144 + (32 * _148) + 32 <= return_data.size
            idx = 0
            s = _144 + 320
            t = ceil32(return_data.size) + 320
            while idx < _148:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _148 < 1:
                revert with 'NH{q', 17
            if _148 - 1 >= _148:
                revert with 'NH{q', 50
            _249 = mem[(32 * _148 - 1) + ceil32(return_data.size) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 5
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = -1
            require ext_code.size(sub_086129e5Address)
            call sub_086129e5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _249, 5, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _328 = mem[_324]
            require mem[_324] <= test266151307()
            require _324 + mem[_324] + 31 < _324 + return_data.size
            _332 = mem[_324 + mem[_324]]
            if mem[_324 + mem[_324]] > test266151307():
                revert with 'NH{q', 65
            if _324 + ceil32(return_data.size) + floor32(mem[_324 + mem[_324]]) + 1 > test266151307() or floor32(mem[_324 + mem[_324]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _324 + ceil32(return_data.size) + floor32(mem[_324 + mem[_324]]) + 1
            mem[_324 + ceil32(return_data.size)] = _332
            require _328 + (32 * _332) + 32 <= return_data.size
            idx = 0
            s = _324 + _328 + 32
            t = _324 + ceil32(return_data.size) + 32
            while idx < _332:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[0] = sub_41c125eaAddress
            mem[32] = 16
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_41c125eaAddress)
            call sub_41c125eaAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_388] == mem[_388]
            require ext_code.size(sub_30296ae5[stor1])
            call sub_30296ae5[stor1].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[_388]
    else:
        if hardwareWalletAddress != msg.sender:
            revert with 0, 'Bitch this is my contract.'
        mem[96] = 2
        mem[128] = sub_41c125eaAddress
        mem[160] = address(arg1)
        mem[192] = 2
        mem[224] = address(arg1)
        mem[256] = sub_41c125eaAddress
        mem[0] = sub_41c125eaAddress
        mem[32] = 16
        require ext_code.size(sub_30296ae5[stor1])
        call sub_30296ae5[stor1].borrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 50
        mem[356] = 160
        mem[452] = 2
        if not arg2:
            idx = 0
            s = 128
            t = 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[388] = this.address
            mem[420] = -1
            require ext_code.size(sub_086129e5Address)
            call sub_086129e5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 50, Array(len=2, data=mem[484 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _145 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319 < return_data.size + 288
            _149 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            require _145 + (32 * _149) + 32 <= return_data.size
            idx = 0
            s = _145 + 320
            t = ceil32(return_data.size) + 320
            while idx < _149:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _149 < 1:
                revert with 'NH{q', 17
            if _149 - 1 >= _149:
                revert with 'NH{q', 50
            _251 = mem[(32 * _149 - 1) + ceil32(return_data.size) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _251
            mem[mem[64] + 36] = 5
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 224
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = -1
            require ext_code.size(sub_f973c3d5Address)
            call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _251, 5, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _329 = mem[_325]
            require mem[_325] <= test266151307()
            require _325 + mem[_325] + 31 < _325 + return_data.size
            _333 = mem[_325 + mem[_325]]
            if mem[_325 + mem[_325]] > test266151307():
                revert with 'NH{q', 65
            if _325 + ceil32(return_data.size) + floor32(mem[_325 + mem[_325]]) + 1 > test266151307() or floor32(mem[_325 + mem[_325]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _325 + ceil32(return_data.size) + floor32(mem[_325 + mem[_325]]) + 1
            mem[_325 + ceil32(return_data.size)] = _333
            require _329 + (32 * _333) + 32 <= return_data.size
            idx = 0
            s = _325 + _329 + 32
            t = _325 + ceil32(return_data.size) + 32
            while idx < _333:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[0] = sub_41c125eaAddress
            mem[32] = 16
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_41c125eaAddress)
            call sub_41c125eaAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_389] == mem[_389]
            require ext_code.size(sub_30296ae5[stor1])
            call sub_30296ae5[stor1].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[_389]
        else:
            idx = 0
            s = 128
            t = 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[388] = this.address
            mem[420] = -1
            require ext_code.size(sub_f973c3d5Address)
            call sub_f973c3d5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 50, Array(len=2, data=mem[484 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _146 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319 < return_data.size + 288
            _150 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            require _146 + (32 * _150) + 32 <= return_data.size
            idx = 0
            s = _146 + 320
            t = ceil32(return_data.size) + 320
            while idx < _150:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _150 < 1:
                revert with 'NH{q', 17
            if _150 - 1 >= _150:
                revert with 'NH{q', 50
            _253 = mem[(32 * _150 - 1) + ceil32(return_data.size) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _253
            mem[mem[64] + 36] = 5
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = -1
            require ext_code.size(sub_086129e5Address)
            call sub_086129e5Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _253, 5, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _330 = mem[_326]
            require mem[_326] <= test266151307()
            require _326 + mem[_326] + 31 < _326 + return_data.size
            _334 = mem[_326 + mem[_326]]
            if mem[_326 + mem[_326]] > test266151307():
                revert with 'NH{q', 65
            if _326 + ceil32(return_data.size) + floor32(mem[_326 + mem[_326]]) + 1 > test266151307() or floor32(mem[_326 + mem[_326]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _326 + ceil32(return_data.size) + floor32(mem[_326 + mem[_326]]) + 1
            mem[_326 + ceil32(return_data.size)] = _334
            require _330 + (32 * _334) + 32 <= return_data.size
            idx = 0
            s = _326 + _330 + 32
            t = _326 + ceil32(return_data.size) + 32
            while idx < _334:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[0] = sub_41c125eaAddress
            mem[32] = 16
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_41c125eaAddress)
            call sub_41c125eaAddress.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _390 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_390] == mem[_390]
            require ext_code.size(sub_30296ae5[stor1])
            call sub_30296ae5[stor1].repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[_390]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
