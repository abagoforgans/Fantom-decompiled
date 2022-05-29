contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f6c6e5e8Address;
address sub_87ced3dcAddress;
address sub_f088996fAddress;
uint16 stor4;
address sub_dbd33e45Address;
uint32 stor5;
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
    return address(sub_85b374c3Address)
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

function sub_8fe6f47c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(sub_85b374c3Address))
    call address(sub_85b374c3Address).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    call sub_1458100bAddress.withdraw(uint256 arg1) with:
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
        call sub_63f96cf4Address.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(sub_85b374c3Address))
    staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(sub_85b374c3Address))
        call address(sub_85b374c3Address).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_85b374c3Address))
        call address(sub_85b374c3Address).transfer(address arg1, uint256 arg2) with:
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
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x1aa29c48: 0
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x8ced237d: 0
        else:
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x1aa29c48: 0
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x8ced237d: 0
            require ext_code.size(address(sub_85b374c3Address))
            call address(sub_85b374c3Address).approve(address arg1, uint256 arg2) with:
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
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0]:
                require ext_code.size(sub_33aa2191Address)
                staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_85b374c3Address))
                call address(sub_85b374c3Address).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args zapAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_1458100bAddress)
                call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args zapAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_33aa2191Address)
                call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args zapAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_85b374c3Address))
                call address(sub_85b374c3Address).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_f6c6e5e8Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_1458100bAddress)
                call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_f6c6e5e8Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_33aa2191Address)
                call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_f6c6e5e8Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xcdb5839a: ext_call.return_data[0]
                require ext_code.size(zapAddress)
                call zapAddress.0xcee6202c with:
                     gas gas_remaining wei
                    args 0, uint32(stor5), ext_call.return_data[0], sub_33aa2191Address, sub_f6c6e5e8Address, address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_33aa2191Address)
                staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
            emit 0x1aa29c48: ext_call.return_data[0], 0
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x8ced237d: 0
    else:
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
            if not ext_call.success:
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
                mem[64] = 0, ext_call.return_data[0 len 28] + ceil32(mem[0, ext_call.return_data[0 len 28] + 192]) + 224
                if 0, ext_call.return_data[0 len 28] + 192:
                    _916 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    _917 = mem[0, ext_call.return_data[0 len 28] + 192]
                    mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                    mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                    _1450 = mem[64]
                    mem[64] = _917 + mem[64] + 42
                    mem[_917 + _916 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_917 + _916 + 46] = 32
                    mem[_917 + _916 + 78] = mem[_1450]
                    _1453 = mem[_1450]
                    mem[_917 + _916 + 110 len ceil32(mem[_1450])] = mem[_1450 + 32 len ceil32(mem[_1450])]
                    if not _1453 % 32:
                        revert with 0, 32, mem[_917 + _916 + 78 len _1453 + 32]
                    mem[floor32(_1453) + _917 + _916 + 110] = mem[floor32(_1453) + _917 + _916 + -(_1453 % 32) + 142 len _1453 % 32]
                    revert with 0, 32, mem[_917 + _916 + 78 len floor32(_1453) + 64]
                if not return_data.size:
                    _1061 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len 0] = None
                    mem[mem[64] + 72 len 2] = uint16(stor4)
                    mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                    _1457 = mem[64]
                    mem[64] = mem[64] + 44
                    mem[_1061 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1061 + 48] = 32
                    mem[_1061 + 80] = mem[_1457]
                    _1460 = mem[_1457]
                    mem[_1061 + 112 len ceil32(mem[_1457])] = mem[_1457 + 32 len ceil32(mem[_1457])]
                    if not _1460 % 32:
                        revert with 0, 32, mem[_1061 + 80 len _1460 + 32]
                    mem[floor32(_1460) + _1061 + 112] = mem[floor32(_1460) + _1061 + -(_1460 % 32) + 144 len _1460 % 32]
                    revert with 0, 32, mem[_1061 + 80 len floor32(_1460) + 64]
                _1018 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1018] = return_data.size
                mem[_1018 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _1063 = mem[64]
                mem[mem[64] + 32] = 'swap tomb '
                mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_1018 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                _1464 = mem[64]
                mem[64] = return_data.size + mem[64] + 42
                mem[return_data.size + _1063 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[return_data.size + _1063 + 46] = 32
                mem[return_data.size + _1063 + 78] = mem[_1464]
                _1467 = mem[_1464]
                mem[return_data.size + _1063 + 110 len ceil32(mem[_1464])] = mem[_1464 + 32 len ceil32(mem[_1464])]
                if not _1467 % 32:
                    revert with memory
                      from mem[64]
                       len _1467 + return_data.size + _1063 + -mem[64] + 110
                mem[floor32(_1467) + return_data.size + _1063 + 110] = mem[floor32(_1467) + return_data.size + _1063 + -(_1467 % 32) + 142 len _1467 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1467) + return_data.size + _1063 + -mem[64] + 142
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
        else:
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
            if not ext_call.success:
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
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
                    mem[return_data.size + ceil32(return_data.size) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + ceil32(return_data.size) + 239] = 32
                    mem[return_data.size + ceil32(return_data.size) + 271] = mem[ceil32(return_data.size) + 193]
                    mem[return_data.size + ceil32(return_data.size) + 303 len ceil32(mem[ceil32(return_data.size) + 193])] = mem[ceil32(return_data.size) + 225 len ceil32(mem[ceil32(return_data.size) + 193])]
                    if not mem[ceil32(return_data.size) + 193] % 32:
                        revert with 0, 32, mem[return_data.size + ceil32(return_data.size) + 271 len mem[ceil32(return_data.size) + 193] + 32]
                    mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + 303] = mem[floor32(mem[ceil32(return_data.size) + 193]) + return_data.size + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 193] % 32) + 335 len mem[ceil32(return_data.size) + 193] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(return_data.size) + 193],
                                mem[return_data.size + ceil32(return_data.size) + 303 len floor32(mem[ceil32(return_data.size) + 193]) + 32]
                mem[64] = 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + ceil32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 224
                if 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192:
                    _891 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    _892 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                    mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                    mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                    _1359 = mem[64]
                    mem[64] = _892 + _891 + 42
                    mem[_892 + _891 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_892 + _891 + 46] = 32
                    mem[_892 + _891 + 78] = mem[_1359]
                    _1362 = mem[_1359]
                    mem[_892 + _891 + 110 len ceil32(mem[_1359])] = mem[_1359 + 32 len ceil32(mem[_1359])]
                    if not _1362 % 32:
                        revert with 0, 32, mem[_892 + _891 + 78 len _1362 + 32]
                    mem[floor32(_1362) + _892 + _891 + 110] = mem[floor32(_1362) + _892 + _891 + -(_1362 % 32) + 142 len _1362 % 32]
                    revert with 0, 32, mem[_892 + _891 + 78 len floor32(_1362) + 64]
                if not return_data.size:
                    _1037 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len 0] = None
                    mem[mem[64] + 72 len 2] = uint16(stor4)
                    mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                    _1366 = mem[64]
                    mem[64] = mem[64] + 44
                    mem[_1037 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1037 + 48] = 32
                    mem[_1037 + 80] = mem[_1366]
                    _1369 = mem[_1366]
                    mem[_1037 + 112 len ceil32(mem[_1366])] = mem[_1366 + 32 len ceil32(mem[_1366])]
                    if not _1369 % 32:
                        revert with 0, 32, mem[_1037 + 80 len _1369 + 32]
                    mem[floor32(_1369) + _1037 + 112] = mem[floor32(_1369) + _1037 + -(_1369 % 32) + 144 len _1369 % 32]
                    revert with 0, 32, mem[_1037 + 80 len floor32(_1369) + 64]
                _992 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_992] = return_data.size
                mem[_992 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _1039 = mem[64]
                mem[mem[64] + 32] = 'swap tomb '
                mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_992 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                _1373 = mem[64]
                mem[64] = return_data.size + mem[64] + 42
                mem[return_data.size + _1039 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[return_data.size + _1039 + 46] = 32
                mem[return_data.size + _1039 + 78] = mem[_1373]
                _1376 = mem[_1373]
                mem[return_data.size + _1039 + 110 len ceil32(mem[_1373])] = mem[_1373 + 32 len ceil32(mem[_1373])]
                if not _1376 % 32:
                    revert with memory
                      from mem[64]
                       len _1376 + return_data.size + _1039 + -mem[64] + 110
                mem[floor32(_1376) + return_data.size + _1039 + 110] = mem[floor32(_1376) + return_data.size + _1039 + -(_1376 % 32) + 142 len _1376 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1376) + return_data.size + _1039 + -mem[64] + 142
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
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0]:
                require ext_code.size(sub_33aa2191Address)
                staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_85b374c3Address))
                call address(sub_85b374c3Address).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args zapAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_1458100bAddress)
                call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args zapAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_33aa2191Address)
                call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args zapAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_85b374c3Address))
                call address(sub_85b374c3Address).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_f6c6e5e8Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_1458100bAddress)
                call sub_1458100bAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_f6c6e5e8Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_33aa2191Address)
                call sub_33aa2191Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_f6c6e5e8Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xcdb5839a: ext_call.return_data[0]
                require ext_code.size(zapAddress)
                call zapAddress.0xcee6202c with:
                     gas gas_remaining wei
                    args address(sub_85b374c3Address), ext_call.return_data[0], sub_33aa2191Address, sub_f6c6e5e8Address, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_33aa2191Address)
                staticcall sub_33aa2191Address.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
            emit 0x1aa29c48: ext_call.return_data[0], 0
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
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
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x8ced237d: 0
}



}
