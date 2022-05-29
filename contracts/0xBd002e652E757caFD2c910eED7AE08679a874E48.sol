contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#  - pause()
#
const MAX_CALL_FEE = 0

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 0

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 0


uint8 paused; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address wantAddress;
address crvAddress;
address nativeAddress;
address depositTokenAddress;
address sub_3930d6b6Address;
address poolAddress;
uint256 poolSize;
uint256 depositIndex;
array of struct sub_71b359e1;
array of struct sub_fc167fc6;
uint8 harvestOnDeposit;

function native() payable {
    return nativeAddress
}

function pool() payable {
    return poolAddress
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function sub_3930d6b6(?) payable {
    return sub_3930d6b6Address
}

function poolSize() payable {
    return poolSize
}

function paused() payable {
    return bool(paused)
}

function crv() payable {
    return crvAddress
}

function sub_71b359e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_71b359e1.length
    return sub_71b359e1[arg1].field_0
}

function depositIndex() payable {
    return depositIndex
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function keeper() payable {
    return keeperAddress
}

function depositToken() payable {
    return depositTokenAddress
}

function beefyFee() payable {
    return beefyFee
}

function vault() payable {
    return address(vaultAddress)
}

function sub_fc167fc6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fc167fc6.length
    return sub_fc167fc6[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    beefyFeeRecipientAddress = arg1
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 1000
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(sub_3930d6b6Address)
    staticcall sub_3930d6b6Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_3930d6b6Address)
        call sub_3930d6b6Address.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(sub_3930d6b6Address)
    staticcall sub_3930d6b6Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function crvToNative() payable {
    if sub_71b359e1.length:
        mem[128] = address(sub_71b359e1.field_0)
        if (32 * sub_71b359e1.length) + 32 > 64:
            mem[160] = address(sub_71b359e1.field_256)
            idx = 160
            s = 1
            while (32 * sub_71b359e1.length) + 96 > idx:
                mem[idx + 32] = sub_71b359e1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_71b359e1.length) + 128] = 32
    mem[(32 * sub_71b359e1.length) + 160] = sub_71b359e1.length
    mem[(32 * sub_71b359e1.length) + 192 len floor32(sub_71b359e1.length)] = mem[128 len floor32(sub_71b359e1.length)]
    return memory
      from (32 * sub_71b359e1.length) + 128
       len (96 * sub_71b359e1.length) + 64
}

function nativeToDeposit() payable {
    if not sub_fc167fc6.length:
        mem[(32 * sub_fc167fc6.length) + 128] = 32
        mem[(32 * sub_fc167fc6.length) + 160] = sub_fc167fc6.length
        mem[(32 * sub_fc167fc6.length) + 192 len floor32(sub_fc167fc6.length)] = mem[128 len floor32(sub_fc167fc6.length)]
        return memory
          from (32 * sub_fc167fc6.length) + 128
           len (96 * sub_fc167fc6.length) + 64
    mem[128] = address(sub_fc167fc6.field_0)
    idx = 128
    s = 0
    while (32 * sub_fc167fc6.length) + 96 > idx:
        mem[idx + 32] = sub_fc167fc6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_fc167fc6.length) + 192 len floor32(sub_fc167fc6.length)] = mem[128 len floor32(sub_fc167fc6.length)]
    return Array(len=sub_fc167fc6.length, data=mem[128 len floor32(sub_fc167fc6.length)], mem[(32 * sub_fc167fc6.length) + floor32(sub_fc167fc6.length) + 192 len (32 * sub_fc167fc6.length) - floor32(sub_fc167fc6.length)]), 
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(sub_3930d6b6Address)
    staticcall sub_3930d6b6Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3930d6b6Address)
    call sub_3930d6b6Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_3930d6b6Address)
        call sub_3930d6b6Address.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] <= arg1:
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        call wantAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
        call wantAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function harvest() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender == tx.origin:
        require ext_code.size(sub_3930d6b6Address)
        call sub_3930d6b6Address.claim_rewards(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(crvAddress)
        staticcall crvAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(crvAddress)
            staticcall crvAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(nativeAddress)
                staticcall nativeAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_fc167fc6.length
                if not sub_fc167fc6.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                else:
                    mem[0] = 18
                    mem[292] = address(sub_fc167fc6.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_fc167fc6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            else:
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_71b359e1.length
                if not sub_71b359e1.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _61 = mem[96 len 4], ext_call.return_data[0 len 28]
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                    _86 = mem[_61 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_61 + 96])] = mem[_61 + 128 len floor32(mem[_61 + 96])]
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _86) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _86) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                    mem[(32 * _86) + ceil32(return_data.size) + 164] = 0
                    mem[(32 * _86) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _86) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _86) + ceil32(return_data.size) + 196] = 160
                    mem[(32 * _86) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[(32 * _86) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                        idx = (32 * _86) + ceil32(return_data.size) + 324
                        s = 0
                        while (32 * _86) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _86) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _86) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _86) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                else:
                    mem[0] = 17
                    mem[292] = address(sub_71b359e1.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_71b359e1.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_71b359e1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _732 = mem[96 len 4], ext_call.return_data[0 len 28]
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                    _763 = mem[_732 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_732 + 96])] = mem[_732 + 128 len floor32(mem[_732 + 96])]
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _763) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _763) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                    mem[(32 * _763) + ceil32(return_data.size) + 164] = 0
                    mem[(32 * _763) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _763) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _763) + ceil32(return_data.size) + 196] = 160
                    mem[(32 * _763) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[(32 * _763) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                        idx = (32 * _763) + ceil32(return_data.size) + 324
                        s = 0
                        while (32 * _763) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _763) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _763) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _763) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _763) + ceil32(return_data.size) + mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _763) + ceil32(return_data.size) + mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(poolAddress)
                call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args call.data[calldata.size len 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == poolSize:
                    require depositIndex < 3
                    require ext_code.size(poolAddress)
                    call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == poolSize:
                        require depositIndex < 4
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(sub_3930d6b6Address)
                call sub_3930d6b6Address.0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit StratHarvest(msg.sender);
        else:
            if ext_call.return_data[0] > 0:
                require ext_code.size(crvAddress)
                staticcall crvAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[292] = address(sub_fc167fc6.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                else:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_71b359e1.length
                    if not sub_71b359e1.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _70 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _96 = mem[_70 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_70 + 96])] = mem[_70 + 128 len floor32(mem[_70 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _96) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _96) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _96) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _96) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _96) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _96) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _96) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _96) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _96) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _96) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _96) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _96) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _96) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _96) + ceil32(return_data.size) + mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _96) + ceil32(return_data.size) + mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                    else:
                        mem[0] = 17
                        mem[292] = address(sub_71b359e1.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_71b359e1.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_71b359e1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _737 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _766 = mem[_737 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_737 + 96])] = mem[_737 + 128 len floor32(mem[_737 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _766) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _766) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _766) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _766) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _766) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _766) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _766) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _766) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _766) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _766) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _766) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _766) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _766) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _766) + ceil32(return_data.size) + mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _766) + ceil32(return_data.size) + mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(poolAddress)
                    call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(poolAddress)
                                call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if paused:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_3930d6b6Address)
                    call sub_3930d6b6Address.0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
    else:
        if address(vaultAddress) != msg.sender:
            revert with 0, '!contract'
        require ext_code.size(sub_3930d6b6Address)
        call sub_3930d6b6Address.claim_rewards(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(crvAddress)
        staticcall crvAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(crvAddress)
            staticcall crvAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(nativeAddress)
                staticcall nativeAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_fc167fc6.length
                if not sub_fc167fc6.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                else:
                    mem[0] = 18
                    mem[292] = address(sub_fc167fc6.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_fc167fc6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            else:
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_71b359e1.length
                if not sub_71b359e1.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _73 = mem[96 len 4], ext_call.return_data[0 len 28]
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                    _97 = mem[_73 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_73 + 96])] = mem[_73 + 128 len floor32(mem[_73 + 96])]
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _97) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _97) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                    mem[(32 * _97) + ceil32(return_data.size) + 164] = 0
                    mem[(32 * _97) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _97) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _97) + ceil32(return_data.size) + 196] = 160
                    mem[(32 * _97) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[(32 * _97) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                        idx = (32 * _97) + ceil32(return_data.size) + 324
                        s = 0
                        while (32 * _97) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _97) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _97) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _97) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _97) + ceil32(return_data.size) + mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _97) + ceil32(return_data.size) + mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                else:
                    mem[0] = 17
                    mem[292] = address(sub_71b359e1.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_71b359e1.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_71b359e1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _742 = mem[96 len 4], ext_call.return_data[0 len 28]
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                    _769 = mem[_742 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_742 + 96])] = mem[_742 + 128 len floor32(mem[_742 + 96])]
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _769) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _769) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                    mem[(32 * _769) + ceil32(return_data.size) + 164] = 0
                    mem[(32 * _769) + ceil32(return_data.size) + 228] = this.address
                    mem[(32 * _769) + ceil32(return_data.size) + 260] = block.timestamp
                    mem[(32 * _769) + ceil32(return_data.size) + 196] = 160
                    mem[(32 * _769) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[(32 * _769) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                        idx = (32 * _769) + ceil32(return_data.size) + 324
                        s = 0
                        while (32 * _769) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _769) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _769) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _769) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _769) + ceil32(return_data.size) + mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _769) + ceil32(return_data.size) + mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(poolAddress)
                call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args call.data[calldata.size len 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == poolSize:
                    require depositIndex < 3
                    require ext_code.size(poolAddress)
                    call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == poolSize:
                        require depositIndex < 4
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if paused:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(sub_3930d6b6Address)
                call sub_3930d6b6Address.0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit StratHarvest(msg.sender);
        else:
            if ext_call.return_data[0] > 0:
                require ext_code.size(crvAddress)
                staticcall crvAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[292] = address(sub_fc167fc6.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                else:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_71b359e1.length
                    if not sub_71b359e1.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _84 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _106 = mem[_84 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_84 + 96])] = mem[_84 + 128 len floor32(mem[_84 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _106) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _106) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _106) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _106) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _106) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _106) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _106) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _106) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _106) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _106) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _106) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _106) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _106) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _106) + ceil32(return_data.size) + mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _106) + ceil32(return_data.size) + mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                    else:
                        mem[0] = 17
                        mem[292] = address(sub_71b359e1.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_71b359e1.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_71b359e1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _747 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _772 = mem[_747 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_747 + 96])] = mem[_747 + 128 len floor32(mem[_747 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _772) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _772) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _772) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _772) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _772) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _772) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _772) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _772) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _772) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _772) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _772) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _772) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _772) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _772) + ceil32(return_data.size) + mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _772) + ceil32(return_data.size) + mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(poolAddress)
                    call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(poolAddress)
                                call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if paused:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_3930d6b6Address)
                    call sub_3930d6b6Address.0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
}

function beforeDeposit() payable {
    if harvestOnDeposit:
        if paused:
            revert with 0, 'Pausable: paused'
        if msg.sender == tx.origin:
            require ext_code.size(sub_3930d6b6Address)
            call sub_3930d6b6Address.claim_rewards(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(crvAddress)
            staticcall crvAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(crvAddress)
                staticcall crvAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[292] = address(sub_fc167fc6.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                else:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_71b359e1.length
                    if not sub_71b359e1.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _61 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _86 = mem[_61 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_61 + 96])] = mem[_61 + 128 len floor32(mem[_61 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _86) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _86) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _86) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _86) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _86) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _86) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _86) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _86) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _86) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _86) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _86) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _86) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _86) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                    else:
                        mem[0] = 17
                        mem[292] = address(sub_71b359e1.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_71b359e1.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_71b359e1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _732 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _763 = mem[_732 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_732 + 96])] = mem[_732 + 128 len floor32(mem[_732 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _763) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _763) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _763) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _763) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _763) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _763) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _763) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _763) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _763) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _763) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _763) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _763) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _763) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _763) + ceil32(return_data.size) + mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _763) + ceil32(return_data.size) + mem[(32 * _763) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(poolAddress)
                    call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(poolAddress)
                                call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if paused:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_3930d6b6Address)
                    call sub_3930d6b6Address.0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(crvAddress)
                    staticcall crvAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        mem[132] = 0
                        mem[196] = this.address
                        mem[228] = block.timestamp
                        mem[164] = 160
                        mem[260] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[292] = address(sub_fc167fc6.field_0)
                            idx = 292
                            s = 0
                            while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    else:
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        mem[132] = 0
                        mem[196] = this.address
                        mem[228] = block.timestamp
                        mem[164] = 160
                        mem[260] = sub_71b359e1.length
                        if not sub_71b359e1.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _70 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _96 = mem[_70 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_70 + 96])] = mem[_70 + 128 len floor32(mem[_70 + 96])]
                            require ext_code.size(nativeAddress)
                            staticcall nativeAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _96) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _96) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                            mem[(32 * _96) + ceil32(return_data.size) + 164] = 0
                            mem[(32 * _96) + ceil32(return_data.size) + 228] = this.address
                            mem[(32 * _96) + ceil32(return_data.size) + 260] = block.timestamp
                            mem[(32 * _96) + ceil32(return_data.size) + 196] = 160
                            mem[(32 * _96) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                            if not sub_fc167fc6.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                            else:
                                mem[0] = 18
                                mem[(32 * _96) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                                idx = (32 * _96) + ceil32(return_data.size) + 324
                                s = 0
                                while (32 * _96) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                    mem[idx + 32] = sub_fc167fc6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _96) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _96) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _96) + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            require mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _96) + ceil32(return_data.size) + mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _96) + ceil32(return_data.size) + mem[(32 * _96) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                        else:
                            mem[0] = 17
                            mem[292] = address(sub_71b359e1.field_0)
                            idx = 292
                            s = 0
                            while (32 * sub_71b359e1.length) + 292 > idx + 32:
                                mem[idx + 32] = sub_71b359e1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _737 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _766 = mem[_737 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_737 + 96])] = mem[_737 + 128 len floor32(mem[_737 + 96])]
                            require ext_code.size(nativeAddress)
                            staticcall nativeAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _766) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _766) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                            mem[(32 * _766) + ceil32(return_data.size) + 164] = 0
                            mem[(32 * _766) + ceil32(return_data.size) + 228] = this.address
                            mem[(32 * _766) + ceil32(return_data.size) + 260] = block.timestamp
                            mem[(32 * _766) + ceil32(return_data.size) + 196] = 160
                            mem[(32 * _766) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                            if not sub_fc167fc6.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                            else:
                                mem[0] = 18
                                mem[(32 * _766) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                                idx = (32 * _766) + ceil32(return_data.size) + 324
                                s = 0
                                while (32 * _766) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                    mem[idx + 32] = sub_fc167fc6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _766) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _766) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _766) + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            require mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _766) + ceil32(return_data.size) + mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _766) + ceil32(return_data.size) + mem[(32 * _766) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 == poolSize:
                        require depositIndex < 2
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == poolSize:
                            require depositIndex < 3
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == poolSize:
                                require depositIndex < 4
                                require ext_code.size(poolAddress)
                                call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == poolSize:
                                    require depositIndex < 5
                                    require ext_code.size(poolAddress)
                                    call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 160], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_3930d6b6Address)
                        call sub_3930d6b6Address.0xb6b55f25 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit StratHarvest(msg.sender);
        else:
            if address(vaultAddress) != msg.sender:
                revert with 0, '!contract'
            require ext_code.size(sub_3930d6b6Address)
            call sub_3930d6b6Address.claim_rewards(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(crvAddress)
            staticcall crvAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(crvAddress)
                staticcall crvAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 18
                        mem[292] = address(sub_fc167fc6.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                else:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_71b359e1.length
                    if not sub_71b359e1.length:
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _73 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _97 = mem[_73 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_73 + 96])] = mem[_73 + 128 len floor32(mem[_73 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _97) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _97) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _97) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _97) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _97) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _97) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _97) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _97) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _97) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _97) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _97) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _97) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _97) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _97) + ceil32(return_data.size) + mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _97) + ceil32(return_data.size) + mem[(32 * _97) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                    else:
                        mem[0] = 17
                        mem[292] = address(sub_71b359e1.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_71b359e1.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_71b359e1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _742 = mem[96 len 4], ext_call.return_data[0 len 28]
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                        _769 = mem[_742 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[_742 + 96])] = mem[_742 + 128 len floor32(mem[_742 + 96])]
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _769) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _769) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[(32 * _769) + ceil32(return_data.size) + 164] = 0
                        mem[(32 * _769) + ceil32(return_data.size) + 228] = this.address
                        mem[(32 * _769) + ceil32(return_data.size) + 260] = block.timestamp
                        mem[(32 * _769) + ceil32(return_data.size) + 196] = 160
                        mem[(32 * _769) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[(32 * _769) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                            idx = (32 * _769) + ceil32(return_data.size) + 324
                            s = 0
                            while (32 * _769) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _769) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _769) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _769) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(32 * _769) + ceil32(return_data.size) + mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _769) + ceil32(return_data.size) + mem[(32 * _769) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(poolAddress)
                    call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(poolAddress)
                                call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if paused:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_3930d6b6Address)
                    call sub_3930d6b6Address.0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(crvAddress)
                    staticcall crvAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        mem[132] = 0
                        mem[196] = this.address
                        mem[228] = block.timestamp
                        mem[164] = 160
                        mem[260] = sub_fc167fc6.length
                        if not sub_fc167fc6.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                        else:
                            mem[0] = 18
                            mem[292] = address(sub_fc167fc6.field_0)
                            idx = 292
                            s = 0
                            while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                                mem[idx + 32] = sub_fc167fc6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    else:
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        mem[132] = 0
                        mem[196] = this.address
                        mem[228] = block.timestamp
                        mem[164] = 160
                        mem[260] = sub_71b359e1.length
                        if not sub_71b359e1.length:
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _84 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _106 = mem[_84 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_84 + 96])] = mem[_84 + 128 len floor32(mem[_84 + 96])]
                            require ext_code.size(nativeAddress)
                            staticcall nativeAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _106) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _106) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                            mem[(32 * _106) + ceil32(return_data.size) + 164] = 0
                            mem[(32 * _106) + ceil32(return_data.size) + 228] = this.address
                            mem[(32 * _106) + ceil32(return_data.size) + 260] = block.timestamp
                            mem[(32 * _106) + ceil32(return_data.size) + 196] = 160
                            mem[(32 * _106) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                            if not sub_fc167fc6.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                            else:
                                mem[0] = 18
                                mem[(32 * _106) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                                idx = (32 * _106) + ceil32(return_data.size) + 324
                                s = 0
                                while (32 * _106) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                    mem[idx + 32] = sub_fc167fc6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _106) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _106) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _106) + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            require mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _106) + ceil32(return_data.size) + mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _106) + ceil32(return_data.size) + mem[(32 * _106) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                        else:
                            mem[0] = 17
                            mem[292] = address(sub_71b359e1.field_0)
                            idx = 292
                            s = 0
                            while (32 * sub_71b359e1.length) + 292 > idx + 32:
                                mem[idx + 32] = sub_71b359e1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(unirouterAddress)
                            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_71b359e1.length, mem[292 len 32 * sub_71b359e1.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _747 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _772 = mem[_747 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_747 + 96])] = mem[_747 + 128 len floor32(mem[_747 + 96])]
                            require ext_code.size(nativeAddress)
                            staticcall nativeAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _772) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _772) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                            mem[(32 * _772) + ceil32(return_data.size) + 164] = 0
                            mem[(32 * _772) + ceil32(return_data.size) + 228] = this.address
                            mem[(32 * _772) + ceil32(return_data.size) + 260] = block.timestamp
                            mem[(32 * _772) + ceil32(return_data.size) + 196] = 160
                            mem[(32 * _772) + ceil32(return_data.size) + 292] = sub_fc167fc6.length
                            if not sub_fc167fc6.length:
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                            else:
                                mem[0] = 18
                                mem[(32 * _772) + ceil32(return_data.size) + 324] = address(sub_fc167fc6.field_0)
                                idx = (32 * _772) + ceil32(return_data.size) + 324
                                s = 0
                                while (32 * _772) + ceil32(return_data.size) + (32 * sub_fc167fc6.length) + 324 > idx + 32:
                                    mem[idx + 32] = sub_fc167fc6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(unirouterAddress)
                                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[(32 * _772) + ceil32(return_data.size) + 324 len 32 * sub_fc167fc6.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _772) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _772) + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            require mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _772) + ceil32(return_data.size) + mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _772) + ceil32(return_data.size) + mem[(32 * _772) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 == poolSize:
                        require depositIndex < 2
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == poolSize:
                            require depositIndex < 3
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == poolSize:
                                require depositIndex < 4
                                require ext_code.size(poolAddress)
                                call poolAddress.add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == poolSize:
                                    require depositIndex < 5
                                    require ext_code.size(poolAddress)
                                    call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 160], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    if paused:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_3930d6b6Address)
                        call sub_3930d6b6Address.0xb6b55f25 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit StratHarvest(msg.sender);
}



}
