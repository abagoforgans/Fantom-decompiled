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

function sub_b4f12e52(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_1458100bAddress)
    call sub_1458100bAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    staticcall sub_1458100bAddress.0x70a08231 with:
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
    staticcall sub_63f96cf4Address.0x70a08231 with:
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
        call address(sub_85b374c3Address).transfer(address arg1, uint256 arg2) with:
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
        call address(sub_dbd33e45Address).transfer(address arg1, uint256 arg2) with:
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
        call sub_1458100bAddress.transfer(address arg1, uint256 arg2) with:
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
        call sub_1e9b8c59Address.transfer(address arg1, uint256 arg2) with:
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
    if not ext_call.return_data[0]:
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
        if not ext_call.return_data[0]:
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
                        _3060 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        _3061 = mem[0, ext_call.return_data[0 len 28] + 192]
                        mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                        mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                        _4778 = mem[64]
                        mem[64] = _3061 + mem[64] + 42
                        mem[_3061 + _3060 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3061 + _3060 + 46] = 32
                        mem[_3061 + _3060 + 78] = mem[_4778]
                        _4781 = mem[_4778]
                        mem[_3061 + _3060 + 110 len ceil32(mem[_4778])] = mem[_4778 + 32 len ceil32(mem[_4778])]
                        if not _4781 % 32:
                            revert with 0, 32, mem[_3061 + _3060 + 78 len _4781 + 32]
                        mem[floor32(_4781) + _3061 + _3060 + 110] = mem[floor32(_4781) + _3061 + _3060 + -(_4781 % 32) + 142 len _4781 % 32]
                        revert with 0, 32, mem[_3061 + _3060 + 78 len floor32(_4781) + 64]
                    if not return_data.size:
                        _3497 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len 0] = None
                        mem[mem[64] + 72 len 2] = uint16(stor4)
                        mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                        _4785 = mem[64]
                        mem[64] = mem[64] + 44
                        mem[_3497 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3497 + 48] = 32
                        mem[_3497 + 80] = mem[_4785]
                        _4788 = mem[_4785]
                        mem[_3497 + 112 len ceil32(mem[_4785])] = mem[_4785 + 32 len ceil32(mem[_4785])]
                        if not _4788 % 32:
                            revert with 0, 32, mem[_3497 + 80 len _4788 + 32]
                        mem[floor32(_4788) + _3497 + 112] = mem[floor32(_4788) + _3497 + -(_4788 % 32) + 144 len _4788 % 32]
                        revert with 0, 32, mem[_3497 + 80 len floor32(_4788) + 64]
                    _3350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3350] = return_data.size
                    mem[_3350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _3499 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                    mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_3350 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                    _4792 = mem[64]
                    mem[64] = return_data.size + mem[64] + 42
                    mem[return_data.size + _3499 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + _3499 + 46] = 32
                    mem[return_data.size + _3499 + 78] = mem[_4792]
                    _4795 = mem[_4792]
                    mem[return_data.size + _3499 + 110 len ceil32(mem[_4792])] = mem[_4792 + 32 len ceil32(mem[_4792])]
                    if not _4795 % 32:
                        revert with 0, 32, mem[return_data.size + _3499 + 78 len _4795 + 32]
                    mem[floor32(_4795) + return_data.size + _3499 + 110] = mem[floor32(_4795) + return_data.size + _3499 + -(_4795 % 32) + 142 len _4795 % 32]
                    revert with 0, 32, mem[return_data.size + _3499 + 78 len floor32(_4795) + 64]
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
                        _3035 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        _3036 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                        mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                        mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                        _4687 = mem[64]
                        mem[64] = _3036 + _3035 + 42
                        mem[_3036 + _3035 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3036 + _3035 + 46] = 32
                        mem[_3036 + _3035 + 78] = mem[_4687]
                        _4690 = mem[_4687]
                        mem[_3036 + _3035 + 110 len ceil32(mem[_4687])] = mem[_4687 + 32 len ceil32(mem[_4687])]
                        if not _4690 % 32:
                            revert with 0, 32, mem[_3036 + _3035 + 78 len _4690 + 32]
                        mem[floor32(_4690) + _3036 + _3035 + 110] = mem[floor32(_4690) + _3036 + _3035 + -(_4690 % 32) + 142 len _4690 % 32]
                        revert with 0, 32, mem[_3036 + _3035 + 78 len floor32(_4690) + 64]
                    if not return_data.size:
                        _3473 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len 0] = None
                        mem[mem[64] + 72 len 2] = uint16(stor4)
                        mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                        _4694 = mem[64]
                        mem[64] = mem[64] + 44
                        mem[_3473 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3473 + 48] = 32
                        mem[_3473 + 80] = mem[_4694]
                        _4697 = mem[_4694]
                        mem[_3473 + 112 len ceil32(mem[_4694])] = mem[_4694 + 32 len ceil32(mem[_4694])]
                        if not _4697 % 32:
                            revert with 0, 32, mem[_3473 + 80 len _4697 + 32]
                        mem[floor32(_4697) + _3473 + 112] = mem[floor32(_4697) + _3473 + -(_4697 % 32) + 144 len _4697 % 32]
                        revert with 0, 32, mem[_3473 + 80 len floor32(_4697) + 64]
                    _3324 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3324] = return_data.size
                    mem[_3324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _3475 = mem[64]
                    mem[mem[64] + 32] = 'swap tomb '
                    mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                    mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_3324 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                    _4701 = mem[64]
                    mem[64] = return_data.size + mem[64] + 42
                    mem[return_data.size + _3475 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[return_data.size + _3475 + 46] = 32
                    mem[return_data.size + _3475 + 78] = mem[_4701]
                    _4704 = mem[_4701]
                    mem[return_data.size + _3475 + 110 len ceil32(mem[_4701])] = mem[_4701 + 32 len ceil32(mem[_4701])]
                    if not _4704 % 32:
                        revert with memory
                          from mem[64]
                           len _4704 + return_data.size + _3475 + -mem[64] + 110
                    mem[floor32(_4704) + return_data.size + _3475 + 110] = mem[floor32(_4704) + return_data.size + _3475 + -(_4704 % 32) + 142 len _4704 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_4704) + return_data.size + _3475 + -mem[64] + 142
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
        require ext_code.size(sub_7abd5a1cAddress)
        staticcall sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(sub_dbd33e45Address), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[14 len 18] <= sub_ad70d6f6:
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
            if not ext_call.return_data[0]:
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
                            _3110 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            _3111 = mem[0, ext_call.return_data[0 len 28] + 192]
                            mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                            mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                            _4960 = mem[64]
                            mem[64] = _3111 + mem[64] + 42
                            mem[_3111 + _3110 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3111 + _3110 + 46] = 32
                            mem[_3111 + _3110 + 78] = mem[_4960]
                            _4963 = mem[_4960]
                            mem[_3111 + _3110 + 110 len ceil32(mem[_4960])] = mem[_4960 + 32 len ceil32(mem[_4960])]
                            if not _4963 % 32:
                                revert with memory
                                  from mem[64]
                                   len _4963 + _3111 + _3110 + -mem[64] + 110
                            mem[floor32(_4963) + _3111 + _3110 + 110] = mem[floor32(_4963) + _3111 + _3110 + -(_4963 % 32) + 142 len _4963 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_4963) + _3111 + _3110 + -mem[64] + 142
                        if not return_data.size:
                            _3545 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len 0] = None
                            mem[mem[64] + 72 len 2] = uint16(stor4)
                            mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                            _4967 = mem[64]
                            mem[64] = mem[64] + 44
                            mem[_3545 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3545 + 48] = 32
                            mem[_3545 + 80] = mem[_4967]
                            _4970 = mem[_4967]
                            mem[_3545 + 112 len ceil32(mem[_4967])] = mem[_4967 + 32 len ceil32(mem[_4967])]
                            if not _4970 % 32:
                                revert with 0, 32, mem[_3545 + 80 len _4970 + 32]
                            mem[floor32(_4970) + _3545 + 112] = mem[floor32(_4970) + _3545 + -(_4970 % 32) + 144 len _4970 % 32]
                            revert with 0, 32, mem[_3545 + 80 len floor32(_4970) + 64]
                        _3402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3402] = return_data.size
                        mem[_3402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _3547 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                        mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_3402 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                        _4974 = mem[64]
                        mem[64] = return_data.size + mem[64] + 42
                        mem[return_data.size + _3547 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[return_data.size + _3547 + 46] = 32
                        mem[return_data.size + _3547 + 78] = mem[_4974]
                        _4977 = mem[_4974]
                        mem[return_data.size + _3547 + 110 len ceil32(mem[_4974])] = mem[_4974 + 32 len ceil32(mem[_4974])]
                        if not _4977 % 32:
                            revert with 0, 32, mem[return_data.size + _3547 + 78 len _4977 + 32]
                        mem[floor32(_4977) + return_data.size + _3547 + 110] = mem[floor32(_4977) + return_data.size + _3547 + -(_4977 % 32) + 142 len _4977 % 32]
                        revert with 0, 32, mem[return_data.size + _3547 + 78 len floor32(_4977) + 64]
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
                            _3085 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            _3086 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                            mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                            mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                            _4869 = mem[64]
                            mem[64] = _3086 + _3085 + 42
                            mem[_3086 + _3085 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3086 + _3085 + 46] = 32
                            mem[_3086 + _3085 + 78] = mem[_4869]
                            _4872 = mem[_4869]
                            mem[_3086 + _3085 + 110 len ceil32(mem[_4869])] = mem[_4869 + 32 len ceil32(mem[_4869])]
                            if not _4872 % 32:
                                revert with 0, 32, mem[_3086 + _3085 + 78 len _4872 + 32]
                            mem[floor32(_4872) + _3086 + _3085 + 110] = mem[floor32(_4872) + _3086 + _3085 + -(_4872 % 32) + 142 len _4872 % 32]
                            revert with 0, 32, mem[_3086 + _3085 + 78 len floor32(_4872) + 64]
                        if not return_data.size:
                            _3521 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len 0] = None
                            mem[mem[64] + 72 len 2] = uint16(stor4)
                            mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                            _4876 = mem[64]
                            mem[64] = mem[64] + 44
                            mem[_3521 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3521 + 48] = 32
                            mem[_3521 + 80] = mem[_4876]
                            _4879 = mem[_4876]
                            mem[_3521 + 112 len ceil32(mem[_4876])] = mem[_4876 + 32 len ceil32(mem[_4876])]
                            if not _4879 % 32:
                                revert with 0, 32, mem[_3521 + 80 len _4879 + 32]
                            mem[floor32(_4879) + _3521 + 112] = mem[floor32(_4879) + _3521 + -(_4879 % 32) + 144 len _4879 % 32]
                            revert with 0, 32, mem[_3521 + 80 len floor32(_4879) + 64]
                        _3376 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3376] = return_data.size
                        mem[_3376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _3523 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                        mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_3376 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                        _4883 = mem[64]
                        mem[64] = return_data.size + mem[64] + 42
                        mem[return_data.size + _3523 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[return_data.size + _3523 + 46] = 32
                        mem[return_data.size + _3523 + 78] = mem[_4883]
                        _4886 = mem[_4883]
                        mem[return_data.size + _3523 + 110 len ceil32(mem[_4883])] = mem[_4883 + 32 len ceil32(mem[_4883])]
                        if not _4886 % 32:
                            revert with memory
                              from mem[64]
                               len _4886 + return_data.size + _3523 + -mem[64] + 110
                        mem[floor32(_4886) + return_data.size + _3523 + 110] = mem[floor32(_4886) + return_data.size + _3523 + -(_4886 % 32) + 142 len _4886 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_4886) + return_data.size + _3523 + -mem[64] + 142
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
            if not ext_call.return_data[0]:
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
                            _3160 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            _3161 = mem[0, ext_call.return_data[0 len 28] + 192]
                            mem[mem[64] + 42 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])] = mem[0, ext_call.return_data[0 len 28] + 224 len floor32(mem[0, ext_call.return_data[0 len 28] + 192])]
                            mem[mem[64] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 74 len mem[0, ext_call.return_data[0 len 28] + 192] % 32] = mem[0, ext_call.return_data[0 len 28] + floor32(mem[0, ext_call.return_data[0 len 28] + 192]) + -(mem[0, ext_call.return_data[0 len 28] + 192] % 32) + 256 len mem[0, ext_call.return_data[0 len 28] + 192] % 32]
                            _5142 = mem[64]
                            mem[64] = _3161 + mem[64] + 42
                            mem[_3161 + _3160 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3161 + _3160 + 46] = 32
                            mem[_3161 + _3160 + 78] = mem[_5142]
                            _5145 = mem[_5142]
                            mem[_3161 + _3160 + 110 len ceil32(mem[_5142])] = mem[_5142 + 32 len ceil32(mem[_5142])]
                            if not _5145 % 32:
                                revert with memory
                                  from mem[64]
                                   len _5145 + _3161 + _3160 + -mem[64] + 110
                            mem[floor32(_5145) + _3161 + _3160 + 110] = mem[floor32(_5145) + _3161 + _3160 + -(_5145 % 32) + 142 len _5145 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_5145) + _3161 + _3160 + -mem[64] + 142
                        if not return_data.size:
                            _3593 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len 0] = None
                            mem[mem[64] + 72 len 2] = uint16(stor4)
                            mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                            _5149 = mem[64]
                            mem[64] = mem[64] + 44
                            mem[_3593 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3593 + 48] = 32
                            mem[_3593 + 80] = mem[_5149]
                            _5152 = mem[_5149]
                            mem[_3593 + 112 len ceil32(mem[_5149])] = mem[_5149 + 32 len ceil32(mem[_5149])]
                            if not _5152 % 32:
                                revert with 0, 32, mem[_3593 + 80 len _5152 + 32]
                            mem[floor32(_5152) + _3593 + 112] = mem[floor32(_5152) + _3593 + -(_5152 % 32) + 144 len _5152 % 32]
                            revert with 0, 32, mem[_3593 + 80 len floor32(_5152) + 64]
                        _3454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3454] = return_data.size
                        mem[_3454 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _3595 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                        mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_3454 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                        _5156 = mem[64]
                        mem[64] = return_data.size + mem[64] + 42
                        mem[return_data.size + _3595 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[return_data.size + _3595 + 46] = 32
                        mem[return_data.size + _3595 + 78] = mem[_5156]
                        _5159 = mem[_5156]
                        mem[return_data.size + _3595 + 110 len ceil32(mem[_5156])] = mem[_5156 + 32 len ceil32(mem[_5156])]
                        if not _5159 % 32:
                            revert with memory
                              from mem[64]
                               len _5159 + return_data.size + _3595 + -mem[64] + 110
                        mem[floor32(_5159) + return_data.size + _3595 + 110] = mem[floor32(_5159) + return_data.size + _3595 + -(_5159 % 32) + 142 len _5159 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_5159) + return_data.size + _3595 + -mem[64] + 142
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
                            _3135 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            _3136 = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                            mem[mem[64] + 42 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 224 len floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])]
                            mem[mem[64] + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 74 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32] = mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + floor32(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + -(mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32) + 256 len mem[0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] % 32]
                            _5051 = mem[64]
                            mem[64] = _3136 + _3135 + 42
                            mem[_3136 + _3135 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3136 + _3135 + 46] = 32
                            mem[_3136 + _3135 + 78] = mem[_5051]
                            _5054 = mem[_5051]
                            mem[_3136 + _3135 + 110 len ceil32(mem[_5051])] = mem[_5051 + 32 len ceil32(mem[_5051])]
                            if not _5054 % 32:
                                revert with 0, 32, mem[_3136 + _3135 + 78 len _5054 + 32]
                            mem[floor32(_5054) + _3136 + _3135 + 110] = mem[floor32(_5054) + _3136 + _3135 + -(_5054 % 32) + 142 len _5054 % 32]
                            revert with 0, 32, mem[_3136 + _3135 + 78 len floor32(_5054) + 64]
                        if not return_data.size:
                            _3569 = mem[64]
                            mem[mem[64] + 32] = 'swap tomb '
                            mem[mem[64] + 42 len 0] = None
                            mem[mem[64] + 72 len 2] = uint16(stor4)
                            mem[mem[64] + 42 len 30] = Mask(176, 0, 'swap tomb '), mem[mem[64] + 64 len 8]
                            _5058 = mem[64]
                            mem[64] = mem[64] + 44
                            mem[_3569 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3569 + 48] = 32
                            mem[_3569 + 80] = mem[_5058]
                            _5061 = mem[_5058]
                            mem[_3569 + 112 len ceil32(mem[_5058])] = mem[_5058 + 32 len ceil32(mem[_5058])]
                            if not _5061 % 32:
                                revert with 0, 32, mem[_3569 + 80 len _5061 + 32]
                            mem[floor32(_5061) + _3569 + 112] = mem[floor32(_5061) + _3569 + -(_5061 % 32) + 144 len _5061 % 32]
                            revert with 0, 32, mem[_3569 + 80 len floor32(_5061) + 64]
                        _3428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3428] = return_data.size
                        mem[_3428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _3571 = mem[64]
                        mem[mem[64] + 32] = 'swap tomb '
                        mem[mem[64] + 42 len floor32(return_data.size)] = ext_call.return_data[0 len floor32(return_data.size)]
                        mem[mem[64] + floor32(return_data.size) + -(return_data.size % 32) + 74 len return_data.size % 32] = mem[_3428 + floor32(return_data.size) + -(return_data.size % 32) + 64 len return_data.size % 32]
                        _5065 = mem[64]
                        mem[64] = return_data.size + mem[64] + 42
                        mem[return_data.size + _3571 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[return_data.size + _3571 + 46] = 32
                        mem[return_data.size + _3571 + 78] = mem[_5065]
                        _5068 = mem[_5065]
                        mem[return_data.size + _3571 + 110 len ceil32(mem[_5065])] = mem[_5065 + 32 len ceil32(mem[_5065])]
                        if not _5068 % 32:
                            revert with memory
                              from mem[64]
                               len _5068 + return_data.size + _3571 + -mem[64] + 110
                        mem[floor32(_5068) + return_data.size + _3571 + 110] = mem[floor32(_5068) + return_data.size + _3571 + -(_5068 % 32) + 142 len _5068 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_5068) + return_data.size + _3571 + -mem[64] + 142
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
