contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f6c6e5e8Address;
address sub_87ced3dcAddress;
address sub_f088996fAddress;
address sub_dbd33e45Address;
address sub_85b374c3Address;
address sub_1458100bAddress;
address sub_1e9b8c59Address;
address sub_33aa2191Address;
address sub_7abd5a1cAddress;
address sub_63f96cf4Address;
address zapAddress;

function sub_1458100b(?) {
    return sub_1458100bAddress
}

function sub_1e9b8c59(?) {
    return sub_1e9b8c59Address
}

function zap() {
    return zapAddress
}

function sub_33aa2191(?) {
    return sub_33aa2191Address
}

function sub_63f96cf4(?) {
    return sub_63f96cf4Address
}

function sub_7abd5a1c(?) {
    return sub_7abd5a1cAddress
}

function sub_85b374c3(?) {
    return sub_85b374c3Address
}

function sub_87ced3dc(?) {
    return sub_87ced3dcAddress
}

function owner() {
    return owner
}

function sub_dbd33e45(?) {
    return sub_dbd33e45Address
}

function sub_f088996f(?) {
    return sub_f088996fAddress
}

function sub_f6c6e5e8(?) {
    return sub_f6c6e5e8Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b4f12e52(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f24666cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8fe6f47c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85b374c3Address)
    call sub_85b374c3Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fb652d4c(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'we aint got no wftm'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_57104c33(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 / 10^18 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg2 * arg1 / 10^18 < (arg2 * arg1 / 10^18) + arg4 / 2:
        return arg1, arg4
    if arg2 * arg1 / 10^18 < (arg2 * arg1 / 10^18) + arg4 / 2:
        revert with 'NH{q', 17
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + arg4 / 2) and 10^18 > -1 / (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + arg4 / 2):
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6c6e5e8Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + arg4 / 2) and arg2 > -1 / (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + arg4 / 2):
        revert with 'NH{q', 17
    if 10000 < arg3:
        revert with 'NH{q', 17
    if -arg3 + 10000 and (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + arg4 / 2 * arg2) / 10^18 > -1 / -arg3 + 10000:
        revert with 'NH{q', 17
    if (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + arg4 / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + arg4 / 2 * arg2) / 10^18) / 10000 and 8000 > -1 / (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + arg4 / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + arg4 / 2 * arg2) / 10^18) / 10000:
        revert with 'NH{q', 17
    return (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + arg4 / 2), 
           8000 * (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + arg4 / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + arg4 / 2 * arg2) / 10^18) / 10000 / 10000
}

function unstakeAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.userInfo(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.userInfo(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_63f96cf4Address)
    call sub_63f96cf4Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_63f96cf4Address)
        call sub_63f96cf4Address.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1e9b8c59Address)
    staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_1e9b8c59Address)
        staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_33aa2191Address)
    staticcall sub_33aa2191Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_33aa2191Address)
        staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function compound() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_63f96cf4Address)
    call sub_63f96cf4Address.canClaimReward(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        emit 0x1aa29c48: 0
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f088996fAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with 0, 'tshare-wftm LP deposit failed'
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        emit 0x8ced237d: 0
    else:
        require ext_code.size(sub_7abd5a1cAddress)
        call sub_7abd5a1cAddress.getPrice() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 10^18:
            emit 0x1aa29c48: 0
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_f088996fAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with 0, 'tshare-wftm LP deposit failed'
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x8ced237d: 0
        else:
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_63f96cf4Address)
            call sub_63f96cf4Address.claimReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_1e9b8c59Address)
            call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_f088996fAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with 0, 'tomb-wftm LP deposit failed'
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x1aa29c48: 0
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_f088996fAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_f088996fAddress)
            call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with 0, 'tshare-wftm LP deposit failed'
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit 0x8ced237d: 0
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_63f96cf4Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_63f96cf4Address)
            call sub_63f96cf4Address.stake(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with 0, 'masonry staking failed'
            emit 0xe4dba445: 0
}

function sub_c15b0875(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[100] = this.address
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 / 10^18 > -eth.balance(this.address) - 1:
        revert with 'NH{q', 17
    if arg2 * arg1 / 10^18 < (arg2 * arg1 / 10^18) + eth.balance(this.address) / 2:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = sub_dbd33e45Address
        mem[ceil32(return_data.size) + 160] = sub_1458100bAddress
        if block.timestamp > -61:
            revert with 'NH{q', 17
        if arg1 <= 0:
            revert with 0, 'sell tomb amount must be greater than zero'
        if eth.balance(this.address) <= 0:
            revert with 0, 'receiveFmtAmt amount must be greater than zero'
        mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 228] = eth.balance(this.address)
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp + 60
        require ext_code.size(sub_f6c6e5e8Address)
        call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, eth.balance(this.address), Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 60
        if ext_call.success:
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if arg1 < 0:
                revert with 'NH{q', 17
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            return arg1, 0
        if return_data.size <= 3:
            if not return_data.size:
                mem[ceil32(return_data.size) + 224] = 'swap tomb '
                mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from ceil32(return_data.size) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 32, mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[ceil32(return_data.size) + 192] = return_data.size
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            if not return_data.size:
                mem[ceil32(return_data.size) + 224] = 'swap tomb '
                mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from ceil32(return_data.size) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 32, mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[ceil32(return_data.size) + 192] = return_data.size
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if return_data.size < 68:
            if not return_data.size:
                mem[ceil32(return_data.size) + 224] = 'swap tomb '
                mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from ceil32(return_data.size) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 32, mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[ceil32(return_data.size) + 192] = return_data.size
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        mem[ceil32(return_data.size) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg1) >> 32 > test266151307() or 0, Mask(224, 32, arg1) >> 32 + 36 > return_data.size:
            if not return_data.size:
                mem[ceil32(return_data.size) + 224] = 'swap tomb '
                mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from ceil32(return_data.size) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 32, mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[ceil32(return_data.size) + 192] = return_data.size
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            if not return_data.size:
                mem[ceil32(return_data.size) + 224] = 'swap tomb '
                mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from ceil32(return_data.size) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 32, mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[ceil32(return_data.size) + 192] = return_data.size
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if 0, Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192] + 32 > return_data.size - 4:
            if not return_data.size:
                mem[ceil32(return_data.size) + 224] = 'swap tomb '
                mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from ceil32(return_data.size) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 32, mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[ceil32(return_data.size) + 192] = return_data.size
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if ceil32(return_data.size) + floor32(0, Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192] + 31) + 193 < 192:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 32, arg1) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192] + 31) + 193
        if ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192:
            _293 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _299 = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192]
            mem[mem[64] + 36] = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 192]
            mem[mem[64] + 68 len ceil32(_299)] = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg1) >> 32 + 224 len ceil32(_299)]
            if ceil32(_299) <= _299:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_299) + 32]
            mem[mem[64] + _299 + 68] = 0
            revert with memory
              from mem[64]
               len _293 + ceil32(_299) + -mem[64] + 68
        if not return_data.size:
            _300 = mem[64]
            mem[mem[64] + 32] = 'swap tomb '
            mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                _751 = mem[64]
                mem[64] = mem[64] + ext_call.return_data[0] + 42
                mem[_300 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_300 + ext_call.return_data[0] + 46] = 32
                _805 = mem[_751]
                mem[_300 + ext_call.return_data[0] + 78] = mem[_751]
                mem[_300 + ext_call.return_data[0] + 110 len ceil32(_805)] = mem[_751 + 32 len ceil32(_805)]
                if ceil32(_805) > _805:
                    mem[_300 + ext_call.return_data[0] + _805 + 110] = 0
                revert with 0, 32, mem[_300 + ext_call.return_data[0] + 78 len ceil32(_805) + 32]
            mem[mem[64] + ext_call.return_data[0] + 42] = 0
            _779 = mem[64]
            mem[64] = _300 + ext_call.return_data[0] + 42
            mem[_300 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_300 + ext_call.return_data[0] + 46] = 32
            _819 = mem[_779]
            mem[_300 + ext_call.return_data[0] + 78] = mem[_779]
            mem[_300 + ext_call.return_data[0] + 110 len ceil32(_819)] = mem[_779 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_300 + ext_call.return_data[0] + _819 + 110] = 0
            revert with 0, 32, mem[_300 + ext_call.return_data[0] + 78 len ceil32(_819) + 32]
        _294 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_294] = return_data.size
        mem[_294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_294 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            _753 = mem[64]
            mem[64] = mem[64] + return_data.size + 42
            mem[_301 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_301 + return_data.size + 46] = 32
            _806 = mem[_753]
            mem[_301 + return_data.size + 78] = mem[_753]
            mem[_301 + return_data.size + 110 len ceil32(_806)] = mem[_753 + 32 len ceil32(_806)]
            if ceil32(_806) > _806:
                mem[_301 + return_data.size + _806 + 110] = 0
            revert with 0, 32, mem[_301 + return_data.size + 78 len ceil32(_806) + 32]
        mem[mem[64] + return_data.size + 42] = 0
        _781 = mem[64]
        mem[64] = _301 + return_data.size + 42
        mem[_301 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_301 + return_data.size + 46] = 32
        _820 = mem[_781]
        mem[_301 + return_data.size + 78] = mem[_781]
        mem[_301 + return_data.size + 110 len ceil32(_820)] = mem[_781 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_301 + return_data.size + _820 + 110] = 0
        revert with 0, 32, mem[_301 + return_data.size + 78 len ceil32(_820) + 32]
    if arg2 * arg1 / 10^18 < (arg2 * arg1 / 10^18) + eth.balance(this.address) / 2:
        revert with 'NH{q', 17
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2) and 10^18 > -1 / (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2):
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6c6e5e8Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2) and arg2 > -1 / (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2):
        revert with 'NH{q', 17
    if 10000 < arg3:
        revert with 'NH{q', 17
    if -arg3 + 10000 and (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18 > -1 / -arg3 + 10000:
        revert with 'NH{q', 17
    if (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 and 8000 > -1 / (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = sub_dbd33e45Address
    mem[ceil32(return_data.size) + 160] = sub_1458100bAddress
    if block.timestamp > -61:
        revert with 'NH{q', 17
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2) <= 0:
        revert with 0, 'sell tomb amount must be greater than zero'
    if 8000 * (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 / 10000 <= 0:
        revert with 0, 'receiveFmtAmt amount must be greater than zero'
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)
    mem[ceil32(return_data.size) + 228] = 8000 * (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 / 10000
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 60
    require ext_code.size(sub_f6c6e5e8Address)
    call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2), 8000 * (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (arg3 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 / 10000, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 60
    if ext_call.success:
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg1 < 0:
            revert with 'NH{q', 17
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        return arg1, 0
    if return_data.size <= 3:
        if not return_data.size:
            mem[ceil32(return_data.size) + 224] = 'swap tomb '
            mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from ceil32(return_data.size) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[ceil32(return_data.size) + 192] = return_data.size
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        if not return_data.size:
            mem[ceil32(return_data.size) + 224] = 'swap tomb '
            mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from ceil32(return_data.size) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[ceil32(return_data.size) + 192] = return_data.size
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
    if return_data.size < 68:
        if not return_data.size:
            mem[ceil32(return_data.size) + 224] = 'swap tomb '
            mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from ceil32(return_data.size) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[ceil32(return_data.size) + 192] = return_data.size
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
    mem[ceil32(return_data.size) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 > test266151307() or 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 36 > return_data.size:
        if not return_data.size:
            mem[ceil32(return_data.size) + 224] = 'swap tomb '
            mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from ceil32(return_data.size) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[ceil32(return_data.size) + 192] = return_data.size
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
    if mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] > test266151307():
        if not return_data.size:
            mem[ceil32(return_data.size) + 224] = 'swap tomb '
            mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from ceil32(return_data.size) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[ceil32(return_data.size) + 192] = return_data.size
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
    if 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 32 > return_data.size - 4:
        if not return_data.size:
            mem[ceil32(return_data.size) + 224] = 'swap tomb '
            mem[ceil32(return_data.size) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 238] = 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[ceil32(return_data.size) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[ceil32(return_data.size) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from ceil32(return_data.size) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[ceil32(return_data.size) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[ceil32(return_data.size) + 192] = return_data.size
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 271] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
        if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 193],
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 193])]
    if ceil32(return_data.size) + floor32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193 < 192:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193
    if ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192:
        _946 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _952 = mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192]
        mem[mem[64] + 36] = mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192]
        mem[mem[64] + 68 len ceil32(_952)] = mem[ceil32(return_data.size) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 224 len ceil32(_952)]
        if ceil32(_952) <= _952:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_952) + 32]
        mem[mem[64] + _952 + 68] = 0
        revert with memory
          from mem[64]
           len _946 + ceil32(_952) + -mem[64] + 68
    if not return_data.size:
        _953 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
            _1197 = mem[64]
            mem[64] = mem[64] + ext_call.return_data[0] + 42
            mem[_953 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_953 + ext_call.return_data[0] + 46] = 32
            _1279 = mem[_1197]
            mem[_953 + ext_call.return_data[0] + 78] = mem[_1197]
            mem[_953 + ext_call.return_data[0] + 110 len ceil32(_1279)] = mem[_1197 + 32 len ceil32(_1279)]
            if ceil32(_1279) > _1279:
                mem[_953 + ext_call.return_data[0] + _1279 + 110] = 0
            revert with 0, 32, mem[_953 + ext_call.return_data[0] + 78 len ceil32(_1279) + 32]
        mem[mem[64] + ext_call.return_data[0] + 42] = 0
        _1225 = mem[64]
        mem[64] = _953 + ext_call.return_data[0] + 42
        mem[_953 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_953 + ext_call.return_data[0] + 46] = 32
        _1321 = mem[_1225]
        mem[_953 + ext_call.return_data[0] + 78] = mem[_1225]
        mem[_953 + ext_call.return_data[0] + 110 len ceil32(_1321)] = mem[_1225 + 32 len ceil32(_1321)]
        if ceil32(_1321) > _1321:
            mem[_953 + ext_call.return_data[0] + _1321 + 110] = 0
        revert with 0, 32, mem[_953 + ext_call.return_data[0] + 78 len ceil32(_1321) + 32]
    _947 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_947] = return_data.size
    mem[_947 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    _954 = mem[64]
    mem[mem[64] + 32] = 'swap tomb '
    mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_947 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) <= return_data.size:
        _1199 = mem[64]
        mem[64] = mem[64] + return_data.size + 42
        mem[_954 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_954 + return_data.size + 46] = 32
        _1280 = mem[_1199]
        mem[_954 + return_data.size + 78] = mem[_1199]
        mem[_954 + return_data.size + 110 len ceil32(_1280)] = mem[_1199 + 32 len ceil32(_1280)]
        if ceil32(_1280) > _1280:
            mem[_954 + return_data.size + _1280 + 110] = 0
        revert with 0, 32, mem[_954 + return_data.size + 78 len ceil32(_1280) + 32]
    mem[mem[64] + return_data.size + 42] = 0
    _1227 = mem[64]
    mem[64] = _954 + return_data.size + 42
    mem[_954 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_954 + return_data.size + 46] = 32
    _1322 = mem[_1227]
    mem[_954 + return_data.size + 78] = mem[_1227]
    mem[_954 + return_data.size + 110 len ceil32(_1322)] = mem[_1227 + 32 len ceil32(_1322)]
    if ceil32(_1322) > _1322:
        mem[_954 + return_data.size + _1322 + 110] = 0
    revert with 0, 32, mem[_954 + return_data.size + 78 len ceil32(_1322) + 32]
}

function sub_655794ab(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f088996fAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with 0, 'tomb-wftm LP deposit failed'
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        else:
            return 0
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.taxRate() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 / 10^18 > -eth.balance(this.address) - 1:
        revert with 'NH{q', 17
    if arg2 * arg1 / 10^18 < (arg2 * arg1 / 10^18) + eth.balance(this.address) / 2:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = sub_dbd33e45Address
        mem[(2 * ceil32(return_data.size)) + 160] = sub_1458100bAddress
        if block.timestamp > -61:
            revert with 'NH{q', 17
        if arg1 <= 0:
            revert with 0, 'sell tomb amount must be greater than zero'
        if eth.balance(this.address) <= 0:
            revert with 0, 'receiveFmtAmt amount must be greater than zero'
        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 228] = eth.balance(this.address)
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(sub_f6c6e5e8Address)
        call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, eth.balance(this.address), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
        if ext_call.success:
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if arg1 < 0:
                revert with 'NH{q', 17
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            else:
                return 0
        if return_data.size <= 3:
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 
                            32,
                            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 
                            32,
                            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if return_data.size < 68:
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 
                            32,
                            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg1) >> 32 > test266151307() or 0, Mask(224, 32, arg1) >> 32 + 36 > return_data.size:
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 
                            32,
                            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 
                            32,
                            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if 0, Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192] + 32 > return_data.size - 4:
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, arg1) >> 32
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, arg1) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, arg1) >> 32)]
                if ceil32(0, Mask(224, 32, arg1) >> 32) > 0, Mask(224, 32, arg1) >> 32:
                    mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, arg1) >> 32 + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, Mask(224, 32, arg1) >> 32) + 68
                revert with 0, 
                            32,
                            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, arg1) >> 32) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192] + 31) + 193 < 192:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192] + 31) + 193
        if (2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192:
            _301 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _309 = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192]
            mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 192]
            mem[mem[64] + 68 len ceil32(_309)] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg1) >> 32 + 224 len ceil32(_309)]
            if ceil32(_309) <= _309:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_309) + 32]
            mem[mem[64] + _309 + 68] = 0
            revert with memory
              from mem[64]
               len _301 + ceil32(_309) + -mem[64] + 68
        if not return_data.size:
            _310 = mem[64]
            mem[mem[64] + 32] = 'swap tomb '
            mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                _762 = mem[64]
                mem[64] = mem[64] + ext_call.return_data[0] + 42
                mem[_310 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_310 + ext_call.return_data[0] + 46] = 32
                _816 = mem[_762]
                mem[_310 + ext_call.return_data[0] + 78] = mem[_762]
                mem[_310 + ext_call.return_data[0] + 110 len ceil32(_816)] = mem[_762 + 32 len ceil32(_816)]
                if ceil32(_816) > _816:
                    mem[_310 + ext_call.return_data[0] + _816 + 110] = 0
                revert with 0, 32, mem[_310 + ext_call.return_data[0] + 78 len ceil32(_816) + 32]
            mem[mem[64] + ext_call.return_data[0] + 42] = 0
            _790 = mem[64]
            mem[64] = _310 + ext_call.return_data[0] + 42
            mem[_310 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_310 + ext_call.return_data[0] + 46] = 32
            _830 = mem[_790]
            mem[_310 + ext_call.return_data[0] + 78] = mem[_790]
            mem[_310 + ext_call.return_data[0] + 110 len ceil32(_830)] = mem[_790 + 32 len ceil32(_830)]
            if ceil32(_830) > _830:
                mem[_310 + ext_call.return_data[0] + _830 + 110] = 0
            revert with 0, 32, mem[_310 + ext_call.return_data[0] + 78 len ceil32(_830) + 32]
        _303 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_303] = return_data.size
        mem[_303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _311 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_303 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            _764 = mem[64]
            mem[64] = mem[64] + return_data.size + 42
            mem[_311 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_311 + return_data.size + 46] = 32
            _817 = mem[_764]
            mem[_311 + return_data.size + 78] = mem[_764]
            mem[_311 + return_data.size + 110 len ceil32(_817)] = mem[_764 + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[_311 + return_data.size + _817 + 110] = 0
            revert with 0, 32, mem[_311 + return_data.size + 78 len ceil32(_817) + 32]
        mem[mem[64] + return_data.size + 42] = 0
        _792 = mem[64]
        mem[64] = _311 + return_data.size + 42
        mem[_311 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_311 + return_data.size + 46] = 32
        _831 = mem[_792]
        mem[_311 + return_data.size + 78] = mem[_792]
        mem[_311 + return_data.size + 110 len ceil32(_831)] = mem[_792 + 32 len ceil32(_831)]
        if ceil32(_831) > _831:
            mem[_311 + return_data.size + _831 + 110] = 0
        revert with 0, 32, mem[_311 + return_data.size + 78 len ceil32(_831) + 32]
    if arg2 * arg1 / 10^18 < (arg2 * arg1 / 10^18) + eth.balance(this.address) / 2:
        revert with 'NH{q', 17
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2) and 10^18 > -1 / (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2):
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6c6e5e8Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2) and arg2 > -1 / (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2):
        revert with 'NH{q', 17
    if 10000 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if -ext_call.return_data[0] + 10000 and (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18 > -1 / -ext_call.return_data[0] + 10000:
        revert with 'NH{q', 17
    if (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (ext_call.return_data[0] * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 and 8000 > -1 / (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (ext_call.return_data[0] * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = sub_dbd33e45Address
    mem[(2 * ceil32(return_data.size)) + 160] = sub_1458100bAddress
    if block.timestamp > -61:
        revert with 'NH{q', 17
    if (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2) <= 0:
        revert with 0, 'sell tomb amount must be greater than zero'
    if 8000 * (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (ext_call.return_data[0] * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 / 10000 <= 0:
        revert with 0, 'receiveFmtAmt amount must be greater than zero'
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)
    mem[(2 * ceil32(return_data.size)) + 228] = 8000 * (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (ext_call.return_data[0] * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 / 10000
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(sub_f6c6e5e8Address)
    call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2), 8000 * (10000 * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) - (ext_call.return_data[0] * (arg2 * arg1 / 10^18 * arg2) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2 * arg2) / 10^18) / 10000 / 10000, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
    if ext_call.success:
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg1 < 0:
            revert with 'NH{q', 17
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        else:
            return 0
    if return_data.size <= 3:
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if return_data.size < 68:
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 > test266151307() or 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 36 > return_data.size:
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] > test266151307():
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 32 > return_data.size - 4:
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(2 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(2 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (2 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(2 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(2 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(2 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193 < 192:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193
    if (2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192:
        _957 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _963 = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192]
        mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192]
        mem[mem[64] + 68 len ceil32(_963)] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, (arg2 * arg1 / 10^18) - ((arg2 * arg1 / 10^18) + eth.balance(this.address) / 2)) >> 32 + 224 len ceil32(_963)]
        if ceil32(_963) <= _963:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_963) + 32]
        mem[mem[64] + _963 + 68] = 0
        revert with memory
          from mem[64]
           len _957 + ceil32(_963) + -mem[64] + 68
    if not return_data.size:
        _964 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
            _1208 = mem[64]
            mem[64] = mem[64] + ext_call.return_data[0] + 42
            mem[_964 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_964 + ext_call.return_data[0] + 46] = 32
            _1290 = mem[_1208]
            mem[_964 + ext_call.return_data[0] + 78] = mem[_1208]
            mem[_964 + ext_call.return_data[0] + 110 len ceil32(_1290)] = mem[_1208 + 32 len ceil32(_1290)]
            if ceil32(_1290) > _1290:
                mem[_964 + ext_call.return_data[0] + _1290 + 110] = 0
            revert with 0, 32, mem[_964 + ext_call.return_data[0] + 78 len ceil32(_1290) + 32]
        mem[mem[64] + ext_call.return_data[0] + 42] = 0
        _1236 = mem[64]
        mem[64] = _964 + ext_call.return_data[0] + 42
        mem[_964 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_964 + ext_call.return_data[0] + 46] = 32
        _1332 = mem[_1236]
        mem[_964 + ext_call.return_data[0] + 78] = mem[_1236]
        mem[_964 + ext_call.return_data[0] + 110 len ceil32(_1332)] = mem[_1236 + 32 len ceil32(_1332)]
        if ceil32(_1332) > _1332:
            mem[_964 + ext_call.return_data[0] + _1332 + 110] = 0
        revert with 0, 32, mem[_964 + ext_call.return_data[0] + 78 len ceil32(_1332) + 32]
    _958 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_958] = return_data.size
    mem[_958 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    _965 = mem[64]
    mem[mem[64] + 32] = 'swap tomb '
    mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_958 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) <= return_data.size:
        _1210 = mem[64]
        mem[64] = mem[64] + return_data.size + 42
        mem[_965 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_965 + return_data.size + 46] = 32
        _1291 = mem[_1210]
        mem[_965 + return_data.size + 78] = mem[_1210]
        mem[_965 + return_data.size + 110 len ceil32(_1291)] = mem[_1210 + 32 len ceil32(_1291)]
        if ceil32(_1291) > _1291:
            mem[_965 + return_data.size + _1291 + 110] = 0
        revert with 0, 32, mem[_965 + return_data.size + 78 len ceil32(_1291) + 32]
    mem[mem[64] + return_data.size + 42] = 0
    _1238 = mem[64]
    mem[64] = _965 + return_data.size + 42
    mem[_965 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_965 + return_data.size + 46] = 32
    _1333 = mem[_1238]
    mem[_965 + return_data.size + 78] = mem[_1238]
    mem[_965 + return_data.size + 110 len ceil32(_1333)] = mem[_1238 + 32 len ceil32(_1333)]
    if ceil32(_1333) > _1333:
        mem[_965 + return_data.size + _1333 + 110] = 0
    revert with 0, 32, mem[_965 + return_data.size + 78 len ceil32(_1333) + 32]
}

function sub_5821ed0d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_7abd5a1cAddress)
    call sub_7abd5a1cAddress.getPrice() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f088996fAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with 0, 'tomb-wftm LP deposit failed'
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.taxRate() with:
         gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > -eth.balance(this.address) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2:
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = sub_dbd33e45Address
        mem[(6 * ceil32(return_data.size)) + 160] = sub_1458100bAddress
        if block.timestamp > -61:
            revert with 'NH{q', 17
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sell tomb amount must be greater than zero'
        if eth.balance(this.address) <= 0:
            revert with 0, 'receiveFmtAmt amount must be greater than zero'
        mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 228] = eth.balance(this.address)
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(sub_f6c6e5e8Address)
        call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], eth.balance(this.address), Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
        if ext_call.success:
            require ext_code.size(sub_dbd33e45Address)
            call sub_dbd33e45Address.balanceOf(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] < 0:
                revert with 'NH{q', 17
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
        if return_data.size <= 3:
            if not return_data.size:
                mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            if not return_data.size:
                mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
        if return_data.size < 68:
            if not return_data.size:
                mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 > test266151307() or 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 36 > return_data.size:
            if not return_data.size:
                mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
        if mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            if not return_data.size:
                mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
        if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 32 > return_data.size - 4:
            if not return_data.size:
                mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                revert with 0, 
                            32,
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
        if (6 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193 < 192:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193
        if (6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192:
            _154 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _160 = mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            mem[mem[64] + 36] = mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            mem[mem[64] + 68 len ceil32(_160)] = mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len ceil32(_160)]
            if ceil32(_160) <= _160:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_160) + 32]
            mem[mem[64] + _160 + 68] = 0
            revert with memory
              from mem[64]
               len _154 + ceil32(_160) + -mem[64] + 68
        if not return_data.size:
            _161 = mem[64]
            mem[mem[64] + 32] = 'swap tomb '
            mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                _617 = mem[64]
                mem[64] = mem[64] + ext_call.return_data[0] + 42
                mem[_161 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_161 + ext_call.return_data[0] + 46] = 32
                _671 = mem[_617]
                mem[_161 + ext_call.return_data[0] + 78] = mem[_617]
                mem[_161 + ext_call.return_data[0] + 110 len ceil32(_671)] = mem[_617 + 32 len ceil32(_671)]
                if ceil32(_671) > _671:
                    mem[_161 + ext_call.return_data[0] + _671 + 110] = 0
                revert with 0, 32, mem[_161 + ext_call.return_data[0] + 78 len ceil32(_671) + 32]
            mem[mem[64] + ext_call.return_data[0] + 42] = 0
            _645 = mem[64]
            mem[64] = _161 + ext_call.return_data[0] + 42
            mem[_161 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_161 + ext_call.return_data[0] + 46] = 32
            _685 = mem[_645]
            mem[_161 + ext_call.return_data[0] + 78] = mem[_645]
            mem[_161 + ext_call.return_data[0] + 110 len ceil32(_685)] = mem[_645 + 32 len ceil32(_685)]
            if ceil32(_685) > _685:
                mem[_161 + ext_call.return_data[0] + _685 + 110] = 0
            revert with 0, 32, mem[_161 + ext_call.return_data[0] + 78 len ceil32(_685) + 32]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_155] = return_data.size
        mem[_155 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_155 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            _619 = mem[64]
            mem[64] = mem[64] + return_data.size + 42
            mem[_162 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_162 + return_data.size + 46] = 32
            _672 = mem[_619]
            mem[_162 + return_data.size + 78] = mem[_619]
            mem[_162 + return_data.size + 110 len ceil32(_672)] = mem[_619 + 32 len ceil32(_672)]
            if ceil32(_672) > _672:
                mem[_162 + return_data.size + _672 + 110] = 0
            revert with 0, 32, mem[_162 + return_data.size + 78 len ceil32(_672) + 32]
        mem[mem[64] + return_data.size + 42] = 0
        _647 = mem[64]
        mem[64] = _162 + return_data.size + 42
        mem[_162 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_162 + return_data.size + 46] = 32
        _686 = mem[_647]
        mem[_162 + return_data.size + 78] = mem[_647]
        mem[_162 + return_data.size + 110 len ceil32(_686)] = mem[_647 + 32 len ceil32(_686)]
        if ceil32(_686) > _686:
            mem[_162 + return_data.size + _686 + 110] = 0
        revert with 0, 32, mem[_162 + return_data.size + 78 len ceil32(_686) + 32]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6c6e5e8Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2):
        revert with 'NH{q', 17
    if 10000 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if -ext_call.return_data[0] + 10000 and (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18 > -1 / -ext_call.return_data[0] + 10000:
        revert with 'NH{q', 17
    if (10000 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) / 10000 and 8000 > -1 / (10000 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) / 10000:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = sub_dbd33e45Address
    mem[(6 * ceil32(return_data.size)) + 160] = sub_1458100bAddress
    if block.timestamp > -61:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2) <= 0:
        revert with 0, 'sell tomb amount must be greater than zero'
    if 8000 * (10000 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) / 10000 / 10000 <= 0:
        revert with 0, 'receiveFmtAmt amount must be greater than zero'
    mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)
    mem[(6 * ceil32(return_data.size)) + 228] = 8000 * (10000 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) / 10000 / 10000
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(sub_f6c6e5e8Address)
    call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2), 8000 * (10000 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2 * ext_call.return_data[0]) / 10^18) / 10000 / 10000, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
    if ext_call.success:
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] < 0:
            revert with 'NH{q', 17
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
    if return_data.size <= 3:
        if not return_data.size:
            mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        if not return_data.size:
            mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
    if return_data.size < 68:
        if not return_data.size:
            mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 > test266151307() or 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 36 > return_data.size:
        if not return_data.size:
            mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
    if mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] > test266151307():
        if not return_data.size:
            mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
    if 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 32 > return_data.size - 4:
        if not return_data.size:
            mem[(6 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(6 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32
            mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)] = mem[(6 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32)]
            if ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) > 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32:
                mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (6 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32) + 32]
        mem[(6 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(6 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) <= mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            revert with 0, 
                        32,
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) + 32]
    if (6 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193 < 192:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192] + 31) + 193
    if (6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192:
        _812 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _818 = mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192]
        mem[mem[64] + 36] = mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 192]
        mem[mem[64] + 68 len ceil32(_818)] = mem[(6 * ceil32(return_data.size)) + 0, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + eth.balance(this.address) / 2)) >> 32 + 224 len ceil32(_818)]
        if ceil32(_818) <= _818:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_818) + 32]
        mem[mem[64] + _818 + 68] = 0
        revert with memory
          from mem[64]
           len _812 + ceil32(_818) + -mem[64] + 68
    if not return_data.size:
        _819 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
            _1061 = mem[64]
            mem[64] = mem[64] + ext_call.return_data[0] + 42
            mem[_819 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_819 + ext_call.return_data[0] + 46] = 32
            _1143 = mem[_1061]
            mem[_819 + ext_call.return_data[0] + 78] = mem[_1061]
            mem[_819 + ext_call.return_data[0] + 110 len ceil32(_1143)] = mem[_1061 + 32 len ceil32(_1143)]
            if ceil32(_1143) > _1143:
                mem[_819 + ext_call.return_data[0] + _1143 + 110] = 0
            revert with 0, 32, mem[_819 + ext_call.return_data[0] + 78 len ceil32(_1143) + 32]
        mem[mem[64] + ext_call.return_data[0] + 42] = 0
        _1089 = mem[64]
        mem[64] = _819 + ext_call.return_data[0] + 42
        mem[_819 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_819 + ext_call.return_data[0] + 46] = 32
        _1185 = mem[_1089]
        mem[_819 + ext_call.return_data[0] + 78] = mem[_1089]
        mem[_819 + ext_call.return_data[0] + 110 len ceil32(_1185)] = mem[_1089 + 32 len ceil32(_1185)]
        if ceil32(_1185) > _1185:
            mem[_819 + ext_call.return_data[0] + _1185 + 110] = 0
        revert with 0, 32, mem[_819 + ext_call.return_data[0] + 78 len ceil32(_1185) + 32]
    _813 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_813] = return_data.size
    mem[_813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    _820 = mem[64]
    mem[mem[64] + 32] = 'swap tomb '
    mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_813 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) <= return_data.size:
        _1063 = mem[64]
        mem[64] = mem[64] + return_data.size + 42
        mem[_820 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_820 + return_data.size + 46] = 32
        _1144 = mem[_1063]
        mem[_820 + return_data.size + 78] = mem[_1063]
        mem[_820 + return_data.size + 110 len ceil32(_1144)] = mem[_1063 + 32 len ceil32(_1144)]
        if ceil32(_1144) > _1144:
            mem[_820 + return_data.size + _1144 + 110] = 0
        revert with 0, 32, mem[_820 + return_data.size + 78 len ceil32(_1144) + 32]
    mem[mem[64] + return_data.size + 42] = 0
    _1091 = mem[64]
    mem[64] = _820 + return_data.size + 42
    mem[_820 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_820 + return_data.size + 46] = 32
    _1186 = mem[_1091]
    mem[_820 + return_data.size + 78] = mem[_1091]
    mem[_820 + return_data.size + 110 len ceil32(_1186)] = mem[_1091 + 32 len ceil32(_1186)]
    if ceil32(_1186) > _1186:
        mem[_820 + return_data.size + _1186 + 110] = 0
    revert with 0, 32, mem[_820 + return_data.size + 78 len ceil32(_1186) + 32]
}



}
