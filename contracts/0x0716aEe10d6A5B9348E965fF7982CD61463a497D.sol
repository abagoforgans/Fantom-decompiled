contract main {




// =====================  Runtime code  =====================


#
#  - createClaims(uint256 arg1, uint256 arg2)
#
const sub_5d2e0dd4(?) = 1


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 symbol;
array of uint256 name;
uint256 ethPrice;
uint256 minTime;
uint256 maxTime;
uint256 difficultyStep;
uint256 maxClaims;
mapping of uint8 tokenType;
mapping of uint256 tokenId;
array of uint256 allTokenHashes;
uint256 mintedCount;
uint256 claimedCount;
uint256 totalStakedEth;
mapping of uint256 claimUnlockTime;
mapping of address stakedToken;
mapping of uint256 claimAmount;
mapping of uint256 claimQuantity;
mapping of uint256 claimTokenAmount;
array of address allowedTokens;
mapping of uint8 stor20;
uint256 stor21;
array of struct stor22;
array of struct stor23;
mapping of uint8 stor24;
mapping of uint8 stor25;
address stor26;
address stor27;
uint8 visible; offset 160
uint128 stor28; offset 160
address stor28;
uint256 category;
array of address stor38878206584692966203415385907871375197469080758325516314230789535345649042549;
array of struct stor38878206584692966203415385907871375197469080758325516314230789535345649042550;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042551;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042552;
array of uint8 stor38878206584692966203415385907871375197469080758325516314230789535345649042553;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor24[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function minTime() {
    return minTime
}

function maxTime() {
    return maxTime
}

function claimAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return claimAmount[arg1]
}

function allowedTokensLength() {
    return allowedTokens.length
}

function totalStakedEth() {
    return totalStakedEth
}

function allowedTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allowedTokens.length
    return allowedTokens[arg1]
}

function tokenId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenId[arg1]
}

function claimQuantity(uint256 arg1) {
    require calldata.size - 4 >= 32
    return claimQuantity[arg1]
}

function claimTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return claimTokenAmount[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function nextClaimId() {
    return claimedCount
}

function claimUnlockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    return claimUnlockTime[arg1]
}

function visible() {
    return bool(visible)
}

function isController(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor25[address(arg1)])
}

function difficultyStep() {
    return difficultyStep
}

function claimedCount() {
    return claimedCount
}

function stakedToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return stakedToken[arg1]
}

function nextGemId() {
    return mintedCount
}

function maxClaims() {
    return maxClaims
}

function mintedCount() {
    return mintedCount
}

function allTokenHashes(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allTokenHashes.length
    return allTokenHashes[arg1]
}

function tokenType(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenType[arg1]
}

function category() {
    return category
}

function allTokenHashesLength() {
    return allTokenHashes.length
}

function isTokenAllowed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor20[address(arg1)])
}

function ethPrice() {
    return ethPrice
}

function _fallback() payable {
    revert
}

function sub_7ae7815d(?) {
    require calldata.size - 4 >= 32
}

function setSwapHelper(address arg1) {
    require calldata.size - 4 >= 32
}

function createClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
}

function createERC20Claim(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
}

function proxies(address arg1) {
    require calldata.size - 4 >= 32
    return this.address
}

function nextGemHash() {
    return sha3('gem', Mask(160, 96, this.address) >> 96, mintedCount)
}

function createERC20Claims(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
}

function setGovernor(address arg1) {
    require calldata.size - 4 >= 32
    stor25[msg.sender] = 1
    stor27 = arg1
}

function setMultiToken(address arg1) {
    require calldata.size - 4 >= 32
    stor25[msg.sender] = 1
    stor26 = arg1
}

function setCategory(uint256 arg1) {
    require calldata.size - 4 >= 32
    stor25[msg.sender] = 1
    category = arg1
}

function setFeeTracker(address arg1) {
    require calldata.size - 4 >= 32
    stor25[msg.sender] = 1
    address(stor28.field_0) = arg1
}

function sub_d43e6460(?) {
    require calldata.size - 4 >= 32
    stor25[msg.sender] = 1
    Mask(96, 0, stor28.field_160) = Mask(96, 0, arg1)
}

function addAllowedToken(address arg1) {
    require calldata.size - 4 >= 32
    if not stor20[address(arg1)]:
        allowedTokens.length++
        allowedTokens[allowedTokens.length] = arg1
        stor20[address(arg1)] = 1
}

function nextClaimHash() {
    if maxClaims != 0:
        if claimedCount <= maxClaims:
            return sha3('claim', Mask(160, 96, this.address) >> 96, claimedCount)
    if not maxClaims:
        return sha3('claim', Mask(160, 96, this.address) >> 96, claimedCount)
    else:
        return 0
}

function relinquishControl() {
    if bool(stor25[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x77436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    if bool(stor25[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x77436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor25[address(arg1)] = 1
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function removeAllowedToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor20[address(arg1)]:
        idx = 0
        while idx < allowedTokens.length:
            mem[0] = 19
            if allowedTokens[idx] != arg1:
                idx = idx + 1
                continue 
            require allowedTokens.length - 1 < allowedTokens.length
            require idx < allowedTokens.length
            allowedTokens[idx] = allowedTokens[allowedTokens.length]
            require allowedTokens.length - 1 < allowedTokens.length
            allowedTokens[allowedTokens.length] = 0
            stor20[address(arg1)] = 0
}

function rescue(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    stor25[msg.sender] = 1
    if not arg1:
        call address(stor28.field_0) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(stor28.field_0), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
           mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
}

function sub_6ba0f5c4(?) {
    require calldata.size - 4 >= 192
    if not arg1:
        revert with 0, 'INVALID_TOKEN'
    if 1 == arg3:
        if 3 == arg3:
            if not arg2:
                if 3 == arg3:
                    revert with 0, 'INVALID_POOL'
    else:
        if 2 == arg3:
            if 3 == arg3:
                if not arg2:
                    if 3 == arg3:
                        revert with 0, 'INVALID_POOL'
        else:
            if arg3 != 3:
                revert with 0, 'INVALID_TOKENTYPE'
            if not arg2:
                if 3 == arg3:
                    revert with 0, 'INVALID_POOL'
    if arg3 != 1:
        if arg3 != 2:
            if arg3 != 3:
                revert with 0, 'INVALID_TOKENID'
            if arg4:
                revert with 0, 'INVALID_TOKENID'
    else:
        if arg4:
            if arg3 != 2:
                if arg3 != 3:
                    revert with 0, 'INVALID_TOKENID'
                if arg4:
                    revert with 0, 'INVALID_TOKENID'
    if not arg5:
        revert with 0, 'ZERO_AMOUNT'
    stor21++
    stor55F4[stor21] = arg1
    stor55F4[stor21].field_0 = arg2
    stor55F4[stor21].field_160 = arg3
    stor55F4[stor21] = arg4
    stor55F4[stor21] = arg5
    stor55F4[stor21] = uint8(arg6)
}

function sub_d9a3f9bb(?) {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    symbol[] = Array(len=arg1.length, data=arg1[all])
    name[] = Array(len=arg2.length, data=arg2[all])
    ethPrice = arg3
    minTime = arg4
    maxTime = arg5
    difficultyStep = arg6
    maxClaims = arg7
    visible = 1
    if arg8:
        allowedTokens.length++
        allowedTokens[allowedTokens.length] = arg8
        stor20[address(arg8)] = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function mintGenesisGems(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor26:
        revert with 0, 'NO_MULTITOKEN'
    if not arg1:
        revert with 0, 'ZERO_DESTINATION'
    if not arg2:
        revert with 0, 'ZERO_DESTINATION'
    if mintedCount:
        revert with 0, 'ALREADY_MINTED'
    require ext_code.size(stor26)
    call stor26.mint(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), sha3('gem', Mask(160, 96, this.address) >> 96, mintedCount), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    allTokenHashes.length++
    allTokenHashes[allTokenHashes.length] = sha3('gem', Mask(160, 96, this.address) >> 96, mintedCount)
    tokenType['gem'][Mask(160, 96, this.address) >> 96][stor11] = 2
    if mintedCount + 1 < mintedCount:
        revert with 0, 'SafeMath: addition overflow'
    mintedCount++
    tokenId['gem'][Mask(160, 96, this.address) >> 96][stor11] = mintedCount
    if difficultyStep <= 0:
        revert with 0, 'SafeMath: division by zero'
    require difficultyStep
    if (ethPrice / difficultyStep) + ethPrice < ethPrice:
        revert with 0, 'SafeMath: addition overflow'
    ethPrice += ethPrice / difficultyStep
    require ext_code.size(stor26)
    call stor26.mint(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), sha3('gem', Mask(160, 96, this.address) >> 96, mintedCount), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    allTokenHashes.length++
    allTokenHashes[allTokenHashes.length] = sha3('gem', Mask(160, 96, this.address) >> 96, mintedCount)
    tokenType['gem'][Mask(160, 96, this.address) >> 96][stor11] = 2
    if mintedCount + 1 < mintedCount:
        revert with 0, 'SafeMath: addition overflow'
    mintedCount++
    tokenId['gem'][Mask(160, 96, this.address) >> 96][stor11] = mintedCount
    if difficultyStep <= 0:
        revert with 0, 'SafeMath: division by zero'
    require difficultyStep
    if (ethPrice / difficultyStep) + ethPrice < ethPrice:
        revert with 0, 'SafeMath: addition overflow'
    ethPrice += ethPrice / difficultyStep
}

function collectClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor26)
    staticcall stor26.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'NOT_CLAIM_OWNER'
    if not claimUnlockTime[arg1]:
        revert with 0, 'INVALID_CLAIM'
    if claimAmount[arg1] <= 0:
        revert with 0, 'INVALID_CLAIM'
    require ext_code.size(stor26)
    call stor26.burn(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if claimUnlockTime[arg1] < block.timestamp != 1:
        call address(stor28.field_0) with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 > claimAmount[arg1]:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value claimAmount[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit NFTGemClaimRedeemed(msg.sender, this.address, arg1, claimAmount[arg1], 0);
    else:
        require ext_code.size(address(stor28.field_0))
        staticcall address(stor28.field_0).feeDivisor(address rg1) with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        call address(stor28.field_0) with:
           value claimAmount[arg1] / ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if claimAmount[arg1] / ext_call.return_data[0] > claimAmount[arg1]:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value claimAmount[arg1] - (claimAmount[arg1] / ext_call.return_data[0]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit NFTGemClaimRedeemed(msg.sender, this.address, arg1, claimAmount[arg1], claimAmount[arg1] / ext_call.return_data[0]);
    if claimAmount[arg1] > totalStakedEth:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStakedEth -= claimAmount[arg1]
    if stor22[arg1].field_0:
        if not stor22[arg1].field_0:
            if not stor23[arg1].field_0:
                require ext_code.size(stor26)
                call stor26.safeBatchTransferFrom(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args 0, uint32(this.address), msg.sender, 160, 192, 224, stor22[arg1].field_0, stor23[arg1].field_0, 0, mem[356]
            else:
                mem[324] = stor23[arg1].field_0
                idx = 324
                s = 0
                while (32 * stor23[arg1].field_0) + 324 > idx + 32:
                    mem[idx + 32] = stor23[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * stor23[arg1].field_0) + 324] = 0
                require ext_code.size(stor26)
                call stor26.safeBatchTransferFrom(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args 0, uint32(this.address), msg.sender, 160, 192, (32 * stor23[arg1].field_0) + 224, stor22[arg1].field_0, stor23[arg1].field_0, mem[324 len (32 * stor23[arg1].field_0) + 64]
        else:
            mem[292] = stor22[arg1].field_0
            idx = 292
            s = 0
            while (32 * stor22[arg1].field_0) + 292 > idx + 32:
                mem[idx + 32] = stor22[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor22[arg1].field_0) + 292] = stor23[arg1].field_0
            if not stor23[arg1].field_0:
                require ext_code.size(stor26)
                call stor26.safeBatchTransferFrom(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args 0, uint32(this.address), msg.sender, 160, (32 * stor22[arg1].field_0) + 192, (32 * stor22[arg1].field_0) + 224, stor22[arg1].field_0, mem[292 len (32 * stor22[arg1].field_0) + 32], 0, mem[(32 * stor22[arg1].field_0) + 356]
            else:
                mem[(32 * stor22[arg1].field_0) + 324] = stor23[arg1].field_0
                idx = (32 * stor22[arg1].field_0) + 324
                s = 0
                while (32 * stor22[arg1].field_0) + (32 * stor23[arg1].field_0) + 324 > idx + 32:
                    mem[idx + 32] = stor23[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(stor26)
                call stor26.safeBatchTransferFrom(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args 0, uint32(this.address), msg.sender, 160, (32 * stor22[arg1].field_0) + 192, (32 * stor22[arg1].field_0) + (32 * stor23[arg1].field_0) + 224, stor22[arg1].field_0, mem[292 len (32 * stor22[arg1].field_0) + (32 * stor23[arg1].field_0) + 32], 0, mem[(32 * stor22[arg1].field_0) + (32 * stor23[arg1].field_0) + 356]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor22[arg1].field_0 = 0
        idx = 0
        while stor22[arg1].field_0 > idx:
            stor22[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor23[arg1].field_0 = 0
        idx = 0
        while stor23[arg1].field_0 > idx:
            stor23[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    if claimUnlockTime[arg1] < block.timestamp:
        require ext_code.size(this.address)
        staticcall this.address.0xb788e4e9 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        call stor26.mint(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0], claimQuantity[arg1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        allTokenHashes.length++
        allTokenHashes[allTokenHashes.length] = ext_call.return_data[0]
        tokenType[ext_call.return_data[0]] = 2
        if mintedCount + 1 < mintedCount:
            revert with 0, 'SafeMath: addition overflow'
        mintedCount++
        tokenId[ext_call.return_data[0]] = mintedCount
        if difficultyStep <= 0:
            revert with 0, 'SafeMath: division by zero'
        require difficultyStep
        if (ethPrice / difficultyStep) + ethPrice < ethPrice:
            revert with 0, 'SafeMath: addition overflow'
        ethPrice += ethPrice / difficultyStep
        require ext_code.size(stor27)
        call stor27.'cK[}' with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor27)
        call stor27.0xea40a7a4 with:
             gas gas_remaining wei
            args msg.sender, claimAmount[arg1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit NFTGemCreated(msg.sender, this.address, arg1, ext_call.return_data[0], claimQuantity[arg1]);
}



}
