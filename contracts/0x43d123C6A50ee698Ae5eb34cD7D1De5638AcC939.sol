contract main {




// =====================  Runtime code  =====================


#
#  - buy(address arg1, uint256 arg2, address arg3)
#
uint8 stor0; offset 160
address owner;
uint256 startTime;
uint256 endTime;
address lockerAddress;
address BURN_ADDRESS;
address tokenAddress;
address sub_1e136e16Address;
address sub_2f02158cAddress;
address tokenETHAddress;
address tokenUSDCAddress;
address tokenUSDTAddress;
address sub_adf3dc48Address;
uint256 sub_ba0540ae;
uint256 sub_2c9b77bd;
uint256 sub_1d856e79;
uint256 sub_7cd647ee;
uint256 sub_ecec2c27;
uint256 sub_c43fae05;
uint256 sub_f73ee6d4;
uint256 sub_eb2f3baa;
uint256 raisedETH;
uint256 sub_abe0943e;
uint256 raisedUSDT;
uint256 sub_6fbec0e4;
uint256 claimedAmount;
uint256 claimAmount;
address uniswapV2RouterAddress;
mapping of uint8 stor27;
mapping of uint8 stor28;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_1d856e79(?) {
    return sub_1d856e79
}

function sub_1e136e16(?) {
    return sub_1e136e16Address
}

function raisedETH() {
    return raisedETH
}

function sub_2c9b77bd(?) {
    return sub_2c9b77bd
}

function sub_2f02158c(?) {
    return sub_2f02158cAddress
}

function endTime() {
    return endTime
}

function isInitialized() {
    return bool(stor0)
}

function raisedUSDT() {
    return raisedUSDT
}

function isEligible(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor27[arg1])
}

function sub_6fbec0e4(?) {
    return sub_6fbec0e4
}

function startTime() {
    return startTime
}

function sub_7cd647ee(?) {
    return sub_7cd647ee
}

function claimAmount() {
    return claimAmount
}

function isClaimed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor28[arg1])
}

function owner() {
    return owner
}

function claimedAmount() {
    return claimedAmount
}

function tokenUSDT() {
    return tokenUSDTAddress
}

function sub_abe0943e(?) {
    return sub_abe0943e
}

function sub_adf3dc48(?) {
    return sub_adf3dc48Address
}

function sub_ba0540ae(?) {
    return sub_ba0540ae
}

function tokenETH() {
    return tokenETHAddress
}

function sub_c43fae05(?) {
    return sub_c43fae05
}

function tokenUSDC() {
    return tokenUSDCAddress
}

function locker() {
    return lockerAddress
}

function sub_eb2f3baa(?) {
    return sub_eb2f3baa
}

function sub_ecec2c27(?) {
    return sub_ecec2c27
}

function sub_f73ee6d4(?) {
    return sub_f73ee6d4
}

function token() {
    return tokenAddress
}

function BURN_ADDRESS() {
    return BURN_ADDRESS
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

function sub_4050d957(?) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Already initialized'
    sub_1e136e16Address = arg1
    sub_2f02158cAddress = arg2
    tokenETHAddress = arg3
    tokenUSDCAddress = arg4
    tokenUSDTAddress = arg5
    sub_adf3dc48Address = arg6
}

function setRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Already initialized'
    sub_ba0540ae = arg1
    sub_2c9b77bd = arg2
    sub_1d856e79 = arg3
    sub_7cd647ee = arg4
    sub_ecec2c27 = arg5
    sub_c43fae05 = arg6
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_47723ef3(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Already initialized'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 27
        stor27[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function claim() {
    if block.timestamp > endTime:
        revert with 0, 'Claim has ended'
    if block.timestamp < startTime:
        revert with 0, 'Claim not started'
    if not stor27[msg.sender]:
        revert with 0, 'Not eligible'
    if stor28[msg.sender]:
        revert with 0, 'Already claimed'
    stor28[msg.sender] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, claimAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if claimAmount + claimedAmount < claimedAmount:
        revert with 0, 'SafeMath: addition overflow'
    claimedAmount += claimAmount
}

function burnUnsoldTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= endTime:
        revert with 0, 'Presale not ended'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args BURN_ADDRESS, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Already initialized'
    stor0 = 1
    tokenAddress = arg1
    lockerAddress = arg2
    uniswapV2RouterAddress = arg3
    startTime = arg4
    endTime = arg5
    claimAmount = arg6
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2f02158cAddress)
    call sub_2f02158cAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenETHAddress)
    call tokenETHAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenUSDCAddress)
    call tokenUSDCAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenUSDTAddress)
    call tokenUSDTAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_adf3dc48Address)
    call sub_adf3dc48Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
