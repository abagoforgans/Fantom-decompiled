contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const sub_0550473d(?) = 995

const sub_30618f99(?) = 3000

const wBNB = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c


address owner;
address tokenAddress;
uint32 stor2;
address feedVaultAddress;
uint256 stor2;
address feesCollectorAddress;
uint256 cachedPricePerShare;
uint256 sub_73dc1349;
uint256 sub_de6d8bc1;
uint8 sub_3c799acb;
address sub_ab68dd19Address; offset 8
address sub_90fcdb36Address;
array of address sub_0cce291d;
uint256 slippageFactor;
uint32 stor11;
address sub_bbc29772Address;
uint256 stor11;
uint256 pid;
address rewardTokenAddress;
address harvesterAddress;
uint256 depositedBalance;
array of address sub_caccca3c;
array of address sub_bf7e16cf;

function cachedPricePerShare() payable {
    return cachedPricePerShare
}

function sub_0cce291d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0cce291d.length
    return address(sub_0cce291d[arg1])
}

function sub_3c799acb(?) payable {
    return bool(sub_3c799acb)
}

function depositedBalance() payable {
    return depositedBalance
}

function harvester() payable {
    return harvesterAddress
}

function feedVault() payable {
    return address(feedVaultAddress)
}

function sub_73dc1349(?) payable {
    return sub_73dc1349
}

function owner() payable {
    return owner
}

function sub_90fcdb36(?) payable {
    return sub_90fcdb36Address
}

function feesCollector() payable {
    return feesCollectorAddress
}

function sub_ab68dd19(?) payable {
    return sub_ab68dd19Address
}

function sub_bbc29772(?) payable {
    return address(sub_bbc29772Address)
}

function sub_bf7e16cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_bf7e16cf.length
    return address(sub_bf7e16cf[arg1])
}

function sub_caccca3c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_caccca3c.length
    return address(sub_caccca3c[arg1])
}

function sub_de6d8bc1(?) payable {
    return sub_de6d8bc1
}

function pid() payable {
    return pid
}

function rewardToken() payable {
    return rewardTokenAddress
}

function token() payable {
    return tokenAddress
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function collectFees() payable {
    if address(feedVaultAddress) != msg.sender:
        revert with 0, 'TargetVault: caller is not vault'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAutoBuyBack(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_3c799acb = uint8(arg1)
    emit AutoBuyBack(bool(uint8(arg1)));
}

function setMinimumFeesDecimal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_de6d8bc1 = arg1
    emit MinimumFeesDicimalChanged(arg1);
}

function availableBalance() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function vaultToken() payable {
    require ext_code.size(address(sub_bbc29772Address))
    staticcall address(sub_bbc29772Address).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[12 len 20]
}

function vaultBalance() payable {
    require ext_code.size(address(sub_bbc29772Address))
    staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeesBP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 3000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735461726765745661756c742873657446656573293a206665657320626173697320706f696e74732065786365656473207468726573686f6c,
                    mem[221 len 7]
    sub_73dc1349 = arg1
    emit FeesBPChanged(arg1);
}

function setHarvester(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x735461726765745661756c7428736574486172766573746572293a206861727665737465722063616e6e6f74206265207a65726f20616464726573,
                    mem[223 len 5]
    harvesterAddress = arg1
    emit HarvesterChanged(arg1);
}

function setSlippageFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 995:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6c5461726765745661756c7428736574536c697070616765466163746f72293a20736c697070616765466163746f7220746f6f20686967,
                    mem[219 len 9]
    slippageFactor = arg1
    emit SlippageFactorChanged(arg1);
}

function setFeesCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    68,
                    0x725461726765745661756c742873657446656573436f6c6c6563746f72293a206665657320636f6c6c6563746f722063616e6e6f74206265207a65726f20616464726573,
                    mem[232 len 28]
    feesCollectorAddress = arg1
    emit FeesCollectorChanged(arg1);
}

function setSwapRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x735461726765745661756c742873657453776170526f7574657241646472657373293a207377617020726f757465722063616e6e6f74206265207a65726f20616464726573,
                    mem[233 len 27]
    sub_90fcdb36Address = arg1
    emit SwapRouterChanged(arg1);
}

function setBuyBackToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x655461726765745661756c74287365744275794261636b546f6b656e293a20627579206261636b20746f6b656e2063616e6e6f74206265207a65726f20616464726573,
                    mem[231 len 29]
    sub_ab68dd19Address = arg1
    emit BuyBackTokenChanged(address arg1):
                             0,
                             arg1,
}

function balanceOf() payable {
    require ext_code.size(address(sub_bbc29772Address))
    staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function balanceOfToken() payable {
    require ext_code.size(address(sub_bbc29772Address))
    staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function sub_192be330(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_caccca3c.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_caccca3c.length > idx:
            uint256(sub_caccca3c[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(sub_caccca3c[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_caccca3c.length > idx:
            uint256(sub_caccca3c[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_2ad77128(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_0cce291d.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_0cce291d.length > idx:
            uint256(sub_0cce291d[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(sub_0cce291d[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_0cce291d.length > idx:
            uint256(sub_0cce291d[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_89fedca3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_bf7e16cf.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_bf7e16cf.length > idx:
            uint256(sub_bf7e16cf[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(sub_bf7e16cf[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_bf7e16cf.length > idx:
            uint256(sub_bf7e16cf[idx]) = 0
            idx = idx + 1
            continue 
}

function targetPricePerShare() payable {
    if 0 == depositedBalance:
        return 10^18
    require ext_code.size(address(sub_bbc29772Address))
    staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if depositedBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        if depositedBalance:
            return (0 / depositedBalance)
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if depositedBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        if depositedBalance:
            return (10^18 * ext_call.return_data[0] / depositedBalance)
    ('iszero', ('stor', ('name', 'depositedBalance', 15)))
    revert
}

function retireTargetVault() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call tokenAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit TargetVaultRetired()
}

function emergencyWithdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(address(sub_bbc29772Address))
    staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(sub_bbc29772Address))
    call address(sub_bbc29772Address).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    depositedBalance = 0
    cachedPricePerShare = 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call tokenAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdrawed()
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(feedVaultAddress) != msg.sender:
        revert with 0, 'TargetVault: caller is not vault'
    if arg1:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        depositedBalance -= arg1
        require ext_code.size(address(sub_bbc29772Address))
        call address(sub_bbc29772Address).withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pid, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
        mem[324 len 0] = 0
        call tokenAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not depositedBalance:
                cachedPricePerShare = 10^18
            else:
                if 0 == depositedBalance:
                    cachedPricePerShare = 10^18
                else:
                    require ext_code.size(address(sub_bbc29772Address))
                    staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        if depositedBalance <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositedBalance
                        cachedPricePerShare = 0 / depositedBalance
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                        if depositedBalance <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositedBalance
                        cachedPricePerShare = 10^18 * ext_call.return_data[0] / depositedBalance
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
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not depositedBalance:
                cachedPricePerShare = 10^18
            else:
                if 0 == depositedBalance:
                    cachedPricePerShare = 10^18
                else:
                    require ext_code.size(address(sub_bbc29772Address))
                    staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        if depositedBalance <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositedBalance
                        cachedPricePerShare = 0 / depositedBalance
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        if depositedBalance <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositedBalance
                        cachedPricePerShare = 10^18 * ext_call.return_data[0] / depositedBalance
        emit Withdrawed(arg1);
}

function deposit() payable {
    if address(feedVaultAddress) != msg.sender:
        revert with 0, 'TargetVault: caller is not vault'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 == depositedBalance:
            cachedPricePerShare = 10^18
        else:
            require ext_code.size(address(sub_bbc29772Address))
            staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                if depositedBalance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require depositedBalance
                cachedPricePerShare = 0 / depositedBalance
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if depositedBalance <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require depositedBalance
                cachedPricePerShare = 10^18 * ext_call.return_data[0] / depositedBalance
    else:
        depositedBalance += ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_bbc29772Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[324 len 0] = 0
        call tokenAddress with:
           funct uint32(stor11)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 2 * ext_call.return_data[0]
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor11):
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(address(sub_bbc29772Address))
            call address(sub_bbc29772Address).deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Deposited(ext_call.return_data[0]);
            if 0 == depositedBalance:
                cachedPricePerShare = 10^18
            else:
                require ext_code.size(address(sub_bbc29772Address))
                staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    if depositedBalance <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require depositedBalance
                    cachedPricePerShare = 0 / depositedBalance
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    if depositedBalance <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require depositedBalance
                    cachedPricePerShare = 10^18 * ext_call.return_data[0] / depositedBalance
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
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(address(sub_bbc29772Address))
            call address(sub_bbc29772Address).deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Deposited(ext_call.return_data[0]);
            if 0 == depositedBalance:
                cachedPricePerShare = 10^18
            else:
                require ext_code.size(address(sub_bbc29772Address))
                staticcall address(sub_bbc29772Address).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    if depositedBalance <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require depositedBalance
                    cachedPricePerShare = 0 / depositedBalance
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 362 len 31]
                    if depositedBalance <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require depositedBalance
                    cachedPricePerShare = 10^18 * ext_call.return_data[0] / depositedBalance
}



}
