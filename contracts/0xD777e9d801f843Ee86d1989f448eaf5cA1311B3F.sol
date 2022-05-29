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
uint256 sub_ad70d6f6;

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

function sub_ad70d6f6(?) {
    return sub_ad70d6f6
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
    require ext_code.size(address(sub_85b374c3Address))
    call address(sub_85b374c3Address).0x23b872dd with:
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
    call address(sub_dbd33e45Address).0x23b872dd with:
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
    staticcall sub_63f96cf4Address.canClaimReward(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_63f96cf4Address)
        staticcall sub_63f96cf4Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(sub_63f96cf4Address)
            staticcall sub_63f96cf4Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
    staticcall address(sub_85b374c3Address).0x70a08231 with:
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
        staticcall address(sub_85b374c3Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_85b374c3Address))
        call address(sub_85b374c3Address).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(sub_dbd33e45Address))
    staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
        staticcall address(sub_dbd33e45Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        call address(sub_dbd33e45Address).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_1458100bAddress)
    staticcall sub_1458100bAddress.0x70a08231 with:
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
        staticcall sub_1458100bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1458100bAddress)
        call sub_1458100bAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_1e9b8c59Address)
    staticcall sub_1e9b8c59Address.0x70a08231 with:
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
        staticcall sub_1e9b8c59Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_33aa2191Address)
    staticcall sub_33aa2191Address.0x70a08231 with:
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
        staticcall sub_33aa2191Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.0xa9059cbb with:
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

function stakeAll() {
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
    staticcall address(sub_dbd33e45Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_ad70d6f6:
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
        staticcall address(sub_85b374c3Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_85b374c3Address))
        staticcall address(sub_85b374c3Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0]:
                require ext_code.size(sub_33aa2191Address)
                staticcall sub_33aa2191Address.0x70a08231 with:
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
                staticcall sub_33aa2191Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
            emit 0x1aa29c48: ext_call.return_data[0], 0
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                args 1, 0
            if not ext_call.success:
                revert with 0, 'tshare-wftm LP deposit failed'
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).0x70a08231 with:
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
        staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                    _1042 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    _1043 = mem[0, ext_call.return_data[0 len 28] + 192]
                    mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                    mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                    _1660 = mem[64]
                    mem[64] = _1043 + mem[64] + 42
                    mem[_1043 + _1042 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1043 + _1042 + 46] = 32
                    mem[_1043 + _1042 + 78] = mem[_1660]
                    _1663 = mem[_1660]
                    mem[_1043 + _1042 + 110 len ceil32(mem[_1660])] = mem[_1660 + 32 len ceil32(mem[_1660])]
                    if not _1663 % 32:
                        revert with 0, 32, mem[_1043 + _1042 + 78 len _1663 + 32]
                    mem[floor32(_1663) + _1043 + _1042 + 110] = mem[floor32(_1663) + _1043 + _1042 + -(_1663 % 32) + 142 len _1663 % 32]
                    revert with 0, 32, mem[_1043 + _1042 + 78 len floor32(_1663) + 64]
                if not return_data.size:
                    _1187 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len 0] = None
                    mem[mem[64] + 72 len 2] = uint16(stor4)
                    mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                    _1667 = mem[64]
                    mem[64] = mem[64] + 44
                    mem[_1187 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1187 + 48] = 32
                    mem[_1187 + 80] = mem[_1667]
                    _1670 = mem[_1667]
                    mem[_1187 + 112 len ceil32(mem[_1667])] = mem[_1667 + 32 len ceil32(mem[_1667])]
                    if not _1670 % 32:
                        revert with 0, 32, mem[_1187 + 80 len _1670 + 32]
                    mem[floor32(_1670) + _1187 + 112] = mem[floor32(_1670) + _1187 + -(_1670 % 32) + 144 len _1670 % 32]
                    revert with 0, 32, mem[_1187 + 80 len floor32(_1670) + 64]
                _1144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1144] = return_data.size
                mem[_1144 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _1189 = mem[64]
                mem[mem[64] + 32] = 'swap tomb '
                mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_1144 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                _1674 = mem[64]
                mem[64] = return_data.size + mem[64] + 42
                mem[return_data.size + _1189 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[return_data.size + _1189 + 46] = 32
                mem[return_data.size + _1189 + 78] = mem[_1674]
                _1677 = mem[_1674]
                mem[return_data.size + _1189 + 110 len ceil32(mem[_1674])] = mem[_1674 + 32 len ceil32(mem[_1674])]
                if not _1677 % 32:
                    revert with memory
                      from mem[64]
                       len _1677 + return_data.size + _1189 + -mem[64] + 110
                mem[floor32(_1677) + return_data.size + _1189 + 110] = mem[floor32(_1677) + return_data.size + _1189 + -(_1677 % 32) + 142 len _1677 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1677) + return_data.size + _1189 + -mem[64] + 142
            require ext_code.size(address(sub_dbd33e45Address))
            staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                    _1017 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    _1018 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                    mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                    mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                    _1569 = mem[64]
                    mem[64] = _1018 + _1017 + 42
                    mem[_1018 + _1017 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1018 + _1017 + 46] = 32
                    mem[_1018 + _1017 + 78] = mem[_1569]
                    _1572 = mem[_1569]
                    mem[_1018 + _1017 + 110 len ceil32(mem[_1569])] = mem[_1569 + 32 len ceil32(mem[_1569])]
                    if not _1572 % 32:
                        revert with 0, 32, mem[_1018 + _1017 + 78 len _1572 + 32]
                    mem[floor32(_1572) + _1018 + _1017 + 110] = mem[floor32(_1572) + _1018 + _1017 + -(_1572 % 32) + 142 len _1572 % 32]
                    revert with 0, 32, mem[_1018 + _1017 + 78 len floor32(_1572) + 64]
                if not return_data.size:
                    _1163 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len 0] = None
                    mem[mem[64] + 72 len 2] = uint16(stor4)
                    mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                    _1576 = mem[64]
                    mem[64] = mem[64] + 44
                    mem[_1163 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1163 + 48] = 32
                    mem[_1163 + 80] = mem[_1576]
                    _1579 = mem[_1576]
                    mem[_1163 + 112 len ceil32(mem[_1576])] = mem[_1576 + 32 len ceil32(mem[_1576])]
                    if not _1579 % 32:
                        revert with 0, 32, mem[_1163 + 80 len _1579 + 32]
                    mem[floor32(_1579) + _1163 + 112] = mem[floor32(_1579) + _1163 + -(_1579 % 32) + 144 len _1579 % 32]
                    revert with 0, 32, mem[_1163 + 80 len floor32(_1579) + 64]
                _1118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1118] = return_data.size
                mem[_1118 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _1165 = mem[64]
                mem[mem[64] + 32] = 'swap tomb '
                mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_1118 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                _1583 = mem[64]
                mem[64] = return_data.size + mem[64] + 42
                mem[return_data.size + _1165 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[return_data.size + _1165 + 46] = 32
                mem[return_data.size + _1165 + 78] = mem[_1583]
                _1586 = mem[_1583]
                mem[return_data.size + _1165 + 110 len ceil32(mem[_1583])] = mem[_1583 + 32 len ceil32(mem[_1583])]
                if not _1586 % 32:
                    revert with memory
                      from mem[64]
                       len _1586 + return_data.size + _1165 + -mem[64] + 110
                mem[floor32(_1586) + return_data.size + _1165 + 110] = mem[floor32(_1586) + return_data.size + _1165 + -(_1586 % 32) + 142 len _1586 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1586) + return_data.size + _1165 + -mem[64] + 142
            require ext_code.size(address(sub_dbd33e45Address))
            staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
        staticcall address(sub_85b374c3Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0]:
                require ext_code.size(sub_33aa2191Address)
                staticcall sub_33aa2191Address.0x70a08231 with:
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
                staticcall sub_33aa2191Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
            emit 0x1aa29c48: ext_call.return_data[0], 0
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                args 1, 0
            if not ext_call.success:
                revert with 0, 'tshare-wftm LP deposit failed'
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x8ced237d: 0
    require ext_code.size(address(sub_85b374c3Address))
    staticcall address(sub_85b374c3Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
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
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'masonry staking failed'
        emit 0xe4dba445: ext_call.return_data[0]
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
        require ext_code.size(sub_7abd5a1cAddress)
        staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(sub_dbd33e45Address), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_dbd33e45Address))
        staticcall address(sub_dbd33e45Address).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_ad70d6f6:
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).0x70a08231 with:
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
            staticcall address(sub_85b374c3Address).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(sub_85b374c3Address))
            staticcall address(sub_85b374c3Address).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0]:
                    require ext_code.size(sub_33aa2191Address)
                    staticcall sub_33aa2191Address.0x70a08231 with:
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
                    staticcall sub_33aa2191Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                emit 0x1aa29c48: ext_call.return_data[0], 0
                require ext_code.size(address(sub_85b374c3Address))
                staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                    args 1, 0
                if not ext_call.success:
                    revert with 0, 'tshare-wftm LP deposit failed'
                require ext_code.size(address(sub_85b374c3Address))
                staticcall address(sub_85b374c3Address).0x70a08231 with:
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
            staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                        _4072 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        _4073 = mem[0, ext_call.return_data[0 len 28] + 192]
                        mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                        mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                        _6340 = mem[64]
                        mem[64] = _4073 + mem[64] + 42
                        mem[_4073 + _4072 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4073 + _4072 + 46] = 32
                        mem[_4073 + _4072 + 78] = mem[_6340]
                        _6343 = mem[_6340]
                        mem[_4073 + _4072 + 110 len ceil32(mem[_6340])] = mem[_6340 + 32 len ceil32(mem[_6340])]
                        if not _6343 % 32:
                            revert with memory
                              from mem[64]
                               len _6343 + _4073 + _4072 + -mem[64] + 110
                        mem[floor32(_6343) + _4073 + _4072 + 110] = mem[floor32(_6343) + _4073 + _4072 + -(_6343 % 32) + 142 len _6343 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_6343) + _4073 + _4072 + -mem[64] + 142
                    if not return_data.size:
                        _4655 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len 0] = None
                        mem[mem[64] + 72 len 2] = uint16(stor4)
                        mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                        _6347 = mem[64]
                        mem[64] = mem[64] + 44
                        mem[_4655 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4655 + 48] = 32
                        mem[_4655 + 80] = mem[_6347]
                        _6350 = mem[_6347]
                        mem[_4655 + 112 len ceil32(mem[_6347])] = mem[_6347 + 32 len ceil32(mem[_6347])]
                        if not _6350 % 32:
                            revert with 0, 32, mem[_4655 + 80 len _6350 + 32]
                        mem[floor32(_6350) + _4655 + 112] = mem[floor32(_6350) + _4655 + -(_6350 % 32) + 144 len _6350 % 32]
                        revert with 0, 32, mem[_4655 + 80 len floor32(_6350) + 64]
                    _4456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4456] = return_data.size
                    mem[_4456 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _4657 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                    mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4456 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                    _6354 = mem[64]
                    mem[64] = return_data.size + mem[64] + 42
                    mem[return_data.size + _4657 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + _4657 + 46] = 32
                    mem[return_data.size + _4657 + 78] = mem[_6354]
                    _6357 = mem[_6354]
                    mem[return_data.size + _4657 + 110 len ceil32(mem[_6354])] = mem[_6354 + 32 len ceil32(mem[_6354])]
                    if not _6357 % 32:
                        revert with 0, 32, mem[return_data.size + _4657 + 78 len _6357 + 32]
                    mem[floor32(_6357) + return_data.size + _4657 + 110] = mem[floor32(_6357) + return_data.size + _4657 + -(_6357 % 32) + 142 len _6357 % 32]
                    revert with 0, 32, mem[return_data.size + _4657 + 78 len floor32(_6357) + 64]
                require ext_code.size(address(sub_dbd33e45Address))
                staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                        _4047 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        _4048 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                        mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                        mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                        _6249 = mem[64]
                        mem[64] = _4048 + _4047 + 42
                        mem[_4048 + _4047 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4048 + _4047 + 46] = 32
                        mem[_4048 + _4047 + 78] = mem[_6249]
                        _6252 = mem[_6249]
                        mem[_4048 + _4047 + 110 len ceil32(mem[_6249])] = mem[_6249 + 32 len ceil32(mem[_6249])]
                        if not _6252 % 32:
                            revert with 0, 32, mem[_4048 + _4047 + 78 len _6252 + 32]
                        mem[floor32(_6252) + _4048 + _4047 + 110] = mem[floor32(_6252) + _4048 + _4047 + -(_6252 % 32) + 142 len _6252 % 32]
                        revert with 0, 32, mem[_4048 + _4047 + 78 len floor32(_6252) + 64]
                    if not return_data.size:
                        _4631 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len 0] = None
                        mem[mem[64] + 72 len 2] = uint16(stor4)
                        mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                        _6256 = mem[64]
                        mem[64] = mem[64] + 44
                        mem[_4631 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4631 + 48] = 32
                        mem[_4631 + 80] = mem[_6256]
                        _6259 = mem[_6256]
                        mem[_4631 + 112 len ceil32(mem[_6256])] = mem[_6256 + 32 len ceil32(mem[_6256])]
                        if not _6259 % 32:
                            revert with 0, 32, mem[_4631 + 80 len _6259 + 32]
                        mem[floor32(_6259) + _4631 + 112] = mem[floor32(_6259) + _4631 + -(_6259 % 32) + 144 len _6259 % 32]
                        revert with 0, 32, mem[_4631 + 80 len floor32(_6259) + 64]
                    _4430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4430] = return_data.size
                    mem[_4430 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _4633 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                    mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4430 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                    _6263 = mem[64]
                    mem[64] = return_data.size + mem[64] + 42
                    mem[return_data.size + _4633 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + _4633 + 46] = 32
                    mem[return_data.size + _4633 + 78] = mem[_6263]
                    _6266 = mem[_6263]
                    mem[return_data.size + _4633 + 110 len ceil32(mem[_6263])] = mem[_6263 + 32 len ceil32(mem[_6263])]
                    if not _6266 % 32:
                        revert with memory
                          from mem[64]
                           len _6266 + return_data.size + _4633 + -mem[64] + 110
                    mem[floor32(_6266) + return_data.size + _4633 + 110] = mem[floor32(_6266) + return_data.size + _4633 + -(_6266 % 32) + 142 len _6266 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_6266) + return_data.size + _4633 + -mem[64] + 142
                require ext_code.size(address(sub_dbd33e45Address))
                staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
            staticcall address(sub_85b374c3Address).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0]:
                    require ext_code.size(sub_33aa2191Address)
                    staticcall sub_33aa2191Address.0x70a08231 with:
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
                    staticcall sub_33aa2191Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                emit 0x1aa29c48: ext_call.return_data[0], 0
                require ext_code.size(address(sub_85b374c3Address))
                staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                    args 1, 0
                if not ext_call.success:
                    revert with 0, 'tshare-wftm LP deposit failed'
                require ext_code.size(address(sub_85b374c3Address))
                staticcall address(sub_85b374c3Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x8ced237d: 0
    else:
        require ext_code.size(sub_63f96cf4Address)
        staticcall sub_63f96cf4Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7abd5a1cAddress)
        staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(sub_dbd33e45Address), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require ext_code.size(address(sub_dbd33e45Address))
            staticcall address(sub_dbd33e45Address).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_ad70d6f6:
                require ext_code.size(address(sub_85b374c3Address))
                staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                staticcall address(sub_85b374c3Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_85b374c3Address))
                staticcall address(sub_85b374c3Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_33aa2191Address)
                        staticcall sub_33aa2191Address.0x70a08231 with:
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
                        staticcall sub_33aa2191Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x1aa29c48: ext_call.return_data[0], 0
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                        args 1, 0
                    if not ext_call.success:
                        revert with 0, 'tshare-wftm LP deposit failed'
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                            _4122 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            _4123 = mem[0, ext_call.return_data[0 len 28] + 192]
                            mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                            mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                            _6522 = mem[64]
                            mem[64] = _4123 + mem[64] + 42
                            mem[_4123 + _4122 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4123 + _4122 + 46] = 32
                            mem[_4123 + _4122 + 78] = mem[_6522]
                            _6525 = mem[_6522]
                            mem[_4123 + _4122 + 110 len ceil32(mem[_6522])] = mem[_6522 + 32 len ceil32(mem[_6522])]
                            if not _6525 % 32:
                                revert with memory
                                  from mem[64]
                                   len _6525 + _4123 + _4122 + -mem[64] + 110
                            mem[floor32(_6525) + _4123 + _4122 + 110] = mem[floor32(_6525) + _4123 + _4122 + -(_6525 % 32) + 142 len _6525 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_6525) + _4123 + _4122 + -mem[64] + 142
                        if not return_data.size:
                            _4703 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len 0] = None
                            mem[mem[64] + 72 len 2] = uint16(stor4)
                            mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                            _6529 = mem[64]
                            mem[64] = mem[64] + 44
                            mem[_4703 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4703 + 48] = 32
                            mem[_4703 + 80] = mem[_6529]
                            _6532 = mem[_6529]
                            mem[_4703 + 112 len ceil32(mem[_6529])] = mem[_6529 + 32 len ceil32(mem[_6529])]
                            if not _6532 % 32:
                                revert with 0, 32, mem[_4703 + 80 len _6532 + 32]
                            mem[floor32(_6532) + _4703 + 112] = mem[floor32(_6532) + _4703 + -(_6532 % 32) + 144 len _6532 % 32]
                            revert with 0, 32, mem[_4703 + 80 len floor32(_6532) + 64]
                        _4508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4508] = return_data.size
                        mem[_4508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _4705 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                        mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4508 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                        _6536 = mem[64]
                        mem[64] = return_data.size + mem[64] + 42
                        mem[return_data.size + _4705 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[return_data.size + _4705 + 46] = 32
                        mem[return_data.size + _4705 + 78] = mem[_6536]
                        _6539 = mem[_6536]
                        mem[return_data.size + _4705 + 110 len ceil32(mem[_6536])] = mem[_6536 + 32 len ceil32(mem[_6536])]
                        if not _6539 % 32:
                            revert with memory
                              from mem[64]
                               len _6539 + return_data.size + _4705 + -mem[64] + 110
                        mem[floor32(_6539) + return_data.size + _4705 + 110] = mem[floor32(_6539) + return_data.size + _4705 + -(_6539 % 32) + 142 len _6539 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_6539) + return_data.size + _4705 + -mem[64] + 142
                    require ext_code.size(address(sub_dbd33e45Address))
                    staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                            _4097 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            _4098 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                            mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                            mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                            _6431 = mem[64]
                            mem[64] = _4098 + _4097 + 42
                            mem[_4098 + _4097 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4098 + _4097 + 46] = 32
                            mem[_4098 + _4097 + 78] = mem[_6431]
                            _6434 = mem[_6431]
                            mem[_4098 + _4097 + 110 len ceil32(mem[_6431])] = mem[_6431 + 32 len ceil32(mem[_6431])]
                            if not _6434 % 32:
                                revert with 0, 32, mem[_4098 + _4097 + 78 len _6434 + 32]
                            mem[floor32(_6434) + _4098 + _4097 + 110] = mem[floor32(_6434) + _4098 + _4097 + -(_6434 % 32) + 142 len _6434 % 32]
                            revert with 0, 32, mem[_4098 + _4097 + 78 len floor32(_6434) + 64]
                        if not return_data.size:
                            _4679 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len 0] = None
                            mem[mem[64] + 72 len 2] = uint16(stor4)
                            mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                            _6438 = mem[64]
                            mem[64] = mem[64] + 44
                            mem[_4679 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4679 + 48] = 32
                            mem[_4679 + 80] = mem[_6438]
                            _6441 = mem[_6438]
                            mem[_4679 + 112 len ceil32(mem[_6438])] = mem[_6438 + 32 len ceil32(mem[_6438])]
                            if not _6441 % 32:
                                revert with 0, 32, mem[_4679 + 80 len _6441 + 32]
                            mem[floor32(_6441) + _4679 + 112] = mem[floor32(_6441) + _4679 + -(_6441 % 32) + 144 len _6441 % 32]
                            revert with 0, 32, mem[_4679 + 80 len floor32(_6441) + 64]
                        _4482 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4482] = return_data.size
                        mem[_4482 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _4681 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                        mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4482 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                        _6445 = mem[64]
                        mem[64] = return_data.size + mem[64] + 42
                        mem[return_data.size + _4681 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[return_data.size + _4681 + 46] = 32
                        mem[return_data.size + _4681 + 78] = mem[_6445]
                        _6448 = mem[_6445]
                        mem[return_data.size + _4681 + 110 len ceil32(mem[_6445])] = mem[_6445 + 32 len ceil32(mem[_6445])]
                        if not _6448 % 32:
                            revert with memory
                              from mem[64]
                               len _6448 + return_data.size + _4681 + -mem[64] + 110
                        mem[floor32(_6448) + return_data.size + _4681 + 110] = mem[floor32(_6448) + return_data.size + _4681 + -(_6448 % 32) + 142 len _6448 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_6448) + return_data.size + _4681 + -mem[64] + 142
                    require ext_code.size(address(sub_dbd33e45Address))
                    staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                staticcall address(sub_85b374c3Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_33aa2191Address)
                        staticcall sub_33aa2191Address.0x70a08231 with:
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
                        staticcall sub_33aa2191Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x1aa29c48: ext_call.return_data[0], 0
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                        args 1, 0
                    if not ext_call.success:
                        revert with 0, 'tshare-wftm LP deposit failed'
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x8ced237d: 0
        else:
            if ext_call.return_data[14 len 18] <= sub_ad70d6f6:
                require ext_code.size(sub_7abd5a1cAddress)
                staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(sub_dbd33e45Address), 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_dbd33e45Address))
                staticcall address(sub_dbd33e45Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_ad70d6f6:
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_33aa2191Address)
                            staticcall sub_33aa2191Address.0x70a08231 with:
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
                            staticcall sub_33aa2191Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                        emit 0x1aa29c48: ext_call.return_data[0], 0
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                            args 1, 0
                        if not ext_call.success:
                            revert with 0, 'tshare-wftm LP deposit failed'
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                    staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                                _4172 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                _4173 = mem[0, ext_call.return_data[0 len 28] + 192]
                                mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                                mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                                _6704 = mem[64]
                                mem[64] = _4173 + mem[64] + 42
                                mem[_4173 + _4172 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4173 + _4172 + 46] = 32
                                mem[_4173 + _4172 + 78] = mem[_6704]
                                _6707 = mem[_6704]
                                mem[_4173 + _4172 + 110 len ceil32(mem[_6704])] = mem[_6704 + 32 len ceil32(mem[_6704])]
                                if not _6707 % 32:
                                    revert with 0, 32, mem[_4173 + _4172 + 78 len _6707 + 32]
                                mem[floor32(_6707) + _4173 + _4172 + 110] = mem[floor32(_6707) + _4173 + _4172 + -(_6707 % 32) + 142 len _6707 % 32]
                                revert with 0, 32, mem[_4173 + _4172 + 78 len floor32(_6707) + 64]
                            if not return_data.size:
                                _4751 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                mem[mem[64] + 42 len 0] = None
                                mem[mem[64] + 72 len 2] = uint16(stor4)
                                mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                                _6711 = mem[64]
                                mem[64] = mem[64] + 44
                                mem[_4751 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4751 + 48] = 32
                                mem[_4751 + 80] = mem[_6711]
                                _6714 = mem[_6711]
                                mem[_4751 + 112 len ceil32(mem[_6711])] = mem[_6711 + 32 len ceil32(mem[_6711])]
                                if not _6714 % 32:
                                    revert with 0, 32, mem[_4751 + 80 len _6714 + 32]
                                mem[floor32(_6714) + _4751 + 112] = mem[floor32(_6714) + _4751 + -(_6714 % 32) + 144 len _6714 % 32]
                                revert with 0, 32, mem[_4751 + 80 len floor32(_6714) + 64]
                            _4560 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4560] = return_data.size
                            mem[_4560 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _4753 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                            mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4560 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                            _6718 = mem[64]
                            mem[64] = return_data.size + mem[64] + 42
                            mem[return_data.size + _4753 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[return_data.size + _4753 + 46] = 32
                            mem[return_data.size + _4753 + 78] = mem[_6718]
                            _6721 = mem[_6718]
                            mem[return_data.size + _4753 + 110 len ceil32(mem[_6718])] = mem[_6718 + 32 len ceil32(mem[_6718])]
                            if not _6721 % 32:
                                revert with memory
                                  from mem[64]
                                   len _6721 + return_data.size + _4753 + -mem[64] + 110
                            mem[floor32(_6721) + return_data.size + _4753 + 110] = mem[floor32(_6721) + return_data.size + _4753 + -(_6721 % 32) + 142 len _6721 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_6721) + return_data.size + _4753 + -mem[64] + 142
                        require ext_code.size(address(sub_dbd33e45Address))
                        staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                                _4147 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                _4148 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                                mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                                mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                                _6613 = mem[64]
                                mem[64] = _4148 + _4147 + 42
                                mem[_4148 + _4147 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4148 + _4147 + 46] = 32
                                mem[_4148 + _4147 + 78] = mem[_6613]
                                _6616 = mem[_6613]
                                mem[_4148 + _4147 + 110 len ceil32(mem[_6613])] = mem[_6613 + 32 len ceil32(mem[_6613])]
                                if not _6616 % 32:
                                    revert with 0, 32, mem[_4148 + _4147 + 78 len _6616 + 32]
                                mem[floor32(_6616) + _4148 + _4147 + 110] = mem[floor32(_6616) + _4148 + _4147 + -(_6616 % 32) + 142 len _6616 % 32]
                                revert with 0, 32, mem[_4148 + _4147 + 78 len floor32(_6616) + 64]
                            if not return_data.size:
                                _4727 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                mem[mem[64] + 42 len 0] = None
                                mem[mem[64] + 72 len 2] = uint16(stor4)
                                mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                                _6620 = mem[64]
                                mem[64] = mem[64] + 44
                                mem[_4727 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4727 + 48] = 32
                                mem[_4727 + 80] = mem[_6620]
                                _6623 = mem[_6620]
                                mem[_4727 + 112 len ceil32(mem[_6620])] = mem[_6620 + 32 len ceil32(mem[_6620])]
                                if not _6623 % 32:
                                    revert with 0, 32, mem[_4727 + 80 len _6623 + 32]
                                mem[floor32(_6623) + _4727 + 112] = mem[floor32(_6623) + _4727 + -(_6623 % 32) + 144 len _6623 % 32]
                                revert with 0, 32, mem[_4727 + 80 len floor32(_6623) + 64]
                            _4534 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4534] = return_data.size
                            mem[_4534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _4729 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                            mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4534 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                            _6627 = mem[64]
                            mem[64] = return_data.size + mem[64] + 42
                            mem[return_data.size + _4729 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[return_data.size + _4729 + 46] = 32
                            mem[return_data.size + _4729 + 78] = mem[_6627]
                            _6630 = mem[_6627]
                            mem[return_data.size + _4729 + 110 len ceil32(mem[_6627])] = mem[_6627 + 32 len ceil32(mem[_6627])]
                            if not _6630 % 32:
                                revert with memory
                                  from mem[64]
                                   len _6630 + return_data.size + _4729 + -mem[64] + 110
                            mem[floor32(_6630) + return_data.size + _4729 + 110] = mem[floor32(_6630) + return_data.size + _4729 + -(_6630 % 32) + 142 len _6630 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_6630) + return_data.size + _4729 + -mem[64] + 142
                        require ext_code.size(address(sub_dbd33e45Address))
                        staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_33aa2191Address)
                            staticcall sub_33aa2191Address.0x70a08231 with:
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
                            staticcall sub_33aa2191Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                        emit 0x1aa29c48: ext_call.return_data[0], 0
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                            args 1, 0
                        if not ext_call.success:
                            revert with 0, 'tshare-wftm LP deposit failed'
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                staticcall address(sub_85b374c3Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7abd5a1cAddress)
                staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(sub_dbd33e45Address), 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_dbd33e45Address))
                staticcall address(sub_dbd33e45Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_ad70d6f6:
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(sub_85b374c3Address))
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_33aa2191Address)
                            staticcall sub_33aa2191Address.0x70a08231 with:
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
                            staticcall sub_33aa2191Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                        emit 0x1aa29c48: ext_call.return_data[0], 0
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                            args 1, 0
                        if not ext_call.success:
                            revert with 0, 'tshare-wftm LP deposit failed'
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                    staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                                _4222 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                _4223 = mem[0, ext_call.return_data[0 len 28] + 192]
                                mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                                mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                                _6886 = mem[64]
                                mem[64] = _4223 + mem[64] + 42
                                mem[_4223 + _4222 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4223 + _4222 + 46] = 32
                                mem[_4223 + _4222 + 78] = mem[_6886]
                                _6889 = mem[_6886]
                                mem[_4223 + _4222 + 110 len ceil32(mem[_6886])] = mem[_6886 + 32 len ceil32(mem[_6886])]
                                if not _6889 % 32:
                                    revert with 0, 32, mem[_4223 + _4222 + 78 len _6889 + 32]
                                mem[floor32(_6889) + _4223 + _4222 + 110] = mem[floor32(_6889) + _4223 + _4222 + -(_6889 % 32) + 142 len _6889 % 32]
                                revert with 0, 32, mem[_4223 + _4222 + 78 len floor32(_6889) + 64]
                            if not return_data.size:
                                _4799 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                mem[mem[64] + 42 len 0] = None
                                mem[mem[64] + 72 len 2] = uint16(stor4)
                                mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                                _6893 = mem[64]
                                mem[64] = mem[64] + 44
                                mem[_4799 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4799 + 48] = 32
                                mem[_4799 + 80] = mem[_6893]
                                _6896 = mem[_6893]
                                mem[_4799 + 112 len ceil32(mem[_6893])] = mem[_6893 + 32 len ceil32(mem[_6893])]
                                if not _6896 % 32:
                                    revert with 0, 32, mem[_4799 + 80 len _6896 + 32]
                                mem[floor32(_6896) + _4799 + 112] = mem[floor32(_6896) + _4799 + -(_6896 % 32) + 144 len _6896 % 32]
                                revert with 0, 32, mem[_4799 + 80 len floor32(_6896) + 64]
                            _4612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4612] = return_data.size
                            mem[_4612 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _4801 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                            mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4612 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                            _6900 = mem[64]
                            mem[64] = return_data.size + mem[64] + 42
                            mem[return_data.size + _4801 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[return_data.size + _4801 + 46] = 32
                            mem[return_data.size + _4801 + 78] = mem[_6900]
                            _6903 = mem[_6900]
                            mem[return_data.size + _4801 + 110 len ceil32(mem[_6900])] = mem[_6900 + 32 len ceil32(mem[_6900])]
                            if not _6903 % 32:
                                revert with 0, 32, mem[return_data.size + _4801 + 78 len _6903 + 32]
                            mem[floor32(_6903) + return_data.size + _4801 + 110] = mem[floor32(_6903) + return_data.size + _4801 + -(_6903 % 32) + 142 len _6903 % 32]
                            revert with 0, 32, mem[return_data.size + _4801 + 78 len floor32(_6903) + 64]
                        require ext_code.size(address(sub_dbd33e45Address))
                        staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                                _4197 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                _4198 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                                mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                                mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                                _6795 = mem[64]
                                mem[64] = _4198 + mem[64] + 42
                                mem[_4198 + _4197 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4198 + _4197 + 46] = 32
                                mem[_4198 + _4197 + 78] = mem[_6795]
                                _6798 = mem[_6795]
                                mem[_4198 + _4197 + 110 len ceil32(mem[_6795])] = mem[_6795 + 32 len ceil32(mem[_6795])]
                                if not _6798 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _6798 + _4198 + _4197 + -mem[64] + 110
                                mem[floor32(_6798) + _4198 + _4197 + 110] = mem[floor32(_6798) + _4198 + _4197 + -(_6798 % 32) + 142 len _6798 % 32]
                                revert with memory
                                  from mem[64]
                                   len floor32(_6798) + _4198 + _4197 + -mem[64] + 142
                            if not return_data.size:
                                _4775 = mem[64]
                                mem[mem[64] + 32] = 'swap tomb '
                                mem[mem[64] + 42 len 0] = None
                                mem[mem[64] + 72 len 2] = uint16(stor4)
                                mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                                _6802 = mem[64]
                                mem[64] = mem[64] + 44
                                mem[_4775 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_4775 + 48] = 32
                                mem[_4775 + 80] = mem[_6802]
                                _6805 = mem[_6802]
                                mem[_4775 + 112 len ceil32(mem[_6802])] = mem[_6802 + 32 len ceil32(mem[_6802])]
                                if not _6805 % 32:
                                    revert with 0, 32, mem[_4775 + 80 len _6805 + 32]
                                mem[floor32(_6805) + _4775 + 112] = mem[floor32(_6805) + _4775 + -(_6805 % 32) + 144 len _6805 % 32]
                                revert with 0, 32, mem[_4775 + 80 len floor32(_6805) + 64]
                            _4586 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4586] = return_data.size
                            mem[_4586 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _4777 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                            mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_4586 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                            _6809 = mem[64]
                            mem[64] = return_data.size + mem[64] + 42
                            mem[return_data.size + _4777 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[return_data.size + _4777 + 46] = 32
                            mem[return_data.size + _4777 + 78] = mem[_6809]
                            _6812 = mem[_6809]
                            mem[return_data.size + _4777 + 110 len ceil32(mem[_6809])] = mem[_6809 + 32 len ceil32(mem[_6809])]
                            if not _6812 % 32:
                                revert with memory
                                  from mem[64]
                                   len _6812 + return_data.size + _4777 + -mem[64] + 110
                            mem[floor32(_6812) + return_data.size + _4777 + 110] = mem[floor32(_6812) + return_data.size + _4777 + -(_6812 % 32) + 142 len _6812 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_6812) + return_data.size + _4777 + -mem[64] + 142
                        require ext_code.size(address(sub_dbd33e45Address))
                        staticcall address(sub_dbd33e45Address).0x70a08231 with:
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
                    staticcall address(sub_85b374c3Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_33aa2191Address)
                            staticcall sub_33aa2191Address.0x70a08231 with:
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
                            staticcall sub_33aa2191Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                        emit 0x1aa29c48: ext_call.return_data[0], 0
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
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
                            args 1, 0
                        if not ext_call.success:
                            revert with 0, 'tshare-wftm LP deposit failed'
                        require ext_code.size(address(sub_85b374c3Address))
                        staticcall address(sub_85b374c3Address).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit 0x8ced237d: 0
    require ext_code.size(address(sub_85b374c3Address))
    staticcall address(sub_85b374c3Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
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
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'masonry staking failed'
        emit 0xe4dba445: ext_call.return_data[0]
}



}
