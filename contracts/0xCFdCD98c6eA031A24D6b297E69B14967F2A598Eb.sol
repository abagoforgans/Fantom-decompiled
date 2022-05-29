contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f6c6e5e8Address;
address sub_87ced3dcAddress;
address sub_f088996fAddress;
uint16 stor4;
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
    return address(sub_dbd33e45Address)
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_8fe6f47c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85b374c3Address)
    call sub_85b374c3Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b4f12e52(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
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

function sub_f24666cc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(sub_dbd33e45Address))
    call address(sub_dbd33e45Address).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require return_data.size >= 32
    require ext_code.size(sub_1458100bAddress)
    staticcall sub_1458100bAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'we aint got no wftm'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function unstakeAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_f088996fAddress)
    staticcall sub_f088996fAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f088996fAddress)
    staticcall sub_f088996fAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_f088996fAddress)
    call sub_f088996fAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_63f96cf4Address)
    staticcall sub_63f96cf4Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_85b374c3Address)
    staticcall sub_85b374c3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(sub_dbd33e45Address))
    staticcall address(sub_dbd33e45Address).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(sub_dbd33e45Address))
        call address(sub_dbd33e45Address).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        staticcall address(sub_dbd33e45Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        call address(sub_dbd33e45Address).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_1458100bAddress)
    staticcall sub_1458100bAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1458100bAddress)
        staticcall sub_1458100bAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_1e9b8c59Address)
    staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1e9b8c59Address)
        staticcall sub_1e9b8c59Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_33aa2191Address)
    staticcall sub_33aa2191Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_33aa2191Address)
        staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
    staticcall sub_63f96cf4Address.canClaimReward(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        emit 0x1aa29c48: 0
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f088996fAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0x8ced237d: 0
    else:
        require ext_code.size(sub_7abd5a1cAddress)
        staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(sub_dbd33e45Address), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[14 len 18] <= 10^18:
            emit 0x1aa29c48: 0
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_f088996fAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x8ced237d: 0
        else:
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_1e9b8c59Address)
            call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_f088996fAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x1aa29c48: 0
            require ext_code.size(sub_85b374c3Address)
            staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_33aa2191Address)
            call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_f088996fAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x8ced237d: 0
            require ext_code.size(sub_85b374c3Address)
            call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_63f96cf4Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
    staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(sub_dbd33e45Address), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_dbd33e45Address))
    staticcall address(sub_dbd33e45Address).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_85b374c3Address)
        staticcall sub_85b374c3Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f088996fAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(sub_dbd33e45Address))
    staticcall address(sub_dbd33e45Address).taxRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_dbd33e45Address))
    staticcall address(sub_dbd33e45Address).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7abd5a1cAddress)
    staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(sub_dbd33e45Address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] + eth.balance(this.address) < ext_call.return_data[14 len 18]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[14 len 18] < ext_call.return_data[14 len 18] + eth.balance(this.address) / 2:
        mem[96] = 2
        mem[128] = address(sub_dbd33e45Address)
        mem[160] = sub_1458100bAddress
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        call address(sub_dbd33e45Address).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 32, 42, 0x6f73656c6c20746f6d6220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[302 len 22]
        if eth.balance(this.address) <= 0:
            revert with 0, 
                        32,
                        46,
                        0x7772656365697665466d74416d7420616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                        mem[306 len 18]
        emit 0x98a68058: ext_call.return_data[0], eth.balance(this.address)
        mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = eth.balance(this.address)
        mem[292] = this.address
        mem[324] = block.timestamp + 60
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sub_f6c6e5e8Address)
        call sub_f6c6e5e8Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], eth.balance(this.address), Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 60
        if ext_call.success:
            require ext_code.size(address(sub_dbd33e45Address))
            staticcall address(sub_dbd33e45Address).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x81e6d68f: ext_call.return_data[0], 0
        if return_data.size < 68:
            if not return_data.size:
                mem[224] = 'swap tomb '
                mem[234 len 0] = None
                mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(eth.balance(this.address)), 0) >> 16
                mem[64] = 236
                mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[240] = 32
                mem[272] = 0, ext_call.return_data[0 len 28]
                mem[304 len ceil32(0, ext_call.return_data[0 len 28])] = mem[224 len ceil32(0, ext_call.return_data[0 len 28])]
                if not ext_call.return_data[0 len 28] % 32:
                    revert with 0, 32, mem[272 len 0, ext_call.return_data[0 len 28] + 32]
                mem[floor32(0, ext_call.return_data[0 len 28]) + 304] = mem[floor32(0, ext_call.return_data[0 len 28]) + -(ext_call.return_data[0 len 28] % 32) + 336 len ext_call.return_data[0 len 28] % 32]
                revert with 0, 32, mem[272 len floor32(0, ext_call.return_data[0 len 28]) + 64]
            mem[192] = return_data.size
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
            mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
            mem[64] = return_data.size + ceil32(return_data.size) + 235
            mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[return_data.size + ceil32(return_data.size) + 239] = 32
            mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
            mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
            if not mem[ceil32(return_data.size) + 193] % 32:
                revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            if not return_data.size:
                mem[224] = 'swap tomb '
                mem[234 len 0] = None
                mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(eth.balance(this.address)), 0) >> 16
                mem[64] = 236
                mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[240] = 32
                mem[272] = 0, ext_call.return_data[0 len 28]
                mem[304 len ceil32(0, ext_call.return_data[0 len 28])] = mem[224 len ceil32(0, ext_call.return_data[0 len 28])]
                if not ext_call.return_data[0 len 28] % 32:
                    revert with 0, 32, mem[272 len 0, ext_call.return_data[0 len 28] + 32]
                mem[floor32(0, ext_call.return_data[0 len 28]) + 304] = mem[floor32(0, ext_call.return_data[0 len 28]) + -(ext_call.return_data[0 len 28] % 32) + 336 len ext_call.return_data[0 len 28] % 32]
                revert with 0, 32, mem[272 len floor32(0, ext_call.return_data[0 len 28]) + 64]
            mem[192] = return_data.size
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
            mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
            mem[64] = return_data.size + ceil32(return_data.size) + 235
            mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[return_data.size + ceil32(return_data.size) + 239] = 32
            mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
            mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
            if not mem[ceil32(return_data.size) + 193] % 32:
                revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
        mem[192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, ext_call.return_data[0 len 28] > test266151307() or 0, ext_call.return_data[0 len 28] + 36 > return_data.size:
            if not return_data.size:
                mem[224] = 'swap tomb '
                mem[234 len 0] = None
                mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(eth.balance(this.address)), 0) >> 16
                mem[64] = 236
                mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[240] = 32
                mem[272] = 0, ext_call.return_data[0 len 28]
                mem[304 len ceil32(0, ext_call.return_data[0 len 28])] = mem[224 len ceil32(0, ext_call.return_data[0 len 28])]
                if not ext_call.return_data[0 len 28] % 32:
                    revert with 0, 32, mem[272 len 0, ext_call.return_data[0 len 28] + 32]
                mem[floor32(0, ext_call.return_data[0 len 28]) + 304] = mem[floor32(0, ext_call.return_data[0 len 28]) + -(ext_call.return_data[0 len 28] % 32) + 336 len ext_call.return_data[0 len 28] % 32]
                revert with 0, 32, mem[272 len floor32(0, ext_call.return_data[0 len 28]) + 64]
            mem[192] = return_data.size
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
            mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
            mem[64] = return_data.size + ceil32(return_data.size) + 235
            mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[return_data.size + ceil32(return_data.size) + 239] = 32
            mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
            mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
            if not mem[ceil32(return_data.size) + 193] % 32:
                revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
        if mem[0, ext_call.return_data[0 len 28] + 192] > test266151307():
            if not return_data.size:
                mem[224] = 'swap tomb '
                mem[234 len 0] = None
                mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(eth.balance(this.address)), 0) >> 16
                mem[64] = 236
                mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[240] = 32
                mem[272] = 0, ext_call.return_data[0 len 28]
                mem[304 len ceil32(0, ext_call.return_data[0 len 28])] = mem[224 len ceil32(0, ext_call.return_data[0 len 28])]
                if not ext_call.return_data[0 len 28] % 32:
                    revert with 0, 32, mem[272 len 0, ext_call.return_data[0 len 28] + 32]
                mem[floor32(0, ext_call.return_data[0 len 28]) + 304] = mem[floor32(0, ext_call.return_data[0 len 28]) + -(ext_call.return_data[0 len 28] % 32) + 336 len ext_call.return_data[0 len 28] % 32]
                revert with 0, 32, mem[272 len floor32(0, ext_call.return_data[0 len 28]) + 64]
            mem[192] = return_data.size
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
            mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
            mem[64] = return_data.size + ceil32(return_data.size) + 235
            mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[return_data.size + ceil32(return_data.size) + 239] = 32
            mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
            mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
            if not mem[ceil32(return_data.size) + 193] % 32:
                revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
        if 0, ext_call.return_data[0 len 28] + mem[0, ext_call.return_data[0 len 28] + 192] + 32 > return_data.size:
            if not return_data.size:
                mem[224] = 'swap tomb '
                mem[234 len 0] = None
                mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(eth.balance(this.address)), 0) >> 16
                mem[64] = 236
                mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[240] = 32
                mem[272] = 0, ext_call.return_data[0 len 28]
                mem[304 len ceil32(0, ext_call.return_data[0 len 28])] = mem[224 len ceil32(0, ext_call.return_data[0 len 28])]
                if not ext_call.return_data[0 len 28] % 32:
                    revert with 0, 32, mem[272 len 0, ext_call.return_data[0 len 28] + 32]
                mem[floor32(0, ext_call.return_data[0 len 28]) + 304] = mem[floor32(0, ext_call.return_data[0 len 28]) + -(ext_call.return_data[0 len 28] % 32) + 336 len ext_call.return_data[0 len 28] % 32]
                revert with 0, 32, mem[272 len floor32(0, ext_call.return_data[0 len 28]) + 64]
            mem[192] = return_data.size
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 225] = 'swap tomb '
            mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
            mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
            mem[64] = return_data.size + ceil32(return_data.size) + 235
            mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[return_data.size + ceil32(return_data.size) + 239] = 32
            mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
            mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
            if not mem[ceil32(return_data.size) + 193] % 32:
                revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
        mem[64] = 0, ext_call.return_data[0 len 28] + ceil32(mem[0, ext_call.return_data[0 len 28] + 192]) + 224
        if 0, ext_call.return_data[0 len 28] + 192:
            _658 = mem[64]
            mem[mem[64] + 32] = 'swap tomb '
            _659 = mem[0, ext_call.return_data[0 len 28] + 192]
            mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
            mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
            _1020 = mem[64]
            mem[64] = _659 + mem[64] + 42
            mem[_659 + _658 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_659 + _658 + 46] = 32
            mem[_659 + _658 + 78] = mem[_1020]
            _1023 = mem[_1020]
            mem[_659 + _658 + 110 len ceil32(mem[_1020])] = mem[_1020 + 32 len ceil32(mem[_1020])]
            if not _1023 % 32:
                revert with memory
                  from mem[64]
                   len _1023 + _659 + _658 + -mem[64] + 110
            mem[floor32(_1023) + _659 + _658 + 110] = mem[floor32(_1023) + _659 + _658 + -(_1023 % 32) + 142 len _1023 % 32]
            revert with memory
              from mem[64]
               len floor32(_1023) + _659 + _658 + -mem[64] + 142
        if not return_data.size:
            _803 = mem[64]
            mem[mem[64] + 32] = 'swap tomb '
            mem[mem[64] + 42 len 0] = None
            mem[mem[64] + 72 len 2] = uint16(stor4)
            mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
            _1027 = mem[64]
            mem[64] = mem[64] + 44
            mem[_803 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_803 + 48] = 32
            mem[_803 + 80] = mem[_1027]
            _1030 = mem[_1027]
            mem[_803 + 112 len ceil32(mem[_1027])] = mem[_1027 + 32 len ceil32(mem[_1027])]
            if not _1030 % 32:
                revert with memory
                  from mem[64]
                   len _1030 + _803 + -mem[64] + 112
            mem[floor32(_1030) + _803 + 112] = mem[floor32(_1030) + _803 + -(_1030 % 32) + 144 len _1030 % 32]
            revert with memory
              from mem[64]
               len floor32(_1030) + _803 + -mem[64] + 144
        _760 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_760] = return_data.size
        mem[_760 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _805 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
        mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_760 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
        _1034 = mem[64]
        mem[64] = return_data.size + mem[64] + 42
        mem[return_data.size + _805 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[return_data.size + _805 + 46] = 32
        mem[return_data.size + _805 + 78] = mem[_1034]
        _1037 = mem[_1034]
        mem[return_data.size + _805 + 110 len ceil32(mem[_1034])] = mem[_1034 + 32 len ceil32(mem[_1034])]
        if not _1037 % 32:
            revert with memory
              from mem[64]
               len _1037 + return_data.size + _805 + -mem[64] + 110
        mem[floor32(_1037) + return_data.size + _805 + 110] = mem[floor32(_1037) + return_data.size + _805 + -(_1037 % 32) + 142 len _1037 % 32]
        revert with memory
          from mem[64]
           len floor32(_1037) + return_data.size + _805 + -mem[64] + 142
    if not Mask(255, 1, ext_call.return_data[0]):
        if ext_call.return_data[0] > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if -ext_call.return_data[0] + 10000:
            require -ext_call.return_data[0] + 10000
            if 0 / -ext_call.return_data[0] + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        call address(sub_dbd33e45Address).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / 2 <= 0:
            revert with 0, 32, 42, 0x6f73656c6c20746f6d6220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[302 len 22]
        revert with 0, 
                    32,
                    46,
                    0x7772656365697665466d74416d7420616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[306 len 18]
    require ext_call.return_data[0] / 2
    if ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / ext_call.return_data[0] / 2 != Mask(144, 0, ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -ext_call.return_data[0] + 10000:
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        call address(sub_dbd33e45Address).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / 2 <= 0:
            revert with 0, 32, 42, 0x6f73656c6c20746f6d6220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[302 len 22]
        revert with 0, 
                    32,
                    46,
                    0x7772656365697665466d74416d7420616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[306 len 18]
    require -ext_call.return_data[0] + 10000
    if (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / -ext_call.return_data[0] + 10000 != ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000:
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        call address(sub_dbd33e45Address).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_f6c6e5e8Address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / 2 <= 0:
            revert with 0, 32, 42, 0x6f73656c6c20746f6d6220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[302 len 22]
        revert with 0, 
                    32,
                    46,
                    0x7772656365697665466d74416d7420616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[306 len 18]
    require (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000
    if 8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 != 8000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    mem[96] = 2
    mem[128] = address(sub_dbd33e45Address)
    mem[160] = sub_1458100bAddress
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6c6e5e8Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_dbd33e45Address))
    call address(sub_dbd33e45Address).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6c6e5e8Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 2 <= 0:
        revert with 0, 32, 42, 0x6f73656c6c20746f6d6220616d6f756e74206d7573742062652067726561746572207468616e207a6572, mem[302 len 22]
    if 8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000 <= 0:
        revert with 0, 
                    32,
                    46,
                    0x7772656365697665466d74416d7420616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[306 len 18]
    emit 0x98a68058: Mask(255, 1, ext_call.return_data[0]), 8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000
    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0] / 2
    mem[228] = 8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000
    mem[292] = this.address
    mem[324] = block.timestamp + 60
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(sub_f6c6e5e8Address)
    call sub_f6c6e5e8Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 60
    if ext_call.success:
        require ext_code.size(address(sub_dbd33e45Address))
        staticcall address(sub_dbd33e45Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0x81e6d68f: Mask(255, 1, ext_call.return_data[0]), 0
    if return_data.size < 68:
        if not return_data.size:
            mem[224] = 'swap tomb '
            mem[234 len 0] = None
            mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000), 0) >> 16
            mem[64] = 236
            mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[240] = 32
            mem[272] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[304 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if not Mask(5, 32, ext_call.return_data[0]):
                revert with 0, 32, mem[272 len 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 32]
            mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 304] = mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + -(Mask(5, 32, ext_call.return_data[0]) >> 32) + 336 len Mask(5, 32, ext_call.return_data[0]) >> 32]
            revert with 0, 32, mem[272 len floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 64]
        mem[192] = return_data.size
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
        mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
        mem[64] = return_data.size + ceil32(return_data.size) + 235
        mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[return_data.size + ceil32(return_data.size) + 239] = 32
        mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
        mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
        if not mem[ceil32(return_data.size) + 193] % 32:
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        if not return_data.size:
            mem[224] = 'swap tomb '
            mem[234 len 0] = None
            mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000), 0) >> 16
            mem[64] = 236
            mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[240] = 32
            mem[272] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[304 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if not Mask(5, 32, ext_call.return_data[0]):
                revert with 0, 32, mem[272 len 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 32]
            mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 304] = mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + -(Mask(5, 32, ext_call.return_data[0]) >> 32) + 336 len Mask(5, 32, ext_call.return_data[0]) >> 32]
            revert with 0, 32, mem[272 len floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 64]
        mem[192] = return_data.size
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
        mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
        mem[64] = return_data.size + ceil32(return_data.size) + 235
        mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[return_data.size + ceil32(return_data.size) + 239] = 32
        mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
        mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
        if not mem[ceil32(return_data.size) + 193] % 32:
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
    mem[192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 > test266151307() or 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 36 > return_data.size:
        if not return_data.size:
            mem[224] = 'swap tomb '
            mem[234 len 0] = None
            mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000), 0) >> 16
            mem[64] = 236
            mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[240] = 32
            mem[272] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[304 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if not Mask(5, 32, ext_call.return_data[0]):
                revert with 0, 32, mem[272 len 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 32]
            mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 304] = mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + -(Mask(5, 32, ext_call.return_data[0]) >> 32) + 336 len Mask(5, 32, ext_call.return_data[0]) >> 32]
            revert with 0, 32, mem[272 len floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 64]
        mem[192] = return_data.size
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
        mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
        mem[64] = return_data.size + ceil32(return_data.size) + 235
        mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[return_data.size + ceil32(return_data.size) + 239] = 32
        mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
        mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
        if not mem[ceil32(return_data.size) + 193] % 32:
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
    if mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
        if not return_data.size:
            mem[224] = 'swap tomb '
            mem[234 len 0] = None
            mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000), 0) >> 16
            mem[64] = 236
            mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[240] = 32
            mem[272] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[304 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if not Mask(5, 32, ext_call.return_data[0]):
                revert with 0, 32, mem[272 len 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 32]
            mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 304] = mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + -(Mask(5, 32, ext_call.return_data[0]) >> 32) + 336 len Mask(5, 32, ext_call.return_data[0]) >> 32]
            revert with 0, 32, mem[272 len floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 64]
        mem[192] = return_data.size
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
        mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
        mem[64] = return_data.size + ceil32(return_data.size) + 235
        mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[return_data.size + ceil32(return_data.size) + 239] = 32
        mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
        mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
        if not mem[ceil32(return_data.size) + 193] % 32:
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
    if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 32 > return_data.size:
        if not return_data.size:
            mem[224] = 'swap tomb '
            mem[234 len 0] = None
            mem[234 len 30] = Mask(240, 16, Mask(176, 0, 'swap tomb '), uint32(8000 * (10000 * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / 2 * Mask(144, 0, ext_call.return_data[0]) / 10^18) / 10000 / 10000), 0) >> 16
            mem[64] = 236
            mem[236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[240] = 32
            mem[272] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32
            mem[304 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)] = mem[224 len ceil32(0, Mask(224, 32, ext_call.return_data[0]) >> 32)]
            if not Mask(5, 32, ext_call.return_data[0]):
                revert with 0, 32, mem[272 len 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 32]
            mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 304] = mem[floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + -(Mask(5, 32, ext_call.return_data[0]) >> 32) + 336 len Mask(5, 32, ext_call.return_data[0]) >> 32]
            revert with 0, 32, mem[272 len floor32(0, Mask(224, 32, ext_call.return_data[0]) >> 32) + 64]
        mem[192] = return_data.size
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 225] = 'swap tomb '
        mem[ceil32(return_data.size) + 235 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
        mem[ceil32(return_data.size) + floor32(return_data.size) + -(return_data.size % 32) + 267 len return_data.size % 32] = mem[floor32(return_data.size) + -(return_data.size % 32) + 256 len return_data.size % 32]
        mem[64] = return_data.size + ceil32(return_data.size) + 235
        mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[return_data.size + ceil32(return_data.size) + 239] = 32
        mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
        mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
        if not mem[ceil32(return_data.size) + 193] % 32:
            revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len floor32(mem[ceil32(return_data.size) + 193]) + 64]
    mem[64] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + ceil32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 224
    if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192:
        _633 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        _634 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
        mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
        _929 = mem[64]
        mem[64] = _634 + mem[64] + 42
        mem[_634 + _633 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_634 + _633 + 46] = 32
        mem[_634 + _633 + 78] = mem[_929]
        _932 = mem[_929]
        mem[_634 + _633 + 110 len ceil32(mem[_929])] = mem[_929 + 32 len ceil32(mem[_929])]
        if not _932 % 32:
            revert with memory
              from mem[64]
               len _932 + _634 + _633 + -mem[64] + 110
        mem[floor32(_932) + _634 + _633 + 110] = mem[floor32(_932) + _634 + _633 + -(_932 % 32) + 142 len _932 % 32]
        revert with memory
          from mem[64]
           len floor32(_932) + _634 + _633 + -mem[64] + 142
    if not return_data.size:
        _779 = mem[64]
        mem[mem[64] + 32] = 'swap tomb '
        mem[mem[64] + 42 len 0] = None
        mem[mem[64] + 72 len 2] = uint16(stor4)
        mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
        _936 = mem[64]
        mem[64] = mem[64] + 44
        mem[_779 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_779 + 48] = 32
        mem[_779 + 80] = mem[_936]
        _939 = mem[_936]
        mem[_779 + 112 len ceil32(mem[_936])] = mem[_936 + 32 len ceil32(mem[_936])]
        if not _939 % 32:
            revert with memory
              from mem[64]
               len _939 + _779 + -mem[64] + 112
        mem[floor32(_939) + _779 + 112] = mem[floor32(_939) + _779 + -(_939 % 32) + 144 len _939 % 32]
        revert with memory
          from mem[64]
           len floor32(_939) + _779 + -mem[64] + 144
    _734 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_734] = return_data.size
    mem[_734 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    _781 = mem[64]
    mem[mem[64] + 32] = 'swap tomb '
    mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
    mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_734 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
    _943 = mem[64]
    mem[64] = return_data.size + mem[64] + 42
    mem[return_data.size + _781 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[return_data.size + _781 + 46] = 32
    mem[return_data.size + _781 + 78] = mem[_943]
    _946 = mem[_943]
    mem[return_data.size + _781 + 110 len ceil32(mem[_943])] = mem[_943 + 32 len ceil32(mem[_943])]
    if not _946 % 32:
        revert with memory
          from mem[64]
           len _946 + return_data.size + _781 + -mem[64] + 110
    mem[floor32(_946) + return_data.size + _781 + 110] = mem[floor32(_946) + return_data.size + _781 + -(_946 % 32) + 142 len _946 % 32]
    revert with memory
      from mem[64]
       len floor32(_946) + return_data.size + _781 + -mem[64] + 142
}



}
