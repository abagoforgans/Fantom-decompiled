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
    call sub_1458100bAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        call sub_63f96cf4Address.0x2e1a7d4d with:
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
    mem[(6 * ceil32(return_data.size)) + 100] = sub_dbd33e45Address
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(sub_7abd5a1cAddress)
    call sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dbd33e45Address, ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -eth.balance(this.address) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < ext_call.return_data[0] + eth.balance(this.address) / 2:
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = sub_dbd33e45Address
        mem[(7 * ceil32(return_data.size)) + 160] = sub_1458100bAddress
        if block.timestamp > -61:
            revert with 'NH{q', 17
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sell tomb amount must be greater than zero'
        if eth.balance(this.address) <= 0:
            revert with 0, 'receiveFmtAmt amount must be greater than zero'
        mem[(7 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 228] = eth.balance(this.address)
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(sub_f6c6e5e8Address)
        call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], eth.balance(this.address), Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
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
            emit 0x81e6d68f: ext_call.return_data[0], 0
        if return_data.size <= 3:
            if not return_data.size:
                mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            if not return_data.size:
                mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if return_data.size < 68:
            if not return_data.size:
                mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 > test266151307() or 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 36 > return_data.size:
            if not return_data.size:
                mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            if not return_data.size:
                mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 32 > return_data.size - 4:
            if not return_data.size:
                mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
                mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, ext_call.return_data[0 len 28]
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, ext_call.return_data[0 len 28])] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, ext_call.return_data[0 len 28])]
                if ceil32(0, ext_call.return_data[0 len 28]) > 0, ext_call.return_data[0 len 28]:
                    mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, ext_call.return_data[0 len 28] + 302] = 0
                if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                    revert with memory
                      from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                       len ceil32(0, ext_call.return_data[0 len 28]) + 68
                revert with 0, 
                            32,
                            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, ext_call.return_data[0 len 28]) + 32]
            mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
            if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if (7 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193 < 192:
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193
        if (7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192:
            _137 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _143 = mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            mem[mem[64] + 36] = mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            mem[mem[64] + 68 len ceil32(_143)] = mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len ceil32(_143)]
            if ceil32(_143) <= _143:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_143) + 32]
            mem[mem[64] + _143 + 68] = 0
            revert with memory
              from mem[64]
               len _137 + ceil32(_143) + -mem[64] + 68
        if not return_data.size:
            _144 = mem[64]
            mem[mem[64] + 32] = 'swap tomb '
            mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                _598 = mem[64]
                mem[64] = mem[64] + ext_call.return_data[0] + 42
                mem[_144 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_144 + ext_call.return_data[0] + 46] = 32
                _652 = mem[_598]
                mem[_144 + ext_call.return_data[0] + 78] = mem[_598]
                mem[_144 + ext_call.return_data[0] + 110 len ceil32(_652)] = mem[_598 + 32 len ceil32(_652)]
                if ceil32(_652) > _652:
                    mem[_144 + ext_call.return_data[0] + _652 + 110] = 0
                revert with 0, 32, mem[_144 + ext_call.return_data[0] + 78 len ceil32(_652) + 32]
            mem[mem[64] + ext_call.return_data[0] + 42] = 0
            _626 = mem[64]
            mem[64] = _144 + ext_call.return_data[0] + 42
            mem[_144 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_144 + ext_call.return_data[0] + 46] = 32
            _666 = mem[_626]
            mem[_144 + ext_call.return_data[0] + 78] = mem[_626]
            mem[_144 + ext_call.return_data[0] + 110 len ceil32(_666)] = mem[_626 + 32 len ceil32(_666)]
            if ceil32(_666) > _666:
                mem[_144 + ext_call.return_data[0] + _666 + 110] = 0
            revert with 0, 32, mem[_144 + ext_call.return_data[0] + 78 len ceil32(_666) + 32]
        _138 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_138] = return_data.size
        mem[_138 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_138 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            _600 = mem[64]
            mem[64] = mem[64] + return_data.size + 42
            mem[_145 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_145 + return_data.size + 46] = 32
            _653 = mem[_600]
            mem[_145 + return_data.size + 78] = mem[_600]
            mem[_145 + return_data.size + 110 len ceil32(_653)] = mem[_600 + 32 len ceil32(_653)]
            if ceil32(_653) > _653:
                mem[_145 + return_data.size + _653 + 110] = 0
            revert with 0, 32, mem[_145 + return_data.size + 78 len ceil32(_653) + 32]
        mem[mem[64] + return_data.size + 42] = 0
        _628 = mem[64]
        mem[64] = _145 + return_data.size + 42
        mem[_145 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_145 + return_data.size + 46] = 32
        _667 = mem[_628]
        mem[_145 + return_data.size + 78] = mem[_628]
        mem[_145 + return_data.size + 110 len ceil32(_667)] = mem[_628 + 32 len ceil32(_667)]
        if ceil32(_667) > _667:
            mem[_145 + return_data.size + _667 + 110] = 0
        revert with 0, 32, mem[_145 + return_data.size + 78 len ceil32(_667) + 32]
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6c6e5e8Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    if 10000 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if -ext_call.return_data[0] + 10000 and ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18 > -1 / -ext_call.return_data[0] + 10000:
        revert with 'NH{q', 17
    if (10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) / 10000 and 8000 > -1 / (10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) / 10000:
        revert with 'NH{q', 17
    mem[(7 * ceil32(return_data.size)) + 96] = 2
    mem[(7 * ceil32(return_data.size)) + 128] = sub_dbd33e45Address
    mem[(7 * ceil32(return_data.size)) + 160] = sub_1458100bAddress
    if block.timestamp > -61:
        revert with 'NH{q', 17
    if ext_call.return_data[0] / 2 <= 0:
        revert with 0, 'sell tomb amount must be greater than zero'
    if 8000 * (10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) / 10000 / 10000 <= 0:
        revert with 0, 'receiveFmtAmt amount must be greater than zero'
    mem[(7 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
    mem[(7 * ceil32(return_data.size)) + 228] = 8000 * (10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) / 10000 / 10000
    mem[(7 * ceil32(return_data.size)) + 260] = 160
    mem[(7 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = (7 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 292] = this.address
    mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(sub_f6c6e5e8Address)
    call sub_f6c6e5e8Address.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 8000 * (10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 10^18) / 10000 / 10000, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
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
        emit 0x81e6d68f: Mask(255, 1, ext_call.return_data[0]), 0
    if return_data.size <= 3:
        if not return_data.size:
            mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) > 0, Mask(224, 32, ext_call.return_data[0]) >> 32:
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 32]
        mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        if not return_data.size:
            mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) > 0, Mask(224, 32, ext_call.return_data[0]) >> 32:
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 32]
        mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if return_data.size < 68:
        if not return_data.size:
            mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) > 0, Mask(224, 32, ext_call.return_data[0]) >> 32:
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 32]
        mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    mem[(7 * ceil32(return_data.size)) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 > test266151307() or 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 36 > return_data.size:
        if not return_data.size:
            mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) > 0, Mask(224, 32, ext_call.return_data[0]) >> 32:
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 32]
        mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
        if not return_data.size:
            mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) > 0, Mask(224, 32, ext_call.return_data[0]) >> 32:
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 32]
        mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 32 > return_data.size - 4:
        if not return_data.size:
            mem[(7 * ceil32(return_data.size)) + 224] = 'swap tomb '
            mem[(7 * ceil32(return_data.size)) + 234 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 238] = 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 302 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[(7 * ceil32(return_data.size)) + 224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) > 0, Mask(224, 32, ext_call.return_data[0]) >> 32:
                mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 302] = 0
            if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
                revert with memory
                  from (7 * ceil32(return_data.size)) + ext_call.return_data[0] + 234
                   len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 68
            revert with 0, 
                        32,
                        mem[(7 * ceil32(return_data.size)) + ext_call.return_data[0] + 270 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 32]
        mem[(7 * ceil32(return_data.size)) + 192] = return_data.size
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = 'swap tomb '
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 235 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[(7 * ceil32(return_data.size)) + return_data.size + 224 len ceil32(return_data.size) - return_data.size]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 239] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 271] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 225 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
        if ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]) > mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193]:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] + 303] = 0
        revert with 0, 
                    32,
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193],
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 303 len ceil32(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 193])]
    if (7 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193 > test266151307() or floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193 < 192:
        revert with 'NH{q', 65
    mem[64] = (7 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 31) + 193
    if (7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192:
        _793 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _799 = mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        mem[mem[64] + 36] = mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        mem[mem[64] + 68 len ceil32(_799)] = mem[(7 * ceil32(return_data.size)) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len ceil32(_799)]
        if ceil32(_799) <= _799:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_799) + 32]
        mem[mem[64] + _799 + 68] = 0
        revert with memory
          from mem[64]
           len _793 + ceil32(_799) + -mem[64] + 68
    if not return_data.size:
        _800 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) <= ext_call.return_data[0]:
            _1044 = mem[64]
            mem[64] = mem[64] + ext_call.return_data[0] + 42
            mem[_800 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_800 + ext_call.return_data[0] + 46] = 32
            _1126 = mem[_1044]
            mem[_800 + ext_call.return_data[0] + 78] = mem[_1044]
            mem[_800 + ext_call.return_data[0] + 110 len ceil32(_1126)] = mem[_1044 + 32 len ceil32(_1126)]
            if ceil32(_1126) > _1126:
                mem[_800 + ext_call.return_data[0] + _1126 + 110] = 0
            revert with 0, 32, mem[_800 + ext_call.return_data[0] + 78 len ceil32(_1126) + 32]
        mem[mem[64] + ext_call.return_data[0] + 42] = 0
        _1072 = mem[64]
        mem[64] = _800 + ext_call.return_data[0] + 42
        mem[_800 + ext_call.return_data[0] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_800 + ext_call.return_data[0] + 46] = 32
        _1168 = mem[_1072]
        mem[_800 + ext_call.return_data[0] + 78] = mem[_1072]
        mem[_800 + ext_call.return_data[0] + 110 len ceil32(_1168)] = mem[_1072 + 32 len ceil32(_1168)]
        if ceil32(_1168) > _1168:
            mem[_800 + ext_call.return_data[0] + _1168 + 110] = 0
        revert with 0, 32, mem[_800 + ext_call.return_data[0] + 78 len ceil32(_1168) + 32]
    _794 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_794] = return_data.size
    mem[_794 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    _801 = mem[64]
    mem[mem[64] + 32] = 'swap tomb '
    mem[mem[64] + 42 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_794 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) <= return_data.size:
        _1046 = mem[64]
        mem[64] = mem[64] + return_data.size + 42
        mem[_801 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_801 + return_data.size + 46] = 32
        _1127 = mem[_1046]
        mem[_801 + return_data.size + 78] = mem[_1046]
        mem[_801 + return_data.size + 110 len ceil32(_1127)] = mem[_1046 + 32 len ceil32(_1127)]
        if ceil32(_1127) > _1127:
            mem[_801 + return_data.size + _1127 + 110] = 0
        revert with 0, 32, mem[_801 + return_data.size + 78 len ceil32(_1127) + 32]
    mem[mem[64] + return_data.size + 42] = 0
    _1074 = mem[64]
    mem[64] = _801 + return_data.size + 42
    mem[_801 + return_data.size + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_801 + return_data.size + 46] = 32
    _1169 = mem[_1074]
    mem[_801 + return_data.size + 78] = mem[_1074]
    mem[_801 + return_data.size + 110 len ceil32(_1169)] = mem[_1074 + 32 len ceil32(_1169)]
    if ceil32(_1169) > _1169:
        mem[_801 + return_data.size + _1169 + 110] = 0
    revert with 0, 32, mem[_801 + return_data.size + 78 len ceil32(_1169) + 32]
}



}
