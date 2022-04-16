contract main {




// =====================  Runtime code  =====================


address sub_ceec262fAddress;
address tokenAddress;
address unsoldTokensDumpAddress;
mapping of uint256 investments;
mapping of uint8 stor5;
mapping of uint256 claimed;
uint256 totalInvestorsCount;
uint256 totalCollectedWei;
uint256 totalTokens;
uint256 tokensLeft;
uint256 tokenPriceInWei;
uint256 hardCapInWei;
uint256 softCapInWei;
uint256 maxInvestInWei;
uint256 minInvestInWei;
uint256 openTime;
uint256 closeTime;
uint256 cakeLiquidityAddingTime;
uint256 sub_b13aaebd;
uint8 presaleCancelled;
uint8 refundAllowed; offset 8
uint8 claimAllowed; offset 16
uint8 sub_bc89ff2b; offset 24
uint256 stor20; offset 8
uint256 saleTitle;
uint256 linkTelegram;
uint256 linkTwitter;
uint256 linkGithub;
uint256 linkWebsite;
uint256 linkLogo;
mapping of uint8 stor27;
uint256 stor28;
uint8 stor29;
uint8 stor29; offset 8
uint256 stor29; offset 16
uint256 stor29; offset 8
array of struct stor30;
array of struct stor31;

function cakeLiquidityAddingTime() {
    return cakeLiquidityAddingTime
}

function whitelistedAddresses(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function hardCapInWei() {
    return hardCapInWei
}

function linkTwitter() {
    return linkTwitter
}

function sub_16bc4f0e(?) {
    require calldata.size - 4 >= 32
    return bool(stor27[arg1])
}

function tokenPriceInWei() {
    return tokenPriceInWei
}

function refundAllowed() {
    return bool(refundAllowed)
}

function closeTime() {
    return closeTime
}

function totalInvestorsCount() {
    return totalInvestorsCount
}

function linkTelegram() {
    return linkTelegram
}

function totalTokens() {
    return totalTokens
}

function claimAllowed() {
    return bool(claimAllowed)
}

function linkWebsite() {
    return linkWebsite
}

function investments(address arg1) {
    require calldata.size - 4 >= 32
    return investments[arg1]
}

function linkGithub() {
    return linkGithub
}

function maxInvestInWei() {
    return maxInvestInWei
}

function unsoldTokensDumpAddress() {
    return unsoldTokensDumpAddress
}

function sub_b13aaebd(?) {
    return sub_b13aaebd
}

function tokensLeft() {
    return tokensLeft
}

function openTime() {
    return openTime
}

function sub_bc89ff2b(?) {
    return bool(sub_bc89ff2b)
}

function saleTitle() {
    return saleTitle
}

function totalCollectedWei() {
    return totalCollectedWei
}

function linkLogo() {
    return linkLogo
}

function claimed(address arg1) {
    require calldata.size - 4 >= 32
    return claimed[arg1]
}

function sub_ceec262f(?) {
    return sub_ceec262fAddress
}

function presaleCancelled() {
    return bool(presaleCancelled)
}

function softCapInWei() {
    return softCapInWei
}

function minInvestInWei() {
    return minInvestInWei
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setClaimCycle(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_ceec262fAddress
    sub_b13aaebd = arg1
}

function setRefundAllowed(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_ceec262fAddress
    stor20 = Mask(248, 0, arg1)
}

function setAddressInfo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_ceec262fAddress
    require arg1
    require arg2
    tokenAddress = arg1
    unsoldTokensDumpAddress = arg2
}

function allowClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_ceec262fAddress
    require arg1 > 0
    require closeTime > 0
    require arg1 >= closeTime
    claimAllowed = 1
    cakeLiquidityAddingTime = arg1
}

function setStringInfo(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    require msg.sender == sub_ceec262fAddress
    saleTitle = arg1
    linkTelegram = arg2
    linkGithub = arg3
    linkTwitter = arg4
    linkWebsite = arg5
    linkLogo = arg6
}

function collectFundsRaised() {
    require msg.sender == sub_ceec262fAddress
    require not presaleCancelled
    if eth.balance(this.address):
        call sub_ceec262fAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_d64d3138(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == sub_ceec262fAddress
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 27
        stor27[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function addWhitelistedAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == sub_ceec262fAddress
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function cancelAndTransferTokensToDev() {
    require msg.sender == sub_ceec262fAddress
    require not presaleCancelled
    presaleCancelled = 1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_ceec262fAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function setGeneralInfo(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require msg.sender == sub_ceec262fAddress
    require arg1 > 0
    require arg2 > 0
    require arg7 > 0
    require arg8 > 0
    require arg3 > 0
    if not arg1:
        require arg3 <= 0
    else:
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require arg3 <= arg2 * arg1
    require arg4 <= arg3
    require arg6 <= arg5
    require arg7 < arg8
    totalTokens = arg1
    tokensLeft = arg1
    tokenPriceInWei = arg2
    hardCapInWei = arg3
    softCapInWei = arg4
    maxInvestInWei = arg5
    minInvestInWei = arg6
    openTime = arg7
    closeTime = arg8
}

function getRefund() {
    if not stor5[msg.sender]:
        revert with 0, 'Address not whitelisted'
    if not investments[msg.sender]:
        revert with 0, 'Not an investor'
    if not refundAllowed:
        revert with 0, 'Refund is disallowed'
    if not presaleCancelled:
        if block.timestamp < openTime:
            revert with 0, 'Not yet opened'
        if block.timestamp < closeTime:
            revert with 0, 'Not yet closed'
        if softCapInWei <= 0:
            revert with 0, 'No soft cap'
        if totalCollectedWei >= softCapInWei:
            revert with 0, 'Soft cap reached'
        if claimed[msg.sender]:
            revert with 0, 'Already claimed'
    claimed[msg.sender] = 4
    require eth.balance(this.address)
    if investments[msg.sender] <= eth.balance(this.address):
        if investments[msg.sender]:
            call msg.sender with:
               value investments[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_ebc9afcc(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + ('cd', 132).length + 36 <= calldata.size
    if not stor27[msg.sender]:
        revert with 0, 'Auditor Address not whitelisted'
    stor28 = cd[4]
    uint8(stor29.field_0) = uint8(bool(cd[36]))
    Mask(248, 0, stor29.field_8) = Mask(248, 0, bool(cd[68]))
    Mask(240, 0, stor29.field_16) = Mask(240, 16, bool(cd[36])) >> 16
    stor30.length = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        stor30[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while stor30.length + 31 / 32 > idx:
        stor30[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor31.length = (2 * ('cd', 132).length) + 1
    s = 0
    idx = cd[132] + 36
    while cd[132] + ('cd', 132).length + 36 > idx:
        stor31[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 132).length + 31) >> 5
    while stor31.length + 31 / 32 > idx:
        stor31[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function claimTokens() {
    if not stor5[msg.sender]:
        revert with 0, 'Address not whitelisted'
    if presaleCancelled:
        revert with 0, 'Cancelled'
    if not investments[msg.sender]:
        revert with 0, 'Not an investor'
    if block.timestamp < cakeLiquidityAddingTime:
        revert with 0, 'Listing not started'
    if block.timestamp >= cakeLiquidityAddingTime + sub_b13aaebd:
        revert with 0, 'Listing not started'
    if 1 <= claimed[msg.sender]:
        revert with 0, 'Already claimed or refunded'
    if not claimAllowed:
        revert with 0, 'Claim is disallowed'
    if claimed[msg.sender] + 1 < claimed[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    claimed[msg.sender]++
    if not investments[msg.sender]:
        if not tokenPriceInWei:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / tokenPriceInWei
    else:
        if 10^18 * investments[msg.sender] / investments[msg.sender] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not tokenPriceInWei:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 10^18 * investments[msg.sender] / tokenPriceInWei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7f0feacc(?) {
    mem[96] = stor30.length
    mem[128] = uint256(stor30.field_0)
    idx = 128
    s = 0
    while stor30.length + 96 > idx:
        mem[idx + 32] = stor30[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor30.length) + ceil32(stor31.length) + 160
    mem[ceil32(stor30.length) + 128] = stor31.length
    mem[0] = 31
    mem[ceil32(stor30.length) + 160] = uint256(stor31.field_0)
    idx = ceil32(stor30.length) + 160
    s = 0
    while ceil32(stor30.length) + stor31.length + 128 > idx:
        mem[idx + 32] = stor31[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor30.length) + ceil32(stor31.length) + 160] = stor28
    mem[ceil32(stor30.length) + ceil32(stor31.length) + 192] = bool(uint8(stor29.field_0))
    mem[ceil32(stor30.length) + ceil32(stor31.length) + 224] = bool(uint8(stor29.field_8))
    mem[ceil32(stor30.length) + ceil32(stor31.length) + 256] = 160
    mem[ceil32(stor30.length) + ceil32(stor31.length) + 320] = stor30.length
    mem[ceil32(stor30.length) + ceil32(stor31.length) + 352 len ceil32(stor30.length)] = mem[128 len ceil32(stor30.length)]
    mem[ceil32(stor30.length) + ceil32(stor31.length) + 288] = stor30.length + 192
    mem[stor30.length + ceil32(stor30.length) + ceil32(stor31.length) + 352] = stor31.length
    mem[stor30.length + ceil32(stor30.length) + ceil32(stor31.length) + 384 len ceil32(stor31.length)] = mem[ceil32(stor30.length) + 160 len ceil32(stor31.length)]
    if not stor31.length % 32:
        return stor28, 
               bool(uint8(stor29.field_0)),
               bool(uint8(stor29.field_8)),
               Array(len=stor30.length, data=mem[128 len ceil32(stor30.length)], mem[(2 * ceil32(stor30.length)) + ceil32(stor31.length) + 352 len stor31.length + stor30.length + -ceil32(stor30.length) + 32]),
               stor30.length + 192
    mem[floor32(stor31.length) + stor30.length + ceil32(stor30.length) + ceil32(stor31.length) + 384] = mem[floor32(stor31.length) + stor30.length + ceil32(stor30.length) + ceil32(stor31.length) + -stor31.length % 32 + 416 len stor31.length % 32]
    return stor28, 
           bool(uint8(stor29.field_0)),
           bool(uint8(stor29.field_8)),
           Array(len=stor30.length, data=mem[128 len ceil32(stor30.length)], mem[(2 * ceil32(stor30.length)) + ceil32(stor31.length) + 352 len floor32(stor31.length) + stor30.length + -ceil32(stor30.length) + 64]),
           stor30.length + 192
}

function transferUnsoldTokens() {
    require msg.sender == sub_ceec262fAddress
    if presaleCancelled:
        revert with 0, 'Cancelled'
    if not totalCollectedWei:
        if not tokenPriceInWei:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / tokenPriceInWei > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - (0 / tokenPriceInWei):
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args unsoldTokensDumpAddress, ext_call.return_data[0] - (0 / tokenPriceInWei)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if 10^18 * totalCollectedWei / totalCollectedWei != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not tokenPriceInWei:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^18 * totalCollectedWei / tokenPriceInWei > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - (10^18 * totalCollectedWei / tokenPriceInWei):
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args unsoldTokensDumpAddress, ext_call.return_data[0] - (10^18 * totalCollectedWei / tokenPriceInWei)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function invest() payable {
    if not stor5[msg.sender]:
        revert with 0, 'Address not whitelisted'
    if presaleCancelled:
        revert with 0, 'Cancelled'
    if block.timestamp < openTime:
        revert with 0, 'Not yet opened'
    if block.timestamp >= closeTime:
        revert with 0, 'Closed'
    if totalCollectedWei >= hardCapInWei:
        revert with 0, 'Hard cap reached'
    require tokensLeft > 0
    if not tokensLeft:
        require msg.value <= 0
    else:
        if tokenPriceInWei * tokensLeft / tokensLeft != tokenPriceInWei:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require msg.value <= tokenPriceInWei * tokensLeft
    if msg.value + investments[msg.sender] < investments[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + investments[msg.sender] >= minInvestInWei:
        if maxInvestInWei:
            if msg.value + investments[msg.sender] > maxInvestInWei:
                revert with 0, 'Max investment reached'
        if not investments[msg.sender]:
            if totalInvestorsCount + 1 < totalInvestorsCount:
                revert with 0, 'SafeMath: addition overflow'
            totalInvestorsCount++
        if msg.value + totalCollectedWei < totalCollectedWei:
            revert with 0, 'SafeMath: addition overflow'
        totalCollectedWei += msg.value
        investments[msg.sender] += msg.value
        if not msg.value:
            if not tokenPriceInWei:
                revert with 0, 'SafeMath: division by zero'
            if 0 / tokenPriceInWei > tokensLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            tokensLeft -= 0 / tokenPriceInWei
        else:
            if 10^18 * msg.value / msg.value != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not tokenPriceInWei:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * msg.value / tokenPriceInWei > tokensLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            tokensLeft -= 10^18 * msg.value / tokenPriceInWei
    else:
        if 10^18 > hardCapInWei:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalCollectedWei < hardCapInWei - 10^18:
            revert with 0, 'Min investment not reached'
        if maxInvestInWei:
            if msg.value + investments[msg.sender] > maxInvestInWei:
                revert with 0, 'Max investment reached'
        if not investments[msg.sender]:
            if totalInvestorsCount + 1 < totalInvestorsCount:
                revert with 0, 'SafeMath: addition overflow'
            totalInvestorsCount++
        if msg.value + totalCollectedWei < totalCollectedWei:
            revert with 0, 'SafeMath: addition overflow'
        totalCollectedWei += msg.value
        investments[msg.sender] += msg.value
        if not msg.value:
            if not tokenPriceInWei:
                revert with 0, 'SafeMath: division by zero'
            if 0 / tokenPriceInWei > tokensLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            tokensLeft -= 0 / tokenPriceInWei
        else:
            if 10^18 * msg.value / msg.value != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not tokenPriceInWei:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * msg.value / tokenPriceInWei > tokensLeft:
                revert with 0, 'SafeMath: subtraction overflow'
            tokensLeft -= 10^18 * msg.value / tokenPriceInWei
}



}
