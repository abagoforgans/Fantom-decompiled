contract main {




// =====================  Runtime code  =====================


#
#  - work(uint256 arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_abbec9ae(?) = 0x837503e8a8753ae17fb8c8151b8e6f586defcb57


address owner;
uint256 stor1;
address lpTokenAddress;
address operatorAddress;
address vaultAddress;
address sub_42294bfeAddress;
address fTokenAddress;
mapping of struct shares;
mapping of uint8 stor8;
address addStratAddress;
uint32 stor10;
address liqStratAddress;
uint256 stor10;

function sub_42294bfe(?) payable {
    return sub_42294bfeAddress
}

function vaultAddress() payable {
    return vaultAddress
}

function operator() payable {
    return operatorAddress
}

function addStrat() payable {
    return addStratAddress
}

function shares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return shares[arg1].field_0
}

function lpToken() payable {
    return lpTokenAddress
}

function liqStrat() payable {
    return address(liqStratAddress)
}

function owner() payable {
    return owner
}

function fToken() payable {
    return fTokenAddress
}

function okStrats(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_405baaed(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(liqStratAddress) = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setStrategyOk(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function recover(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor1++
    if vaultAddress == arg1:
        revert with 0, 'rugs not allowed'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function sub_19cf1a92(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (10^18 * arg1 / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_4943e336(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        return 0
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * arg1 / 10^18:
        return 0
    if 999 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0] * arg1 / 10^18 != 999:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (999 * ext_call.return_data[0] * arg1 / 10^18 / 1000)
}

function health(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not shares[arg1].field_0:
        require ext_code.size(0x837503e8a8753ae17fb8c8151b8e6f586defcb57)
        staticcall 0x837503e8a8753ae17fb8c8151b8e6f586defcb57.getTokenIndex(address arg1) with:
                gas gas_remaining wei
               args sub_42294bfeAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    if ext_call.return_data[0] * shares[arg1].field_0 / shares[arg1].field_0 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * shares[arg1].field_0 / 10^18:
        require ext_code.size(0x837503e8a8753ae17fb8c8151b8e6f586defcb57)
        staticcall 0x837503e8a8753ae17fb8c8151b8e6f586defcb57.getTokenIndex(address arg1) with:
                gas gas_remaining wei
               args sub_42294bfeAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    if 999 * ext_call.return_data[0] * shares[arg1].field_0 / 10^18 / ext_call.return_data[0] * shares[arg1].field_0 / 10^18 != 999:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(0x837503e8a8753ae17fb8c8151b8e6f586defcb57)
    staticcall 0x837503e8a8753ae17fb8c8151b8e6f586defcb57.getTokenIndex(address arg1) with:
            gas gas_remaining wei
           args sub_42294bfeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 999 * ext_call.return_data[0] * shares[arg1].field_0 / 10^18 / 1000:
        return 0
    require ext_code.size(0x837503e8a8753ae17fb8c8151b8e6f586defcb57)
    staticcall 0x837503e8a8753ae17fb8c8151b8e6f586defcb57.calculateRemoveLiquidityOneToken(address arg1, uint256 arg2, uint8 arg3) with:
            gas gas_remaining wei
           args address(liqStratAddress), 999 * ext_call.return_data[0] * shares[arg1].field_0 / 10^18 / 1000, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function liquidate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'not operator'
    stor1++
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), shares[arg1].field_32
    call vaultAddress with:
       funct uint32(stor10)
         gas gas_remaining wei
        args shares[arg1].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
            revert with 0, '!safeTransfer'
        require ext_code.size(address(liqStratAddress))
        call address(liqStratAddress).0xb61d27f6 with:
             gas gas_remaining wei
            args 0, 0, 96, 64, fTokenAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[392 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call sub_42294bfeAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, Mask(32, -32, fTokenAddress, 0) << 32
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
                revert with 0, '!safeTransfer'
        else:
            mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[424]:
                    revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
        require ext_code.size(address(liqStratAddress))
        call address(liqStratAddress).0xb61d27f6 with:
             gas gas_remaining wei
            args 0, 0, 96, 64, fTokenAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call sub_42294bfeAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, Mask(32, -32, fTokenAddress, 0) << 32
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
                revert with 0, '!safeTransfer'
        else:
            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 425]:
                    revert with 0, '!safeTransfer'
    shares[arg1].field_0 = 0
    emit 0xbd2aff74: 0, arg1
    emit Liquidate(ext_call.return_data[0], arg1);
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
