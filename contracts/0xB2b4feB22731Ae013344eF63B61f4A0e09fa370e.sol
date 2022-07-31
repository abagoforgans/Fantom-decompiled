contract main {




// =====================  Runtime code  =====================


#
#  - liquidatePartial(uint256 arg1, uint256 arg2)
#  - liquidate(uint256 arg1)
#  - depositAndBorrow(address arg1, uint256 arg2, uint256 arg3)
#  - depositByVaultId(uint256 arg1, uint256 arg2)
#
uint256 stor0;
address aAddress;
address WETHAddress;
address stateAddress;
address debtNotifierAddress;

function a() {
    return aAddress
}

function WETH() {
    return WETHAddress
}

function debtNotifier() {
    return debtNotifierAddress
}

function state() {
    return stateAddress
}

function _fallback() payable {
    revert
}

function cumulativeRates(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stateAddress)
    staticcall stateAddress.0x85d36cd7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setDebtNotifier(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require arg1
    debtNotifierAddress = arg1
}

function depositETHByVaultId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool((2 * ceil32(return_data.size)) + 416 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require WETHAddress == ext_call.return_data[12 len 20]
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool((6 * ceil32(return_data.size)) + 736 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.value + ext_call.return_data[64] < ext_call.return_data[64]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc7eb222b with:
         gas gas_remaining wei
        args arg1, msg.value + ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(msg.value, arg1, msg.sender);
}

function depositETH() payable {
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbd44815f with:
            gas gas_remaining wei
           args WETHAddress, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((6 * ceil32(return_data.size)) + 416 <= test266151307())
    else:
        call address(ext_call.return_data[0]).0xcc92d31c with:
             gas gas_remaining wei
            args WETHAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((8 * ceil32(return_data.size)) + 416 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.value + ext_call.return_data[64] < ext_call.return_data[64]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc7eb222b with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.value + ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(msg.value, ext_call.return_data[0], msg.sender);
}

function repay(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb508bc59 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stateAddress)
    call stateAddress.0xfe042ceb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb508bc59 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stateAddress)
        staticcall stateAddress.0x85d36cd7 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xef18fcb4 with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x16d8a5a9 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(debtNotifierAddress)
        call debtNotifierAddress.debtChanged(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Repaid(ext_call.return_data[0], arg1, msg.sender);
    else:
        if arg2 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stateAddress)
        staticcall stateAddress.0x85d36cd7 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        if not ext_call.return_data[0] - arg2:
            staticcall aAddress.0x65d55287 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xef18fcb4 with:
                 gas gas_remaining wei
                args arg1, 0
        else:
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - arg2, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(aAddress)
            staticcall aAddress.0x65d55287 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xef18fcb4 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x16d8a5a9 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(debtNotifierAddress)
        call debtNotifierAddress.debtChanged(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Repaid(arg2, arg1, msg.sender);
    stor0 = 1
}

function repayAll(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb508bc59 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stateAddress)
    call stateAddress.0xfe042ceb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb508bc59 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -1 >= ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stateAddress)
        staticcall stateAddress.0x85d36cd7 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xef18fcb4 with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x16d8a5a9 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(debtNotifierAddress)
        call debtNotifierAddress.debtChanged(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Repaid(ext_call.return_data[0], arg1, msg.sender);
    else:
        if -1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stateAddress)
        staticcall stateAddress.0x85d36cd7 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        if not ext_call.return_data[0] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            staticcall aAddress.0x65d55287 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xef18fcb4 with:
                 gas gas_remaining wei
                args arg1, 0
        else:
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(aAddress)
            staticcall aAddress.0x65d55287 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xef18fcb4 with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x16d8a5a9 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(debtNotifierAddress)
        call debtNotifierAddress.debtChanged(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Repaid(-1, arg1, msg.sender);
    stor0 = 1
}

function withdrawETH(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == msg.sender
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool((6 * ceil32(return_data.size)) + 416 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require arg2 <= ext_call.return_data[64]
    if arg2 > ext_call.return_data[64]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc7eb222b with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[64] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.return_data[96]:
        emit Withdrawn(arg2, arg1, msg.sender);
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((10 * ceil32(return_data.size)) + 736 <= test266151307())
    else:
        require ext_code.size(stateAddress)
        call stateAddress.0xfe042ceb with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x741bef1a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x724091e0 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20], ext_call.return_data[64] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x1ef3a04c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd310f49b with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb67c4d5 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4a6e0dd0 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        require bool((18 * ceil32(return_data.size)) + 672 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).isHealthy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        emit Withdrawn(arg2, arg1, msg.sender);
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((21 * ceil32(return_data.size)) + 992 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require WETHAddress == ext_call.return_data[12 len 20]
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    stor0 = 1
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdb67c4d5 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbd44815f with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[0]:
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].0x8c64ea4a with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require bool((8 * ceil32(return_data.size)) + 612 <= test266151307())
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xcc92d31c with:
                 gas gas_remaining wei
                args address(arg1), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(aAddress)
            staticcall aAddress.0x65d55287 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].0x8c64ea4a with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require bool((11 * ceil32(return_data.size)) + 612 <= test266151307())
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbd44815f with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[0]:
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].0x8c64ea4a with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require bool((8 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 <= test266151307())
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xcc92d31c with:
                 gas gas_remaining wei
                args address(arg1), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(aAddress)
            staticcall aAddress.0x65d55287 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].0x8c64ea4a with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require bool((11 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 + ext_call.return_data[64] < ext_call.return_data[64]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc7eb222b with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2 + ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(arg2, ext_call.return_data[0], msg.sender);
}

function borrow(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == msg.sender
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool((6 * ceil32(return_data.size)) + 416 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(stateAddress)
    call stateAddress.0xfe042ceb with:
         gas gas_remaining wei
        args ext_call.return_data[12 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5dd697dc with:
            gas gas_remaining wei
           args ext_call.return_data[12 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(aAddress)
        staticcall aAddress.0xb8091c5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stateAddress)
        staticcall stateAddress.0x85d36cd7 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                gas gas_remaining wei
               args arg2, ext_call.return_data[0]
    else:
        if not arg2:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(aAddress)
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stateAddress)
            staticcall stateAddress.0x85d36cd7 with:
                    gas gas_remaining wei
                   args ext_call.return_data[12 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                    gas gas_remaining wei
                   args arg2, ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (ext_call.return_data[0] * arg2) + 5 * 10^17 < 5 * 10^17:
                revert with 0, 'SafeMath: addition overflow'
            if ((ext_call.return_data[0] * arg2) + 5 * 10^17 / 10^18) + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(aAddress)
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stateAddress)
            staticcall stateAddress.0x85d36cd7 with:
                    gas gas_remaining wei
                   args ext_call.return_data[12 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                    gas gas_remaining wei
                   args ((ext_call.return_data[0] * arg2) + 5 * 10^17 / 10^18) + arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] + ext_call.return_data[96] < ext_call.return_data[96]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xef18fcb4 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0] + ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(aAddress)
    staticcall aAddress.0x741bef1a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x724091e0 with:
            gas gas_remaining wei
           args ext_call.return_data[12 len 20], ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8a98b12d with:
            gas gas_remaining wei
           args ext_call.return_data[12 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x12aa5dc6 with:
            gas gas_remaining wei
           args ext_call.return_data[12 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(aAddress)
    staticcall aAddress.0x1ef3a04c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdb67c4d5 with:
            gas gas_remaining wei
           args ext_call.return_data[12 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4a6e0dd0 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require bool((27 * ceil32(return_data.size)) + 672 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isHealthy(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(aAddress)
    staticcall aAddress.0x16d8a5a9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(debtNotifierAddress)
    call debtNotifierAddress.debtChanged(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Borrowed(arg2, arg1, msg.sender);
    stor0 = 1
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == msg.sender
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    mem[(2 * ceil32(return_data.size)) + 128] = 0
    mem[(2 * ceil32(return_data.size)) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + 192] = 0
    mem[(2 * ceil32(return_data.size)) + 224] = 0
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 256 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool((6 * ceil32(return_data.size)) + 416 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[32]
    mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[64]
    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[96]
    mem[(6 * ceil32(return_data.size)) + 384] = ext_call.return_data[128]
    require arg2 <= ext_call.return_data[64]
    if arg2 > ext_call.return_data[64]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 452] = ext_call.return_data[64] - arg2
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc7eb222b with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[64] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.return_data[96]:
        emit Withdrawn(arg2, arg1, msg.sender);
        mem[(7 * ceil32(return_data.size)) + 416] = 0
        mem[(7 * ceil32(return_data.size)) + 448] = 0
        mem[(7 * ceil32(return_data.size)) + 480] = 0
        mem[(7 * ceil32(return_data.size)) + 512] = 0
        mem[(7 * ceil32(return_data.size)) + 544] = 0
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args arg1
        mem[(8 * ceil32(return_data.size)) + 576 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((10 * ceil32(return_data.size)) + 736 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        mem[(10 * ceil32(return_data.size)) + 608] = ext_call.return_data[32]
        mem[(10 * ceil32(return_data.size)) + 640] = ext_call.return_data[64]
        mem[(10 * ceil32(return_data.size)) + 672] = ext_call.return_data[96]
        mem[(10 * ceil32(return_data.size)) + 704] = ext_call.return_data[128]
        mem[(10 * ceil32(return_data.size)) + 772] = msg.sender
        mem[(10 * ceil32(return_data.size)) + 804] = arg2
        mem[(10 * ceil32(return_data.size)) + 736] = 68
        mem[(10 * ceil32(return_data.size)) + 772 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(10 * ceil32(return_data.size)) + 768 len 4] = unknown_0xa9059cbb(?????)
        mem[(10 * ceil32(return_data.size)) + 836] = 32
        mem[(10 * ceil32(return_data.size)) + 868] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(10 * ceil32(return_data.size)) + 900 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(10 * ceil32(return_data.size)) + 968] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(10 * ceil32(return_data.size)) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + 932] == bool(mem[(10 * ceil32(return_data.size)) + 932])
                if not mem[(10 * ceil32(return_data.size)) + 932]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
        require ext_code.size(stateAddress)
        call stateAddress.0xfe042ceb with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x741bef1a with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 452] = ext_call.return_data[64] - arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x724091e0 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20], ext_call.return_data[64] - arg2
        mem[(8 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x1ef3a04c with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        mem[(11 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(12 * ceil32(return_data.size)) + 420] = arg1
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd310f49b with:
                gas gas_remaining wei
               args arg1
        mem[(12 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        mem[(13 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        mem[(14 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(15 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb67c4d5 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        mem[(15 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4a6e0dd0 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(16 * ceil32(return_data.size)) + 416 len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        require bool((18 * ceil32(return_data.size)) + 672 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(18 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        mem[(18 * ceil32(return_data.size)) + 448] = ext_call.return_data[32]
        mem[(18 * ceil32(return_data.size)) + 480] = ext_call.return_data[64]
        mem[(18 * ceil32(return_data.size)) + 512] = ext_call.return_data[96]
        mem[(18 * ceil32(return_data.size)) + 544] = ext_call.return_data[128]
        mem[(18 * ceil32(return_data.size)) + 576] = ext_call.return_data[160]
        mem[(18 * ceil32(return_data.size)) + 608] = ext_call.return_data[192]
        mem[(18 * ceil32(return_data.size)) + 640] = ext_call.return_data[224]
        mem[(18 * ceil32(return_data.size)) + 676] = ext_call.return_data[0]
        mem[(18 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
        mem[(18 * ceil32(return_data.size)) + 740] = ext_call.return_data[96]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).isHealthy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[96]
        mem[(18 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        emit Withdrawn(arg2, arg1, msg.sender);
        mem[(19 * ceil32(return_data.size)) + 672] = 0
        mem[(19 * ceil32(return_data.size)) + 704] = 0
        mem[(19 * ceil32(return_data.size)) + 736] = 0
        mem[(19 * ceil32(return_data.size)) + 768] = 0
        mem[(19 * ceil32(return_data.size)) + 800] = 0
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        mem[(19 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args arg1
        mem[(20 * ceil32(return_data.size)) + 832 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((21 * ceil32(return_data.size)) + 992 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(21 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        mem[(21 * ceil32(return_data.size)) + 864] = ext_call.return_data[32]
        mem[(21 * ceil32(return_data.size)) + 896] = ext_call.return_data[64]
        mem[(21 * ceil32(return_data.size)) + 928] = ext_call.return_data[96]
        mem[(21 * ceil32(return_data.size)) + 960] = ext_call.return_data[128]
        mem[(21 * ceil32(return_data.size)) + 1028] = msg.sender
        mem[(21 * ceil32(return_data.size)) + 1060] = arg2
        mem[(21 * ceil32(return_data.size)) + 992] = 68
        mem[(21 * ceil32(return_data.size)) + 1028 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(21 * ceil32(return_data.size)) + 1024 len 4] = unknown_0xa9059cbb(?????)
        mem[(21 * ceil32(return_data.size)) + 1092] = 32
        mem[(21 * ceil32(return_data.size)) + 1124] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(21 * ceil32(return_data.size)) + 1156 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(21 * ceil32(return_data.size)) + 1224] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(21 * ceil32(return_data.size)) + 1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(21 * ceil32(return_data.size)) + 1188] == bool(mem[(21 * ceil32(return_data.size)) + 1188])
                if not mem[(21 * ceil32(return_data.size)) + 1188]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor0 = 1
}

function upgrade(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0xf77c4791 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xec87621c with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x91d14854 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    require arg1
                    require ext_code.size(aAddress)
                    staticcall aAddress.0x16d8a5a9 with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + 100] = arg1
                        mem[(7 * ceil32(return_data.size)) + 132] = -1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), -1
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if ext_call.success:
                            mem[64] = (8 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 96] = 0x79502c5500000000000000000000000000000000000000000000000000000000
                            require ext_code.size(aAddress)
                            staticcall aAddress.mem[var137003 len 4] with:
                                    gas gas_remaining wei
                                   args mem[var137003 + 4 len var137004 - 4]
                            mem[var137005] = ext_call.return_data[0]
                            if ext_call.success:
                                mem[64] = (10 * ceil32(return_data.size)) + 96
                                require var141002 - var141001 >= 32
                                _558 = mem[var143002]
                                require mem[var143002] == mem[var143002 + 12 len 20]
                                require ext_code.size(mem[var143002 + 12 len 20])
                                staticcall mem[var143002 + 12 len 20].0xd47e470d with:
                                        gas gas_remaining wei
                                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                s = _558
                                t = _558
                                u = var143002
                                u = var143003
                                u = var143005
                                while ext_call.success:
                                    _681 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if u > mem[_681]:
                                    require ext_code.size(aAddress)
                                    staticcall aAddress.0x79502c55 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _685 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_685] == mem[_685 + 12 len 20]
                                    require ext_code.size(mem[_685 + 12 len 20])
                                    staticcall mem[_685 + 12 len 20].0x4a6e0dd0 with:
                                            gas gas_remaining wei
                                           args u
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _689 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    _690 = mem[64]
                                    require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
                                    mem[64] = mem[64] + 256
                                    require mem[_689] == mem[_689 + 12 len 20]
                                    mem[_690] = mem[_689]
                                    mem[_690 + 32] = mem[_689 + 32]
                                    mem[_690 + 64] = mem[_689 + 64]
                                    mem[_690 + 96] = mem[_689 + 96]
                                    mem[_690 + 128] = mem[_689 + 128]
                                    mem[_690 + 160] = mem[_689 + 160]
                                    mem[_690 + 192] = mem[_689 + 192]
                                    mem[_690 + 224] = mem[_689 + 224]
                                    _699 = mem[_690]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = arg1
                                    require ext_code.size(address(_699))
                                    staticcall address(_699).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _702 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_702]:
                                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                    _704 = mem[64]
                                    mem[mem[64] + 36] = arg1
                                    mem[mem[64] + 68] = -1
                                    _706 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_706 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_706 + 36 len 28]
                                    mem[64] = _704 + 164
                                    mem[_704 + 100] = 32
                                    mem[_704 + 132] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(address(_699)):
                                        revert with 0, 'Address: call to non-contract'
                                    _712 = mem[_706]
                                    idx = 0
                                    while idx < _712:
                                        mem[idx + _704 + 164] = mem[idx + _706 + 32]
                                        require s == address(s)
                                        mem[_704 + 164] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(t))
                                        staticcall address(t).0xd47e470d with:
                                                gas gas_remaining wei
                                               args mem[_704 + 168 len (10 * ceil32(return_data.size)) + -_704 - 68]
                                        mem[_704 + 164] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_712) > _712:
                                        mem[_712 + _704 + 164] = 0
                                    call address(_699).mem[_704 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_704 + 168 len _712 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_704 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_704 + 168] = 32
                                            mem[_704 + 200] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _704 + 232] = mem[idx + _704 + 132]
                                                require s == address(s)
                                                mem[mem[64]] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(t))
                                                staticcall address(t).0xd47e470d with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + -mem[64] + 96]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                idx = idx + 32
                                                continue 
                                            revert with memory
                                              from mem[64]
                                               len _704 + -mem[64] + 264
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        require ext_code.size(aAddress)
                                        staticcall aAddress.0x79502c55 with:
                                                gas gas_remaining wei
                                        mem[_704 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _704 + ceil32(return_data.size) + 164
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_704 + ceil32(return_data.size) + 164] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0xd47e470d with:
                                                gas gas_remaining wei
                                               args mem[_704 + ceil32(return_data.size) + 168 len (9 * ceil32(return_data.size)) + -_704 - 68]
                                        mem[_704 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        s = ext_call.return_data[0]
                                        t = ext_call.return_data[0]
                                        u = _704 + 164
                                        u = _704 + return_data.size + 164
                                        u = u + 1
                                        continue 
                                    mem[_704 + 164] = return_data.size
                                    mem[_704 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_704 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_704 + ceil32(return_data.size) + 169] = 32
                                        mem[_704 + ceil32(return_data.size) + 201] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _704 + ceil32(return_data.size) + 233] = mem[idx + _704 + 132]
                                            require s == address(s)
                                            mem[_704 + ceil32(return_data.size) + 165] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(t))
                                            staticcall address(t).0xd47e470d with:
                                                    gas gas_remaining wei
                                                   args mem[_704 + ceil32(return_data.size) + 169 len (10 * ceil32(return_data.size)) + -_704 + -ceil32(return_data.size) - 69]
                                            mem[_704 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            idx = idx + 32
                                            continue 
                                        revert with mem[_704 + ceil32(return_data.size) + 165 len 36], 32, mem[_704 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_704 + 196] == bool(mem[_704 + 196])
                                        if not mem[_704 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(aAddress)
                                    staticcall aAddress.0x79502c55 with:
                                            gas gas_remaining wei
                                    mem[_704 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _704 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_704 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0xd47e470d with:
                                            gas gas_remaining wei
                                           args mem[_704 + ceil32(return_data.size) + ceil32(return_data.size) + 169 len (9 * ceil32(return_data.size)) + -_704 + -ceil32(return_data.size) - 69]
                                    mem[_704 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                    s = ext_call.return_data[0]
                                    t = ext_call.return_data[0]
                                    u = _704 + ceil32(return_data.size) + 165
                                    u = _704 + ceil32(return_data.size) + return_data.size + 165
                                    u = u + 1
                                    continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function depositETHAndBorrow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbd44815f with:
            gas gas_remaining wei
           args WETHAddress, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((6 * ceil32(return_data.size)) + 416 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.value + ext_call.return_data[64] < ext_call.return_data[64]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc7eb222b with:
             gas gas_remaining wei
            args ext_call.return_data[0], msg.value + ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Deposited(msg.value, ext_call.return_data[0], msg.sender);
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbd44815f with:
                gas gas_remaining wei
               args WETHAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x3c2ecfe5 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((14 * ceil32(return_data.size)) + 736 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_code.size(stateAddress)
        call stateAddress.0xfe042ceb with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5dd697dc with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(aAddress)
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stateAddress)
            staticcall stateAddress.0x85d36cd7 with:
                    gas gas_remaining wei
                   args ext_call.return_data[12 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0]
        else:
            if not arg1:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(aAddress)
                staticcall aAddress.0xb8091c5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stateAddress)
                staticcall stateAddress.0x85d36cd7 with:
                        gas gas_remaining wei
                       args ext_call.return_data[12 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                        gas gas_remaining wei
                       args arg1, ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (ext_call.return_data[0] * arg1) + 5 * 10^17 < 5 * 10^17:
                    revert with 0, 'SafeMath: addition overflow'
                if ((ext_call.return_data[0] * arg1) + 5 * 10^17 / 10^18) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(aAddress)
                staticcall aAddress.0xb8091c5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stateAddress)
                staticcall stateAddress.0x85d36cd7 with:
                        gas gas_remaining wei
                       args ext_call.return_data[12 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                        gas gas_remaining wei
                       args ((ext_call.return_data[0] * arg1) + 5 * 10^17 / 10^18) + arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[0] + ext_call.return_data[96] < ext_call.return_data[96]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xef18fcb4 with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x741bef1a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x724091e0 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20], ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd310f49b with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8a98b12d with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x12aa5dc6 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(aAddress)
        staticcall aAddress.0x1ef3a04c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb67c4d5 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4a6e0dd0 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        require bool((35 * ceil32(return_data.size)) + 992 <= test266151307())
    else:
        call address(ext_call.return_data[0]).0xcc92d31c with:
             gas gas_remaining wei
            args WETHAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((8 * ceil32(return_data.size)) + 416 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.value + ext_call.return_data[64] < ext_call.return_data[64]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc7eb222b with:
             gas gas_remaining wei
            args ext_call.return_data[0], msg.value + ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Deposited(msg.value, ext_call.return_data[0], msg.sender);
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbd44815f with:
                gas gas_remaining wei
               args WETHAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x3c2ecfe5 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8c64ea4a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require bool((16 * ceil32(return_data.size)) + 736 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_code.size(stateAddress)
        call stateAddress.0xfe042ceb with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5dd697dc with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(aAddress)
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stateAddress)
            staticcall stateAddress.0x85d36cd7 with:
                    gas gas_remaining wei
                   args ext_call.return_data[12 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0]
        else:
            if not arg1:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(aAddress)
                staticcall aAddress.0xb8091c5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stateAddress)
                staticcall stateAddress.0x85d36cd7 with:
                        gas gas_remaining wei
                       args ext_call.return_data[12 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                        gas gas_remaining wei
                       args arg1, ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (ext_call.return_data[0] * arg1) + 5 * 10^17 < 5 * 10^17:
                    revert with 0, 'SafeMath: addition overflow'
                if ((ext_call.return_data[0] * arg1) + 5 * 10^17 / 10^18) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(aAddress)
                staticcall aAddress.0xb8091c5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stateAddress)
                staticcall stateAddress.0x85d36cd7 with:
                        gas gas_remaining wei
                       args ext_call.return_data[12 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3a282c0a with:
                        gas gas_remaining wei
                       args ((ext_call.return_data[0] * arg1) + 5 * 10^17 / 10^18) + arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[0] + ext_call.return_data[96] < ext_call.return_data[96]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xef18fcb4 with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(aAddress)
        staticcall aAddress.0x741bef1a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x724091e0 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20], ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd310f49b with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8a98b12d with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(aAddress)
        staticcall aAddress.0x65d55287 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x12aa5dc6 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(aAddress)
        staticcall aAddress.0x1ef3a04c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0x79502c55 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdb67c4d5 with:
                gas gas_remaining wei
               args ext_call.return_data[12 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4a6e0dd0 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        require bool((37 * ceil32(return_data.size)) + 992 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isHealthy(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(aAddress)
    staticcall aAddress.0x16d8a5a9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(debtNotifierAddress)
    call debtNotifierAddress.debtChanged(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Borrowed(arg1, ext_call.return_data[0], msg.sender);
    stor0 = 1
}

function acceptUpgrade(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0xf77c4791 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xec87621c with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x91d14854 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    require ext_code.size(aAddress)
                    staticcall aAddress.0x16d8a5a9 with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + 100] = arg1
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 132] = arg1
                            mem[(8 * ceil32(return_data.size)) + 164] = this.address
                            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 96] = 100
                            mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                            mem[64] = (8 * ceil32(return_data.size)) + 292
                            mem[(8 * ceil32(return_data.size)) + 228] = 32
                            mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), ext_call.return_data[0], 0
                            mem[(8 * ceil32(return_data.size)) + 392] = 0
                            call address(ext_call.return_data[0]) with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), ext_call.return_data[0], 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 292] = 0x79502c5500000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(aAddress)
                                    staticcall aAddress.mem[var158003 len 4] with:
                                            gas gas_remaining wei
                                           args mem[var158003 + 4 len var158004 - 4]
                                    mem[var158005] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = (10 * ceil32(return_data.size)) + 292
                                        require var162002 - var162001 >= 32
                                        _5059 = mem[var164002]
                                        require mem[var164002] == mem[var164002 + 12 len 20]
                                        require ext_code.size(mem[var164002 + 12 len 20])
                                        staticcall mem[var164002 + 12 len 20].0xd47e470d with:
                                                gas gas_remaining wei
                                        mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                        s = _5059
                                        t = _5059
                                        u = var164002
                                        u = var164003
                                        u = var164005
                                        while ext_call.success:
                                            _6027 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if u > mem[_6027]:
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6059 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6059] == mem[_6059 + 12 len 20]
                                            require ext_code.size(mem[_6059 + 12 len 20])
                                            staticcall mem[_6059 + 12 len 20].0x4a6e0dd0 with:
                                                    gas gas_remaining wei
                                                   args u
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6091 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            _6099 = mem[64]
                                            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
                                            mem[64] = mem[64] + 256
                                            require mem[_6091] == mem[_6091 + 12 len 20]
                                            mem[_6099] = mem[_6091]
                                            mem[_6099 + 32] = mem[_6091 + 32]
                                            mem[_6099 + 64] = mem[_6091 + 64]
                                            mem[_6099 + 96] = mem[_6091 + 96]
                                            mem[_6099 + 128] = mem[_6091 + 128]
                                            mem[_6099 + 160] = mem[_6091 + 160]
                                            mem[_6099 + 192] = mem[_6091 + 192]
                                            mem[_6099 + 224] = mem[_6091 + 224]
                                            _6175 = mem[_6099]
                                            mem[mem[64] + 4] = arg1
                                            require ext_code.size(address(_6175))
                                            staticcall address(_6175).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6195 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6203 = mem[_6195]
                                            _6211 = mem[64]
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = _6203
                                            _6223 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6223 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6223 + 36 len 28]
                                            mem[64] = _6211 + 196
                                            mem[_6211 + 132] = 32
                                            mem[_6211 + 164] = 'SafeERC20: low-level call failed'
                                            if not ext_code.size(address(_6175)):
                                                revert with 0, 'Address: call to non-contract'
                                            _6259 = mem[_6223]
                                            idx = 0
                                            while idx < _6259:
                                                mem[idx + _6211 + 196] = mem[idx + _6223 + 32]
                                                require s == address(s)
                                                require ext_code.size(address(t))
                                                staticcall address(t).0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6211 + 196] = ext_call.return_data[0]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_6259) > _6259:
                                                mem[_6259 + _6211 + 196] = 0
                                            call address(_6175).mem[_6211 + 196 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6211 + 200 len _6259 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_6211 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_6211 + 200] = 32
                                                    mem[_6211 + 232] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _6211 + 264] = mem[idx + _6211 + 164]
                                                        require s == address(s)
                                                        require ext_code.size(address(t))
                                                        staticcall address(t).0xd47e470d with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with memory
                                                      from mem[64]
                                                       len _6211 + -mem[64] + 296
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                require ext_code.size(aAddress)
                                                staticcall aAddress.0x79502c55 with:
                                                        gas gas_remaining wei
                                                mem[_6211 + 196] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _6211 + ceil32(return_data.size) + 196
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                require ext_code.size(ext_call.return_data[12 len 20])
                                                staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6211 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                                s = ext_call.return_data[0]
                                                t = ext_call.return_data[0]
                                                u = _6211 + 196
                                                u = _6211 + return_data.size + 196
                                                u = u + 1
                                                continue 
                                            mem[_6211 + 196] = return_data.size
                                            mem[_6211 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_6211 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_6211 + ceil32(return_data.size) + 201] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _6211 + ceil32(return_data.size) + 265] = mem[idx + _6211 + 164]
                                                    require s == address(s)
                                                    require ext_code.size(address(t))
                                                    staticcall address(t).0xd47e470d with:
                                                            gas gas_remaining wei
                                                    mem[_6211 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                                    idx = idx + 32
                                                    continue 
                                                revert with mem[_6211 + ceil32(return_data.size) + 197 len 36], 32, mem[_6211 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_6211 + 228] == bool(mem[_6211 + 228])
                                                if not mem[_6211 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[_6211 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _6211 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(ext_call.return_data[12 len 20])
                                            staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                    gas gas_remaining wei
                                            mem[_6211 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            s = ext_call.return_data[0]
                                            t = ext_call.return_data[0]
                                            u = _6211 + ceil32(return_data.size) + 197
                                            u = _6211 + ceil32(return_data.size) + return_data.size + 197
                                            u = u + 1
                                            continue 
                                else:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[(8 * ceil32(return_data.size)) + 292] = 0x79502c5500000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(aAddress)
                                    staticcall aAddress.mem[var163003 len 4] with:
                                            gas gas_remaining wei
                                           args mem[var163003 + 4 len var163004 - 4]
                                    mem[var163005] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = (10 * ceil32(return_data.size)) + 292
                                        require var167002 - var167001 >= 32
                                        _5060 = mem[var169002]
                                        require mem[var169002] == mem[var169002 + 12 len 20]
                                        require ext_code.size(mem[var169002 + 12 len 20])
                                        staticcall mem[var169002 + 12 len 20].0xd47e470d with:
                                                gas gas_remaining wei
                                        mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                        s = _5060
                                        t = _5060
                                        u = var169002
                                        u = var169003
                                        u = var169005
                                        while ext_call.success:
                                            _6028 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if u > mem[_6028]:
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6060 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6060] == mem[_6060 + 12 len 20]
                                            require ext_code.size(mem[_6060 + 12 len 20])
                                            staticcall mem[_6060 + 12 len 20].0x4a6e0dd0 with:
                                                    gas gas_remaining wei
                                                   args u
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6092 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            _6100 = mem[64]
                                            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
                                            mem[64] = mem[64] + 256
                                            require mem[_6092] == mem[_6092 + 12 len 20]
                                            mem[_6100] = mem[_6092]
                                            mem[_6100 + 32] = mem[_6092 + 32]
                                            mem[_6100 + 64] = mem[_6092 + 64]
                                            mem[_6100 + 96] = mem[_6092 + 96]
                                            mem[_6100 + 128] = mem[_6092 + 128]
                                            mem[_6100 + 160] = mem[_6092 + 160]
                                            mem[_6100 + 192] = mem[_6092 + 192]
                                            mem[_6100 + 224] = mem[_6092 + 224]
                                            _6177 = mem[_6100]
                                            mem[mem[64] + 4] = arg1
                                            require ext_code.size(address(_6177))
                                            staticcall address(_6177).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6196 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6204 = mem[_6196]
                                            _6212 = mem[64]
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = _6204
                                            _6225 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6225 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6225 + 36 len 28]
                                            mem[64] = _6212 + 196
                                            mem[_6212 + 132] = 32
                                            mem[_6212 + 164] = 'SafeERC20: low-level call failed'
                                            if not ext_code.size(address(_6177)):
                                                revert with 0, 'Address: call to non-contract'
                                            _6260 = mem[_6225]
                                            idx = 0
                                            while idx < _6260:
                                                mem[idx + _6212 + 196] = mem[idx + _6225 + 32]
                                                require s == address(s)
                                                require ext_code.size(address(t))
                                                staticcall address(t).0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6212 + 196] = ext_call.return_data[0]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_6260) > _6260:
                                                mem[_6260 + _6212 + 196] = 0
                                            call address(_6177).mem[_6212 + 196 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6212 + 200 len _6260 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_6212 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_6212 + 200] = 32
                                                    mem[_6212 + 232] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _6212 + 264] = mem[idx + _6212 + 164]
                                                        require s == address(s)
                                                        require ext_code.size(address(t))
                                                        staticcall address(t).0xd47e470d with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with memory
                                                      from mem[64]
                                                       len _6212 + -mem[64] + 296
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                require ext_code.size(aAddress)
                                                staticcall aAddress.0x79502c55 with:
                                                        gas gas_remaining wei
                                                mem[_6212 + 196] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _6212 + ceil32(return_data.size) + 196
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                require ext_code.size(ext_call.return_data[12 len 20])
                                                staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6212 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                                s = ext_call.return_data[0]
                                                t = ext_call.return_data[0]
                                                u = _6212 + 196
                                                u = _6212 + return_data.size + 196
                                                u = u + 1
                                                continue 
                                            mem[_6212 + 196] = return_data.size
                                            mem[_6212 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_6212 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_6212 + ceil32(return_data.size) + 201] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _6212 + ceil32(return_data.size) + 265] = mem[idx + _6212 + 164]
                                                    require s == address(s)
                                                    require ext_code.size(address(t))
                                                    staticcall address(t).0xd47e470d with:
                                                            gas gas_remaining wei
                                                    mem[_6212 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                                    idx = idx + 32
                                                    continue 
                                                revert with mem[_6212 + ceil32(return_data.size) + 197 len 36], 32, mem[_6212 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_6212 + 228] == bool(mem[_6212 + 228])
                                                if not mem[_6212 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[_6212 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _6212 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(ext_call.return_data[12 len 20])
                                            staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                    gas gas_remaining wei
                                            mem[_6212 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            s = ext_call.return_data[0]
                                            t = ext_call.return_data[0]
                                            u = _6212 + ceil32(return_data.size) + 197
                                            u = _6212 + ceil32(return_data.size) + return_data.size + 197
                                            u = u + 1
                                            continue 
                            else:
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                mem[(8 * ceil32(return_data.size)) + 292] = return_data.size
                                mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x79502c5500000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(aAddress)
                                    staticcall aAddress.mem[var158003 len 4] with:
                                            gas gas_remaining wei
                                           args mem[var158003 + 4 len var158004 - 4]
                                    mem[var158005] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require var162002 - var162001 >= 32
                                        _5061 = mem[var164002]
                                        require mem[var164002] == mem[var164002 + 12 len 20]
                                        require ext_code.size(mem[var164002 + 12 len 20])
                                        staticcall mem[var164002 + 12 len 20].0xd47e470d with:
                                                gas gas_remaining wei
                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                        s = _5061
                                        t = _5061
                                        u = var164002
                                        u = var164003
                                        u = var164005
                                        while ext_call.success:
                                            _6029 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if u > mem[_6029]:
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6061 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6061] == mem[_6061 + 12 len 20]
                                            require ext_code.size(mem[_6061 + 12 len 20])
                                            staticcall mem[_6061 + 12 len 20].0x4a6e0dd0 with:
                                                    gas gas_remaining wei
                                                   args u
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6093 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            _6101 = mem[64]
                                            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
                                            mem[64] = mem[64] + 256
                                            require mem[_6093] == mem[_6093 + 12 len 20]
                                            mem[_6101] = mem[_6093]
                                            mem[_6101 + 32] = mem[_6093 + 32]
                                            mem[_6101 + 64] = mem[_6093 + 64]
                                            mem[_6101 + 96] = mem[_6093 + 96]
                                            mem[_6101 + 128] = mem[_6093 + 128]
                                            mem[_6101 + 160] = mem[_6093 + 160]
                                            mem[_6101 + 192] = mem[_6093 + 192]
                                            mem[_6101 + 224] = mem[_6093 + 224]
                                            _6179 = mem[_6101]
                                            mem[mem[64] + 4] = arg1
                                            require ext_code.size(address(_6179))
                                            staticcall address(_6179).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6197 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6205 = mem[_6197]
                                            _6213 = mem[64]
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = _6205
                                            _6227 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6227 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6227 + 36 len 28]
                                            mem[64] = _6213 + 196
                                            mem[_6213 + 132] = 32
                                            mem[_6213 + 164] = 'SafeERC20: low-level call failed'
                                            if not ext_code.size(address(_6179)):
                                                revert with 0, 'Address: call to non-contract'
                                            _6261 = mem[_6227]
                                            idx = 0
                                            while idx < _6261:
                                                mem[idx + _6213 + 196] = mem[idx + _6227 + 32]
                                                require s == address(s)
                                                require ext_code.size(address(t))
                                                staticcall address(t).0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6213 + 196] = ext_call.return_data[0]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_6261) > _6261:
                                                mem[_6261 + _6213 + 196] = 0
                                            call address(_6179).mem[_6213 + 196 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6213 + 200 len _6261 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_6213 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_6213 + 200] = 32
                                                    mem[_6213 + 232] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _6213 + 264] = mem[idx + _6213 + 164]
                                                        require s == address(s)
                                                        require ext_code.size(address(t))
                                                        staticcall address(t).0xd47e470d with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with memory
                                                      from mem[64]
                                                       len _6213 + -mem[64] + 296
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                require ext_code.size(aAddress)
                                                staticcall aAddress.0x79502c55 with:
                                                        gas gas_remaining wei
                                                mem[_6213 + 196] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _6213 + ceil32(return_data.size) + 196
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                require ext_code.size(ext_call.return_data[12 len 20])
                                                staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6213 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                                s = ext_call.return_data[0]
                                                t = ext_call.return_data[0]
                                                u = _6213 + 196
                                                u = _6213 + return_data.size + 196
                                                u = u + 1
                                                continue 
                                            mem[_6213 + 196] = return_data.size
                                            mem[_6213 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_6213 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_6213 + ceil32(return_data.size) + 201] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _6213 + ceil32(return_data.size) + 265] = mem[idx + _6213 + 164]
                                                    require s == address(s)
                                                    require ext_code.size(address(t))
                                                    staticcall address(t).0xd47e470d with:
                                                            gas gas_remaining wei
                                                    mem[_6213 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                                    idx = idx + 32
                                                    continue 
                                                revert with mem[_6213 + ceil32(return_data.size) + 197 len 36], 32, mem[_6213 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_6213 + 228] == bool(mem[_6213 + 228])
                                                if not mem[_6213 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[_6213 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _6213 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(ext_call.return_data[12 len 20])
                                            staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                    gas gas_remaining wei
                                            mem[_6213 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            s = ext_call.return_data[0]
                                            t = ext_call.return_data[0]
                                            u = _6213 + ceil32(return_data.size) + 197
                                            u = _6213 + ceil32(return_data.size) + return_data.size + 197
                                            u = u + 1
                                            continue 
                                else:
                                    require return_data.size >= 32
                                    require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                    if not mem[(8 * ceil32(return_data.size)) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x79502c5500000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(aAddress)
                                    staticcall aAddress.mem[var163003 len 4] with:
                                            gas gas_remaining wei
                                           args mem[var163003 + 4 len var163004 - 4]
                                    mem[var163005] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require var167002 - var167001 >= 32
                                        _5062 = mem[var169002]
                                        require mem[var169002] == mem[var169002 + 12 len 20]
                                        require ext_code.size(mem[var169002 + 12 len 20])
                                        staticcall mem[var169002 + 12 len 20].0xd47e470d with:
                                                gas gas_remaining wei
                                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                        s = _5062
                                        t = _5062
                                        u = var169002
                                        u = var169003
                                        u = var169005
                                        while ext_call.success:
                                            _6030 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if u > mem[_6030]:
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6062 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6062] == mem[_6062 + 12 len 20]
                                            require ext_code.size(mem[_6062 + 12 len 20])
                                            staticcall mem[_6062 + 12 len 20].0x4a6e0dd0 with:
                                                    gas gas_remaining wei
                                                   args u
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6094 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            _6102 = mem[64]
                                            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
                                            mem[64] = mem[64] + 256
                                            require mem[_6094] == mem[_6094 + 12 len 20]
                                            mem[_6102] = mem[_6094]
                                            mem[_6102 + 32] = mem[_6094 + 32]
                                            mem[_6102 + 64] = mem[_6094 + 64]
                                            mem[_6102 + 96] = mem[_6094 + 96]
                                            mem[_6102 + 128] = mem[_6094 + 128]
                                            mem[_6102 + 160] = mem[_6094 + 160]
                                            mem[_6102 + 192] = mem[_6094 + 192]
                                            mem[_6102 + 224] = mem[_6094 + 224]
                                            _6181 = mem[_6102]
                                            mem[mem[64] + 4] = arg1
                                            require ext_code.size(address(_6181))
                                            staticcall address(_6181).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6198 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6206 = mem[_6198]
                                            _6214 = mem[64]
                                            mem[mem[64] + 36] = arg1
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = _6206
                                            _6229 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6229 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6229 + 36 len 28]
                                            mem[64] = _6214 + 196
                                            mem[_6214 + 132] = 32
                                            mem[_6214 + 164] = 'SafeERC20: low-level call failed'
                                            if not ext_code.size(address(_6181)):
                                                revert with 0, 'Address: call to non-contract'
                                            _6262 = mem[_6229]
                                            idx = 0
                                            while idx < _6262:
                                                mem[idx + _6214 + 196] = mem[idx + _6229 + 32]
                                                require s == address(s)
                                                require ext_code.size(address(t))
                                                staticcall address(t).0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6214 + 196] = ext_call.return_data[0]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_6262) > _6262:
                                                mem[_6262 + _6214 + 196] = 0
                                            call address(_6181).mem[_6214 + 196 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6214 + 200 len _6262 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_6214 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_6214 + 200] = 32
                                                    mem[_6214 + 232] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _6214 + 264] = mem[idx + _6214 + 164]
                                                        require s == address(s)
                                                        require ext_code.size(address(t))
                                                        staticcall address(t).0xd47e470d with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with memory
                                                      from mem[64]
                                                       len _6214 + -mem[64] + 296
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                require ext_code.size(aAddress)
                                                staticcall aAddress.0x79502c55 with:
                                                        gas gas_remaining wei
                                                mem[_6214 + 196] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _6214 + ceil32(return_data.size) + 196
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                require ext_code.size(ext_call.return_data[12 len 20])
                                                staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                        gas gas_remaining wei
                                                mem[_6214 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                                s = ext_call.return_data[0]
                                                t = ext_call.return_data[0]
                                                u = _6214 + 196
                                                u = _6214 + return_data.size + 196
                                                u = u + 1
                                                continue 
                                            mem[_6214 + 196] = return_data.size
                                            mem[_6214 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_6214 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_6214 + ceil32(return_data.size) + 201] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _6214 + ceil32(return_data.size) + 265] = mem[idx + _6214 + 164]
                                                    require s == address(s)
                                                    require ext_code.size(address(t))
                                                    staticcall address(t).0xd47e470d with:
                                                            gas gas_remaining wei
                                                    mem[_6214 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                                    idx = idx + 32
                                                    continue 
                                                revert with mem[_6214 + ceil32(return_data.size) + 197 len 36], 32, mem[_6214 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_6214 + 228] == bool(mem[_6214 + 228])
                                                if not mem[_6214 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(aAddress)
                                            staticcall aAddress.0x79502c55 with:
                                                    gas gas_remaining wei
                                            mem[_6214 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _6214 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(ext_call.return_data[12 len 20])
                                            staticcall ext_call.return_data[12 len 20].0xd47e470d with:
                                                    gas gas_remaining wei
                                            mem[_6214 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                            s = ext_call.return_data[0]
                                            t = ext_call.return_data[0]
                                            u = _6214 + ceil32(return_data.size) + 197
                                            u = _6214 + ceil32(return_data.size) + return_data.size + 197
                                            u = u + 1
                                            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
