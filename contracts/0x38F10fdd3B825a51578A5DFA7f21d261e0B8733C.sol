contract main {




// =====================  Runtime code  =====================


address owner;
address governanceTokenAddress;
address balanceKeeperAddress;
address voterAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address walletAddress;
mapping of uint256 lastLimitTimestamp;
mapping of struct limitMax;

function voter() payable {
    return voterAddress
}

function lastLimitTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastLimitTimestamp[arg1]
}

function wallet() payable {
    return walletAddress
}

function limitActivated() payable {
    return bool(uint8(stor4.field_168))
}

function owner() payable {
    return owner
}

function limitMax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return limitMax[arg1].field_0
}

function claimActivated() payable {
    return bool(uint8(stor4.field_160))
}

function governanceToken() payable {
    return governanceTokenAddress
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setClaimActivated(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function setLimitActivated(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
}

function setVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    voterAddress = arg1
    emit 0xbb6f01f9: voterAddress, arg1
}

function setWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    walletAddress = arg1
    emit SetWallet(walletAddress, arg1);
}

function claim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor4.field_160):
        revert with 0, 'can't claim'
    mem[280] = 20
    mem[312] = msg.sender, 0, 0
    mem[332] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3777d65a with:
            gas gas_remaining wei
           args 64, 128, 3, 'EVM', 20, Mask(160, 96, msg.sender, 0, 0) >> 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough money'
    if uint8(stor4.field_168):
        if block.timestamp < lastLimitTimestamp[address(msg.sender)]:
            revert with 'NH{q', 17
        if block.timestamp - lastLimitTimestamp[address(msg.sender)] > 24 * 3600:
            lastLimitTimestamp[address(msg.sender)] = block.timestamp
            limitMax[address(msg.sender)].field_0 = ext_call.return_data[0] / 2
            limitMax[address(msg.sender)].field_255 = 0
        if arg2 > limitMax[address(msg.sender)].field_0:
            revert with 0, 'exceeded daily limit'
        if limitMax[address(msg.sender)].field_0 < arg2:
            revert with 'NH{q', 17
        limitMax[address(msg.sender)].field_0 -= arg2
    require ext_code.size(balanceKeeperAddress)
    call balanceKeeperAddress.0x22bde2bb with:
         gas gas_remaining wei
        args 96, 160, arg2, 3, 'EVM', 20, Mask(160, 96, msg.sender, 0, 0) >> 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 256] = 64
    mem[ceil32(return_data.size) + 320] = 3
    mem[ceil32(return_data.size) + 352] = 'EVM'
    mem[ceil32(return_data.size) + 288] = 128
    mem[ceil32(return_data.size) + 384] = 20
    mem[ceil32(return_data.size) + 416] = msg.sender, 0, 0
    mem[ceil32(return_data.size) + 436] = 0
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.0x3ed084c4 with:
            gas gas_remaining wei
           args 64, 128, 3, 'EVM', 20, Mask(160, 96, msg.sender, 0, 0) >> 96, 0
    mem[ceil32(return_data.size) + 252] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    require ext_code.size(voterAddress)
    call voterAddress.0xebce8e5a with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 256] = walletAddress
    mem[(2 * ceil32(return_data.size)) + 288] = arg1
    mem[(2 * ceil32(return_data.size)) + 320] = arg2
    require ext_code.size(governanceTokenAddress)
    call governanceTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 96]
    mem[(2 * ceil32(return_data.size)) + 252] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 252] = arg2
    emit Claim(mem[(4 * ceil32(return_data.size)) + 252 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
}



}
