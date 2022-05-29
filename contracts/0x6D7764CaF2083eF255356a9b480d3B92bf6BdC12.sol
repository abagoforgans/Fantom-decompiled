contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#
const MAX_CALL_FEE = 0

const WITHDRAWAL_MAX = 0

const STRATEGIST_FEE = 0

const MAX_FEE = 0

const WITHDRAWAL_FEE_CAP = 0


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
uint32 stor3;
address unirouterAddress;
uint256 stor3;
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
uint32 stor13;
address sub_3930d6b6Address;
uint256 stor13;
uint32 stor14;
address poolAddress;
uint256 stor14;
uint256 poolSize;
uint256 depositIndex;
array of struct sub_71b359e1;
array of struct sub_fc167fc6;
uint8 harvestOnDeposit;

function native() payable {
    return nativeAddress
}

function pool() payable {
    return address(poolAddress)
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return address(unirouterAddress)
}

function sub_3930d6b6(?) payable {
    return address(sub_3930d6b6Address)
}

function poolSize() payable {
    return poolSize
}

function paused() payable {
    return bool(stor0)
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(unirouterAddress) = arg1
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
        revert with 0, 'wOwnable: caller is not the owne'
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
    beefyFee = -arg1
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).0x70a08231 with:
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

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(sub_3930d6b6Address))
        call address(sub_3930d6b6Address).0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
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
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_3930d6b6Address))
    call address(sub_3930d6b6Address).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
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
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_3930d6b6Address))
        call address(sub_3930d6b6Address).0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        if owner != tx.origin:
            if not stor0:
                if ext_call.return_data[0]:
                    if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                revert with 0, 'SafeMath: division by zero'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        call wantAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
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
        if owner != tx.origin:
            if not stor0:
                if arg1:
                    if withdrawalFee * arg1 / arg1 != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                revert with 0, 'SafeMath: division by zero'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
        call wantAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
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

function pause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
    call wantAddress with:
       funct uint32(stor13)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call nativeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            call crvAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 681 len 4] = 0
            call crvAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call depositTokenAddress with:
                   funct uint32(stor14), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
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
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 531 len 26]
    if not ext_code.size(nativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call nativeAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args 0, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 695 len 26]
        if not ext_code.size(crvAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        mem[ceil32(return_data.size) + 681 len 4] = 0
        call crvAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 859 len 26]
            if not ext_code.size(depositTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
            call depositTokenAddress with:
               funct uint32(stor14)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 621]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 860 len 26]
            if not ext_code.size(depositTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call depositTokenAddress with:
               funct uint32(stor14), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + 696 len 26]
    if not ext_code.size(crvAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
    call crvAddress with:
       funct uint32(stor3), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
         gas gas_remaining wei
        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 860 len 26]
        if not ext_code.size(depositTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
        call depositTokenAddress with:
           funct uint32(stor14)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
        else:
            mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
    if not ext_code.size(depositTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
    call depositTokenAddress with:
       funct uint32(stor14)
         gas gas_remaining wei
        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
    require return_data.size >= 32
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 760] = 32
    mem[(4 * ceil32(return_data.size)) + 792] = 42
    mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (4 * ceil32(return_data.size)) + 756
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function panic() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        if owner != msg.sender:
            if keeperAddress != msg.sender:
                revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
    call wantAddress with:
       funct uint32(stor13)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call nativeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            call crvAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                require ext_code.size(address(sub_3930d6b6Address))
                staticcall address(sub_3930d6b6Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                mem[ceil32(return_data.size) + 845 len 4] = 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 790 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 790 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 681 len 4] = 0
            call crvAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                mem[ceil32(return_data.size) + 845 len 4] = 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 790 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 790 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call depositTokenAddress with:
                   funct uint32(stor14), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                require ext_code.size(address(sub_3930d6b6Address))
                staticcall address(sub_3930d6b6Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
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
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call nativeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
            mem[ceil32(return_data.size) + 681 len 4] = 0
            call crvAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                mem[ceil32(return_data.size) + 845 len 4] = 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 790 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 790 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call depositTokenAddress with:
                   funct uint32(stor14), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                require ext_code.size(address(sub_3930d6b6Address))
                staticcall address(sub_3930d6b6Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call crvAddress with:
               funct uint32(stor3), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                require ext_code.size(address(sub_3930d6b6Address))
                staticcall address(sub_3930d6b6Address).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
                call depositTokenAddress with:
                   funct uint32(stor14)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 760] = 32
                            mem[(4 * ceil32(return_data.size)) + 792] = 42
                            mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 756
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(4 * ceil32(return_data.size)) + 760] = this.address
                    require ext_code.size(address(sub_3930d6b6Address))
                    staticcall address(sub_3930d6b6Address).0x70a08231 with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 760 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 760] = ext_call.return_data[0]
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 760 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.sender == tx.origin:
        require ext_code.size(address(sub_3930d6b6Address))
        call address(sub_3930d6b6Address).claim_rewards(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(crvAddress)
        staticcall crvAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(crvAddress)
            staticcall crvAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(nativeAddress)
                staticcall nativeAddress.0x70a08231 with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(address(poolAddress))
                call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args call.data[calldata.size len 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == poolSize:
                    require depositIndex < 3
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == poolSize:
                        require depositIndex < 4
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit StratHarvest(msg.sender);
        else:
            if ext_call.return_data[0] > 0:
                require ext_code.size(crvAddress)
                staticcall crvAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
    else:
        if address(vaultAddress) != msg.sender:
            revert with 0, '!contract'
        require ext_code.size(address(sub_3930d6b6Address))
        call address(sub_3930d6b6Address).claim_rewards(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(crvAddress)
        staticcall crvAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(crvAddress)
            staticcall crvAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(nativeAddress)
                staticcall nativeAddress.0x70a08231 with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(address(poolAddress))
                call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args call.data[calldata.size len 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == poolSize:
                    require depositIndex < 3
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == poolSize:
                        require depositIndex < 4
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit StratHarvest(msg.sender);
        else:
            if ext_call.return_data[0] > 0:
                require ext_code.size(crvAddress)
                staticcall crvAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
}

function beforeDeposit() payable {
    if harvestOnDeposit:
        if stor0:
            revert with 0, 'Pausable: paused'
        if msg.sender == tx.origin:
            require ext_code.size(address(sub_3930d6b6Address))
            call address(sub_3930d6b6Address).claim_rewards(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(crvAddress)
            staticcall crvAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(crvAddress)
                staticcall crvAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(crvAddress)
                    staticcall crvAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            staticcall nativeAddress.0x70a08231 with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            staticcall nativeAddress.0x70a08231 with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 == poolSize:
                        require depositIndex < 2
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == poolSize:
                            require depositIndex < 3
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == poolSize:
                                require depositIndex < 4
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == poolSize:
                                    require depositIndex < 5
                                    require ext_code.size(address(poolAddress))
                                    call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 160], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(sub_3930d6b6Address))
                        call address(sub_3930d6b6Address).0xb6b55f25 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit StratHarvest(msg.sender);
        else:
            if address(vaultAddress) != msg.sender:
                revert with 0, '!contract'
            require ext_code.size(address(sub_3930d6b6Address))
            call address(sub_3930d6b6Address).claim_rewards(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(crvAddress)
            staticcall crvAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(crvAddress)
                staticcall crvAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(nativeAddress)
                    staticcall nativeAddress.0x70a08231 with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 3 == poolSize:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == poolSize:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).0xb6b55f25 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit StratHarvest(msg.sender);
            else:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(crvAddress)
                    staticcall crvAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(nativeAddress)
                        staticcall nativeAddress.0x70a08231 with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            staticcall nativeAddress.0x70a08231 with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                            staticcall nativeAddress.0x70a08231 with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                                require ext_code.size(address(unirouterAddress))
                                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 == poolSize:
                        require depositIndex < 2
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == poolSize:
                            require depositIndex < 3
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == poolSize:
                                require depositIndex < 4
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == poolSize:
                                    require depositIndex < 5
                                    require ext_code.size(address(poolAddress))
                                    call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 160], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(sub_3930d6b6Address))
                        call address(sub_3930d6b6Address).0xb6b55f25 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit StratHarvest(msg.sender);
}



}
