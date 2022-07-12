contract main {




// =====================  Runtime code  =====================


address owner;
address sub_294235f5Address;
uint8 sub_53691e41; offset 160
uint8 sub_86edfbd8; offset 168
uint128 stor53; offset 168
uint128 stor53; offset 160
address sub_9296a2acAddress;
uint256 totalsupply;
mapping of uint256 sub_c0c199f2;
array of address investors;
mapping of uint8 stor57;
uint256 maxInvestment;
uint256 minimumInvest;
uint256 tokenPrice;
uint256 icoTarget;
uint256 sub_54e3d132;
uint8 sub_6295a6e1;

function maxInvestment() payable {
    return maxInvestment
}

function icoTarget() payable {
    return icoTarget
}

function sub_294235f5(?) payable {
    return sub_294235f5Address
}

function investors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < investors.length
    return address(investors[arg1])
}

function sub_53691e41(?) payable {
    return bool(sub_53691e41)
}

function sub_54e3d132(?) payable {
    return sub_54e3d132
}

function sub_57847c14(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor57[arg1])
}

function sub_6295a6e1(?) payable {
    return sub_6295a6e1
}

function totalsupply() payable {
    return totalsupply
}

function tokenPrice() payable {
    return tokenPrice
}

function sub_86edfbd8(?) payable {
    return bool(sub_86edfbd8)
}

function owner() payable {
    return owner
}

function sub_9296a2ac(?) payable {
    return sub_9296a2acAddress
}

function minimumInvest() payable {
    return minimumInvest
}

function sub_c0c199f2(?) payable {
    require calldata.size - 4 >= 32
    return sub_c0c199f2[arg1]
}

function _fallback() payable {
    revert
}

function sub_da8589a2(?) payable {
    require calldata.size - 4 >= 32
    return (maxInvestment - sub_c0c199f2[address(arg1)])
}

function stopIco() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6295a6e1 = 0
}

function stopClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor53.field_160) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function stopBuy() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor53.field_160) = 0
    Mask(88, 0, stor53.field_168) = 0
}

function startBuy() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor53.field_160) = 0
    Mask(88, 0, stor53.field_168) = 1
}

function startClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor53.field_160) = 1
    Mask(88, 0, stor53.field_168) = 0
}

function changeMaxinvestment(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxInvestment = arg1
}

function minimumBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    minimumInvest = arg1
}

function startIco() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_6295a6e1:
        revert with 0, 'Cannot restart ico'
    Mask(88, 0, stor53.field_168) = 1
    sub_6295a6e1 = uint8(sub_6295a6e1 + 1)
}

function recoverETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
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

function checkICObalance(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        require ext_code.size(sub_9296a2acAddress)
        staticcall sub_9296a2acAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    else:
        if arg1 != 2:
            return 0
        require ext_code.size(sub_294235f5Address)
        staticcall sub_294235f5Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdarwInputToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_294235f5Address)
    staticcall sub_294235f5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_294235f5Address)
    call sub_294235f5Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawOutputToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_9296a2acAddress)
    staticcall sub_9296a2acAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not enough token to withdraw'
    require ext_code.size(sub_9296a2acAddress)
    call sub_9296a2acAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_cc85e8ee(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73546f6b656e207072696365206d7573742062652067726561746572207468616e20,
                    mem[198 len 30]
    sub_294235f5Address = arg1
    sub_9296a2acAddress = arg2
    tokenPrice = arg3
    require ext_code.size(sub_9296a2acAddress)
    staticcall sub_9296a2acAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Please first give Tokens to ICO'
    require ext_code.size(sub_9296a2acAddress)
    staticcall sub_9296a2acAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalsupply = ext_call.return_data[0]
    require arg3
    icoTarget = totalsupply / arg3
}

function resetICO() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < investors.length:
        mem[0] = address(investors[idx])
        mem[32] = 57
        if bool(stor57[address(stor56[idx])]) == 1:
            require idx < investors.length
            stor57[address(stor56[idx])] = 0
            mem[0] = address(investors[idx])
            mem[32] = 55
            sub_c0c199f2[address(stor56[idx])] = 0
        idx = idx + 1
        continue 
    require ext_code.size(sub_9296a2acAddress)
    staticcall sub_9296a2acAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        revert with 0, 'Ico is not empty'
    require ext_code.size(sub_294235f5Address)
    staticcall sub_294235f5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        revert with 0, 'Ico is not empty'
    totalsupply = 0
    icoTarget = 0
    sub_54e3d132 = 0
    maxInvestment = 0
    sub_294235f5Address = 0
    sub_9296a2acAddress = 0
    tokenPrice = 0
    Mask(96, 0, stor53.field_160) = 0
    Mask(88, 0, stor53.field_168) = 0
    sub_6295a6e1 = 0
    minimumInvest = 0
    investors.length = 0
    idx = 0
    while investors.length > idx:
        uint256(investors[idx]) = 0
        idx = idx + 1
        continue 
}

function recoverERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_879a76f8(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), address(arg2) << 64:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}

function claimTokens() payable {
    if sub_86edfbd8:
        revert with 0, 'Ico active'
    if bool(sub_53691e41) != 1:
        revert with 0, 'Claim not start'
    if bool(stor57[address(msg.sender)]) != 1:
        revert with 0, 'Already claim'
    if sub_c0c199f2[address(msg.sender)] * tokenPrice <= 0:
        revert with 0, 'No tokens to redeem'
    if ext_code.size(sub_9296a2acAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_c0c199f2[address(msg.sender)] * tokenPrice) >> 32
    mem[324 len 0] = 0
    call sub_9296a2acAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, sub_c0c199f2[address(msg.sender)] * tokenPrice) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, sub_c0c199f2[address(msg.sender)] * tokenPrice
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0x8abdd537: (sub_c0c199f2[address(msg.sender)] * tokenPrice), msg.sender
    stor57[address(msg.sender)] = 0
    sub_c0c199f2[address(msg.sender)] = 0
}

function Buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_53691e41:
        revert with 0, 'Claim active'
    if bool(sub_86edfbd8) != 1:
        revert with 0, 'ICO in not active'
    if icoTarget < sub_54e3d132 + arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x305461726765742041636869657665642e20496e766573746d656e74206e6f742061636365707465,
                    mem[204 len 24]
    if arg1 <= 0:
        revert with 0, 'min Investment not zero'
    if not stor57[address(msg.sender)]:
        stor57[address(msg.sender)] = 1
        investors.length++
        address(investors[investors.length]) = msg.sender
    sub_c0c199f2[address(msg.sender)] += arg1
    if sub_54e3d132 + arg1 < sub_54e3d132:
        revert with 0, 'SafeMath: addition overflow'
    sub_54e3d132 += arg1
    if ext_code.size(sub_294235f5Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_294235f5Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit invested(arg1, msg.sender);
}



}
