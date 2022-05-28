contract main {




// =====================  Runtime code  =====================


address govAddr;
address treasuryAddr;
uint256 treasuryAmtTotal;
uint8 sub_83670971;
mapping of uint256 tokenStatus;
array of struct sub_fa3e1d8b;

function tokenStatus(address arg1) {
    require calldata.size - 4 >= 32
    return tokenStatus[arg1]
}

function getVaultStatForUser(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 < sub_fa3e1d8b.length
    return stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0, 
           stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(arg2)].field_0
}

function treasuryAddr() {
    return treasuryAddr
}

function sub_83670971(?) {
    return sub_83670971
}

function vaultCount() {
    return sub_fa3e1d8b.length
}

function govAddr() {
    return govAddr
}

function sub_fa3e1d8b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa3e1d8b.length
    return sub_fa3e1d8b[arg1].field_0, 
           sub_fa3e1d8b[arg1].field_0,
           sub_fa3e1d8b[arg1].field_256,
           sub_fa3e1d8b[arg1].field_256,
           sub_fa3e1d8b[arg1].field_408,
           sub_fa3e1d8b[arg1].field_256,
           sub_fa3e1d8b[arg1].field_768,
           sub_fa3e1d8b[arg1].field_1280,
           sub_fa3e1d8b[arg1].field_1536
}

function treasuryAmtTotal() {
    return treasuryAmtTotal
}

function _fallback() payable {
    revert
}

function sub_41039de7(?) {
    require calldata.size - 4 >= 32
    if govAddr != msg.sender:
        revert with 0, '!gov'
    sub_83670971 = arg1
}

function sub_187c7fc4(?) {
    require calldata.size - 4 >= 64
    if govAddr != msg.sender:
        revert with 0, '!gov'
    tokenStatus[address(arg1)] = arg2
}

function sub_4e54ed2f(?) {
    require calldata.size - 4 >= 64
    if govAddr != msg.sender:
        revert with 0, '!gov'
    require arg1 < sub_fa3e1d8b.length
    sub_fa3e1d8b[arg1].field_416 = arg2
}

function sub_c8037c1c(?) {
    require calldata.size - 4 >= 64
    if govAddr != msg.sender:
        revert with 0, '!gov'
    require arg1 < sub_fa3e1d8b.length
    sub_fa3e1d8b[arg1].field_408 = arg2
}

function govTransferAddr(address arg1) {
    require calldata.size - 4 >= 32
    if govAddr != msg.sender:
        revert with 0, '!gov'
    if not arg1:
        revert with 0, '!addr'
    govAddr = arg1
}

function govSetTreasury(address arg1) {
    require calldata.size - 4 >= 32
    if govAddr != msg.sender:
        revert with 0, '!gov'
    if not arg1:
        revert with 0, '!addr'
    treasuryAddr = arg1
}

function treasurySend(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > treasuryAmtTotal:
        revert with 0, '!!sub'
    treasuryAmtTotal -= arg1
    call treasuryAddr with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getVaultPriceScaled(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        return sub_fa3e1d8b[arg1].field_256
    require ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
    return (10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_0 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18)
}

function createVault(address arg1, uint32 arg2, uint128 arg3, uint24 arg4) {
    require calldata.size - 4 >= 128
    if not arg1:
        revert with 0, '!token'
    if tokenStatus[address(arg1)] >= 0x9f4f2726179a224501d762422c946590d91000000000000000:
        revert with 0, '!tokenBanned'
    if arg2 <= block.timestamp:
        revert with 0, '!tEnd'
    if arg3 <= 0:
        revert with 0, '!priceEndScaled'
    if arg4 % 16777216 <= 0:
        revert with 0, '!apyBP'
    sub_fa3e1d8b.length++
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_0 = arg1
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_160 = arg2
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_256 = arg3
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_384 = arg4 % 16777216
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_256 = sub_83670971
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_408 = 0
    if msg.sender == govAddr:
        sub_fa3e1d8b[sub_fa3e1d8b.length].field_416 = 100
    else:
        sub_fa3e1d8b[sub_fa3e1d8b.length].field_416 = 0
        sub_fa3e1d8b[sub_fa3e1d8b.length].field_512 = 0
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_768 = 0
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_1280 = 0
    sub_fa3e1d8b[sub_fa3e1d8b.length].field_1536 = 0
    emit CREATE_VAULT(arg2 << 224, arg3 << 128, arg4 % 16777216, arg1, sub_fa3e1d8b.length - 1, msg.sender);
}

function getVaultValueInEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        if not sub_fa3e1d8b[arg1].field_1280:
            if sub_fa3e1d8b[arg1].field_1536 < sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!!add'
            return sub_fa3e1d8b[arg1].field_1536
        require sub_fa3e1d8b[arg1].field_1280
        if sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / sub_fa3e1d8b[arg1].field_1280 != sub_fa3e1d8b[arg1].field_256:
            revert with 0, '!!mul'
        if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18) < sub_fa3e1d8b[arg1].field_1536:
            revert with 0, '!!add'
        return (sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18))
    require ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
    if not sub_fa3e1d8b[arg1].field_1280:
        if sub_fa3e1d8b[arg1].field_1536 < sub_fa3e1d8b[arg1].field_1536:
            revert with 0, '!!add'
        return sub_fa3e1d8b[arg1].field_1536
    require sub_fa3e1d8b[arg1].field_1280
    if sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / sub_fa3e1d8b[arg1].field_1280 != 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18:
        revert with 0, '!!mul'
    if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) < sub_fa3e1d8b[arg1].field_1536:
        revert with 0, '!!add'
    return (sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_0 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18))
}

function sub_c0ae51e0(?) {
    require calldata.size - 4 >= 64
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp <= sub_fa3e1d8b[arg1].field_160:
        revert with 0, '!vaultStillOpen'
    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 <= 0:
        revert with 0, '!userShareAmt'
    if not sub_fa3e1d8b[arg1].field_1536:
        if sub_fa3e1d8b[arg1].field_768 <= 0:
            revert with 0, '!!div'
        require sub_fa3e1d8b[arg1].field_768
        if not sub_fa3e1d8b[arg1].field_1280:
            if sub_fa3e1d8b[arg1].field_768 <= 0:
                revert with 0, '!!div'
            require sub_fa3e1d8b[arg1].field_768
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0:
                revert with 0, '!notEnoughShare'
            stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 = 0
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > sub_fa3e1d8b[arg1].field_768:
                revert with 0, '!notEnoughShare'
            sub_fa3e1d8b[arg1].field_768 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0
            if 0 / sub_fa3e1d8b[arg1].field_768 > 0:
                if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!!sub'
                sub_fa3e1d8b[arg1].field_1280 -= 0 / sub_fa3e1d8b[arg1].field_768
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0 / sub_fa3e1d8b[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / sub_fa3e1d8b[arg1].field_768 > 0:
                    if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!notEnoughEthInVault'
                    sub_fa3e1d8b[arg1].field_1536 -= 0 / sub_fa3e1d8b[arg1].field_768
                    call arg2 with:
                       value 0 / sub_fa3e1d8b[arg1].field_768 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_fa3e1d8b[arg1].field_1280
            if sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_1280 != stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0:
                revert with 0, '!!mul'
            if sub_fa3e1d8b[arg1].field_768 <= 0:
                revert with 0, '!!div'
            require sub_fa3e1d8b[arg1].field_768
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0:
                revert with 0, '!notEnoughShare'
            stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 = 0
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > sub_fa3e1d8b[arg1].field_768:
                revert with 0, '!notEnoughShare'
            sub_fa3e1d8b[arg1].field_768 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0
            if sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768 > 0:
                if sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!!sub'
                sub_fa3e1d8b[arg1].field_1280 -= sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            if 0 / sub_fa3e1d8b[arg1].field_768 > 0:
                if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= 0 / sub_fa3e1d8b[arg1].field_768
                call arg2 with:
                   value 0 / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require sub_fa3e1d8b[arg1].field_1536
        if sub_fa3e1d8b[arg1].field_1536 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_1536 != stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0:
            revert with 0, '!!mul'
        if sub_fa3e1d8b[arg1].field_768 <= 0:
            revert with 0, '!!div'
        require sub_fa3e1d8b[arg1].field_768
        if not sub_fa3e1d8b[arg1].field_1280:
            if sub_fa3e1d8b[arg1].field_768 <= 0:
                revert with 0, '!!div'
            require sub_fa3e1d8b[arg1].field_768
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0:
                revert with 0, '!notEnoughShare'
            stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 = 0
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > sub_fa3e1d8b[arg1].field_768:
                revert with 0, '!notEnoughShare'
            sub_fa3e1d8b[arg1].field_768 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0
            if 0 / sub_fa3e1d8b[arg1].field_768 > 0:
                if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!!sub'
                sub_fa3e1d8b[arg1].field_1280 -= 0 / sub_fa3e1d8b[arg1].field_768
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0 / sub_fa3e1d8b[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require sub_fa3e1d8b[arg1].field_1280
            if sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_1280 != stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0:
                revert with 0, '!!mul'
            if sub_fa3e1d8b[arg1].field_768 <= 0:
                revert with 0, '!!div'
            require sub_fa3e1d8b[arg1].field_768
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0:
                revert with 0, '!notEnoughShare'
            stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 = 0
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 > sub_fa3e1d8b[arg1].field_768:
                revert with 0, '!notEnoughShare'
            sub_fa3e1d8b[arg1].field_768 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0
            if sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768 > 0:
                if sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!!sub'
                sub_fa3e1d8b[arg1].field_1280 -= sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), sub_fa3e1d8b[arg1].field_1280 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if sub_fa3e1d8b[arg1].field_1536 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768 > 0:
            if sub_fa3e1d8b[arg1].field_1536 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!notEnoughEthInVault'
            sub_fa3e1d8b[arg1].field_1536 -= sub_fa3e1d8b[arg1].field_1536 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768
            call arg2 with:
               value sub_fa3e1d8b[arg1].field_1536 * stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0 / sub_fa3e1d8b[arg1].field_768 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit EXIT_SHARE(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(arg2)].field_0, arg1, arg2);
}

function unlockEth(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        revert with 0, '!vaultEnded'
    if arg2 <= 0:
        revert with 0, '!shareBurnAmt'
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        if not sub_fa3e1d8b[arg1].field_1280:
            if sub_fa3e1d8b[arg1].field_1536 < sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!!add'
            if not arg2:
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= 0 / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value 0 / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH(0 / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
            else:
                require arg2
                if arg2 * sub_fa3e1d8b[arg1].field_1536 / arg2 != sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!mul'
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH(arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
        else:
            require sub_fa3e1d8b[arg1].field_1280
            if sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / sub_fa3e1d8b[arg1].field_1280 != sub_fa3e1d8b[arg1].field_256:
                revert with 0, '!!mul'
            if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18) < sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!!add'
            if not arg2:
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= 0 / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value 0 / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH(0 / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
            else:
                require arg2
                if (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18 * arg2) / arg2 != sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18):
                    revert with 0, '!!mul'
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH((sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
    else:
        require ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
        if not sub_fa3e1d8b[arg1].field_1280:
            if sub_fa3e1d8b[arg1].field_1536 < sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!!add'
            if not arg2:
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= 0 / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value 0 / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH(0 / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
            else:
                require arg2
                if arg2 * sub_fa3e1d8b[arg1].field_1536 / arg2 != sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!mul'
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH(arg2 * sub_fa3e1d8b[arg1].field_1536 / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
        else:
            require sub_fa3e1d8b[arg1].field_1280
            if sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / sub_fa3e1d8b[arg1].field_1280 != 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18:
                revert with 0, '!!mul'
            if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) < sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!!add'
            if not arg2:
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if 0 / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= 0 / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value 0 / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH(0 / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
            else:
                require arg2
                if (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * arg2) / arg2 != sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18):
                    revert with 0, '!!mul'
                if sub_fa3e1d8b[arg1].field_768 <= 0:
                    revert with 0, '!!div'
                require sub_fa3e1d8b[arg1].field_768
                if arg2 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughShare'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 -= arg2
                if arg2 > sub_fa3e1d8b[arg1].field_768:
                    revert with 0, '!notEnoughShare'
                sub_fa3e1d8b[arg1].field_768 -= arg2
                if (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768
                call msg.sender with:
                   value (sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UNLOCK_ETH((sub_fa3e1d8b[arg1].field_1536 * arg2) + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * arg2) / sub_fa3e1d8b[arg1].field_768, arg2, arg1, msg.sender);
}

function lockEth(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        revert with 0, '!vaultEnded'
    if msg.value <= 0:
        revert with 0, '!ethInAmt'
    if not sub_fa3e1d8b[arg1].field_768:
        if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
            revert with 0, '!!add'
        sub_fa3e1d8b[arg1].field_1536 += msg.value
        if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + msg.value < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
            revert with 0, '!!add'
        stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += msg.value
        if sub_fa3e1d8b[arg1].field_768 + msg.value < sub_fa3e1d8b[arg1].field_768:
            revert with 0, '!!add'
        sub_fa3e1d8b[arg1].field_768 += msg.value
        emit LOCK_ETH(msg.value, msg.value, arg1, msg.sender);
    else:
        require arg1 < sub_fa3e1d8b.length
        if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
            if not sub_fa3e1d8b[arg1].field_1280:
                if sub_fa3e1d8b[arg1].field_1536 < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                if not msg.value:
                    if sub_fa3e1d8b[arg1].field_1536 <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (0 / sub_fa3e1d8b[arg1].field_1536) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += 0 / sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_768 + (0 / sub_fa3e1d8b[arg1].field_1536) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += 0 / sub_fa3e1d8b[arg1].field_1536
                    emit LOCK_ETH(msg.value, 0 / sub_fa3e1d8b[arg1].field_1536, arg1, msg.sender);
                else:
                    require msg.value
                    if msg.value * sub_fa3e1d8b[arg1].field_768 / msg.value != sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!mul'
                    if sub_fa3e1d8b[arg1].field_1536 <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_768 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536
                    emit LOCK_ETH(msg.value, msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536, arg1, msg.sender);
            else:
                require sub_fa3e1d8b[arg1].field_1280
                if sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / sub_fa3e1d8b[arg1].field_1280 != sub_fa3e1d8b[arg1].field_256:
                    revert with 0, '!!mul'
                if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18) < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                if not msg.value:
                    if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18) <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += 0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                    if sub_fa3e1d8b[arg1].field_768 + (0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += 0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                    emit LOCK_ETH(msg.value, 0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18), arg1, msg.sender);
                else:
                    require msg.value
                    if msg.value * sub_fa3e1d8b[arg1].field_768 / msg.value != sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!mul'
                    if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18) <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                    if sub_fa3e1d8b[arg1].field_768 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                    emit LOCK_ETH(msg.value, msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * sub_fa3e1d8b[arg1].field_256 / 10^18), arg1, msg.sender);
        else:
            require ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
            if not sub_fa3e1d8b[arg1].field_1280:
                if sub_fa3e1d8b[arg1].field_1536 < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                if not msg.value:
                    if sub_fa3e1d8b[arg1].field_1536 <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (0 / sub_fa3e1d8b[arg1].field_1536) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += 0 / sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_768 + (0 / sub_fa3e1d8b[arg1].field_1536) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += 0 / sub_fa3e1d8b[arg1].field_1536
                    emit LOCK_ETH(msg.value, 0 / sub_fa3e1d8b[arg1].field_1536, arg1, msg.sender);
                else:
                    require msg.value
                    if msg.value * sub_fa3e1d8b[arg1].field_768 / msg.value != sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!mul'
                    if sub_fa3e1d8b[arg1].field_1536 <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536
                    if sub_fa3e1d8b[arg1].field_768 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536
                    emit LOCK_ETH(msg.value, msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536, arg1, msg.sender);
            else:
                require sub_fa3e1d8b[arg1].field_1280
                if sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / sub_fa3e1d8b[arg1].field_1280 != 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18:
                    revert with 0, '!!mul'
                if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                if not msg.value:
                    if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += 0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                    if sub_fa3e1d8b[arg1].field_768 + (0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += 0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                    emit LOCK_ETH(msg.value, 0 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18), arg1, msg.sender);
                else:
                    require msg.value
                    if msg.value * sub_fa3e1d8b[arg1].field_768 / msg.value != sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!mul'
                    if sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) <= 0:
                        revert with 0, '!!div'
                    require sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)) < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 2][address(msg.sender)].field_0 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                    if sub_fa3e1d8b[arg1].field_768 + (msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)) < sub_fa3e1d8b[arg1].field_768:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_768 += msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                    emit LOCK_ETH(msg.value, msg.value * sub_fa3e1d8b[arg1].field_768 / sub_fa3e1d8b[arg1].field_1536 + (sub_fa3e1d8b[arg1].field_1280 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18), arg1, msg.sender);
}

function lockToken(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        revert with 0, '!vaultEnded'
    if sub_fa3e1d8b[arg1].field_416 >= 200:
        revert with 0, '!vaultBanned'
    if tokenStatus[stor5[arg1].field_0] >= 0x9f4f2726179a224501d762422c946590d91000000000000000:
        revert with 0, '!tokenBanned'
    if arg2 <= 0:
        revert with 0, '!tokenInAmt'
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        if not arg2:
            if sub_fa3e1d8b[arg1].field_408 > 0:
                if treasuryAmtTotal < treasuryAmtTotal:
                    revert with 0, '!!add'
                if 0 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!ethInVault'
            require ext_code.size(sub_fa3e1d8b[arg1].field_0)
            call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                revert with 0, '!!add'
            stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
            if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                revert with 0, '!!add'
            sub_fa3e1d8b[arg1].field_1280 += arg2
            if 0 > sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!notEnoughEthInVault'
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LOCK_TOKEN(arg2, 0, arg1, msg.sender);
        else:
            require arg2
            if arg2 * sub_fa3e1d8b[arg1].field_256 / arg2 != sub_fa3e1d8b[arg1].field_256:
                revert with 0, '!!mul'
            if sub_fa3e1d8b[arg1].field_408 <= 0:
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    revert with 0, '!!add'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
                if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!!add'
                sub_fa3e1d8b[arg1].field_1280 += arg2
                if arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18
                call msg.sender with:
                   value arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit LOCK_TOKEN(arg2, arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18, arg1, msg.sender);
            else:
                if not arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18:
                    if treasuryAmtTotal < treasuryAmtTotal:
                        revert with 0, '!!add'
                    if 0 > arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18:
                        revert with 0, '!!sub'
                    if 0 > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!ethInVault'
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
                    if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1280 += arg2
                    if arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!notEnoughEthInVault'
                    sub_fa3e1d8b[arg1].field_1536 -= arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18
                    call msg.sender with:
                       value arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit LOCK_TOKEN(arg2, arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18, arg1, msg.sender);
                else:
                    require arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18
                    if arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 != sub_fa3e1d8b[arg1].field_408:
                        revert with 0, '!!mul'
                    if treasuryAmtTotal + (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000) < treasuryAmtTotal:
                        revert with 0, '!!add'
                    treasuryAmtTotal += arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000
                    if arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000 > arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18:
                        revert with 0, '!!sub'
                    if arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000 > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!ethInVault'
                    sub_fa3e1d8b[arg1].field_1536 -= arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
                    if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1280 += arg2
                    if (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18) - (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000) > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!notEnoughEthInVault'
                    sub_fa3e1d8b[arg1].field_1536 = sub_fa3e1d8b[arg1].field_1536 - (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18) + (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000)
                    call msg.sender with:
                       value (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18) - (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit LOCK_TOKEN(arg2, (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18) - (arg2 * sub_fa3e1d8b[arg1].field_256 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000), arg1, msg.sender);
    else:
        require ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
        if not arg2:
            if sub_fa3e1d8b[arg1].field_408 > 0:
                if treasuryAmtTotal < treasuryAmtTotal:
                    revert with 0, '!!add'
                if 0 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!ethInVault'
            require ext_code.size(sub_fa3e1d8b[arg1].field_0)
            call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                revert with 0, '!!add'
            stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
            if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                revert with 0, '!!add'
            sub_fa3e1d8b[arg1].field_1280 += arg2
            if 0 > sub_fa3e1d8b[arg1].field_1536:
                revert with 0, '!notEnoughEthInVault'
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LOCK_TOKEN(arg2, 0, arg1, msg.sender);
        else:
            require arg2
            if arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / arg2 != 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18:
                revert with 0, '!!mul'
            if sub_fa3e1d8b[arg1].field_408 <= 0:
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    revert with 0, '!!add'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
                if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!!add'
                sub_fa3e1d8b[arg1].field_1280 += arg2
                if arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 > sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!notEnoughEthInVault'
                sub_fa3e1d8b[arg1].field_1536 -= arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18
                call msg.sender with:
                   value arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit LOCK_TOKEN(arg2, arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18, arg1, msg.sender);
            else:
                if not arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18:
                    if treasuryAmtTotal < treasuryAmtTotal:
                        revert with 0, '!!add'
                    if 0 > arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18:
                        revert with 0, '!!sub'
                    if 0 > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!ethInVault'
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
                    if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1280 += arg2
                    if arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!notEnoughEthInVault'
                    sub_fa3e1d8b[arg1].field_1536 -= arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18
                    call msg.sender with:
                       value arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit LOCK_TOKEN(arg2, arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18, arg1, msg.sender);
                else:
                    require arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18
                    if arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 != sub_fa3e1d8b[arg1].field_408:
                        revert with 0, '!!mul'
                    if treasuryAmtTotal + (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000) < treasuryAmtTotal:
                        revert with 0, '!!add'
                    treasuryAmtTotal += arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000
                    if arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000 > arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18:
                        revert with 0, '!!sub'
                    if arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000 > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!ethInVault'
                    sub_fa3e1d8b[arg1].field_1536 -= arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 + arg2 < stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!!add'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 += arg2
                    if sub_fa3e1d8b[arg1].field_1280 + arg2 < sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1280 += arg2
                    if (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) - (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000) > sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!notEnoughEthInVault'
                    sub_fa3e1d8b[arg1].field_1536 = sub_fa3e1d8b[arg1].field_1536 - (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) + (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000)
                    call msg.sender with:
                       value (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) - (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit LOCK_TOKEN(arg2, (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) - (arg2 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 * sub_fa3e1d8b[arg1].field_408 / 10000), arg1, msg.sender);
}

function unlockToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        revert with 0, '!vaultEnded'
    if msg.value <= 0:
        revert with 0, '!ethInAmt'
    require arg1 < sub_fa3e1d8b.length
    if block.timestamp >= sub_fa3e1d8b[arg1].field_160:
        if not msg.value:
            if sub_fa3e1d8b[arg1].field_256 <= 0:
                revert with 0, '!!div'
            require sub_fa3e1d8b[arg1].field_256
            if 0 / sub_fa3e1d8b[arg1].field_256 <= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                if 0 / sub_fa3e1d8b[arg1].field_256 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughTokenLocked'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 -= 0 / sub_fa3e1d8b[arg1].field_256
                if 0 / sub_fa3e1d8b[arg1].field_256 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!notEnoughTokenLocked'
                sub_fa3e1d8b[arg1].field_1280 -= 0 / sub_fa3e1d8b[arg1].field_256
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / sub_fa3e1d8b[arg1].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                sub_fa3e1d8b[arg1].field_1536 += msg.value
                if 0 > msg.value:
                    revert with 0, '!!sub'
                emit UNLOCK_TOKEN(0 / sub_fa3e1d8b[arg1].field_256, msg.value, arg1, msg.sender);
            else:
                if not stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    if 0 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value > 0:
                        if msg.value > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 -= msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, 0, arg1, msg.sender);
                else:
                    require stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 != sub_fa3e1d8b[arg1].field_256:
                        revert with 0, '!!mul'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) > 0:
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 = sub_fa3e1d8b[arg1].field_1536 - msg.value + (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                        call msg.sender with:
                           value msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18, arg1, msg.sender);
        else:
            require msg.value
            if 10^18 * msg.value / msg.value != 10^18:
                revert with 0, '!!mul'
            if sub_fa3e1d8b[arg1].field_256 <= 0:
                revert with 0, '!!div'
            require sub_fa3e1d8b[arg1].field_256
            if 10^18 * msg.value / sub_fa3e1d8b[arg1].field_256 <= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                if 10^18 * msg.value / sub_fa3e1d8b[arg1].field_256 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughTokenLocked'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 -= 10^18 * msg.value / sub_fa3e1d8b[arg1].field_256
                if 10^18 * msg.value / sub_fa3e1d8b[arg1].field_256 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!notEnoughTokenLocked'
                sub_fa3e1d8b[arg1].field_1280 -= 10^18 * msg.value / sub_fa3e1d8b[arg1].field_256
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * msg.value / sub_fa3e1d8b[arg1].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                sub_fa3e1d8b[arg1].field_1536 += msg.value
                if 0 > msg.value:
                    revert with 0, '!!sub'
                emit UNLOCK_TOKEN(10^18 * msg.value / sub_fa3e1d8b[arg1].field_256, msg.value, arg1, msg.sender);
            else:
                if not stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    if 0 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value > 0:
                        if msg.value > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 -= msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, 0, arg1, msg.sender);
                else:
                    require stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 != sub_fa3e1d8b[arg1].field_256:
                        revert with 0, '!!mul'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) > 0:
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 = sub_fa3e1d8b[arg1].field_1536 - msg.value + (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18)
                        call msg.sender with:
                           value msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18) > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * sub_fa3e1d8b[arg1].field_256 / 10^18, arg1, msg.sender);
    else:
        require ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
        if not msg.value:
            if 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 <= 0:
                revert with 0, '!!div'
            require 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
            if 0 / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 <= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                if 0 / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughTokenLocked'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 -= 0 / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18
                if 0 / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!notEnoughTokenLocked'
                sub_fa3e1d8b[arg1].field_1280 -= 0 / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                sub_fa3e1d8b[arg1].field_1536 += msg.value
                if 0 > msg.value:
                    revert with 0, '!!sub'
                emit UNLOCK_TOKEN(0 / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18, msg.value, arg1, msg.sender);
            else:
                if not stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    if 0 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value > 0:
                        if msg.value > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 -= msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, 0, arg1, msg.sender);
                else:
                    require stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 != 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18:
                        revert with 0, '!!mul'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) > 0:
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 = sub_fa3e1d8b[arg1].field_1536 - msg.value + (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                        call msg.sender with:
                           value msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18, arg1, msg.sender);
        else:
            require msg.value
            if 10^18 * msg.value / msg.value != 10^18:
                revert with 0, '!!mul'
            if 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18 <= 0:
                revert with 0, '!!div'
            require 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_256) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_256) / 8760 * 24 * 3600 / 10000) + 10^18
            if 10^18 * msg.value / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 <= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                if 10^18 * msg.value / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    revert with 0, '!notEnoughTokenLocked'
                stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 -= 10^18 * msg.value / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18
                if 10^18 * msg.value / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 > sub_fa3e1d8b[arg1].field_1280:
                    revert with 0, '!notEnoughTokenLocked'
                sub_fa3e1d8b[arg1].field_1280 -= 10^18 * msg.value / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18
                require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * msg.value / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                    revert with 0, '!!add'
                sub_fa3e1d8b[arg1].field_1536 += msg.value
                if 0 > msg.value:
                    revert with 0, '!!sub'
                emit UNLOCK_TOKEN(10^18 * msg.value / 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18, msg.value, arg1, msg.sender);
            else:
                if not stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                    if 0 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value > 0:
                        if msg.value > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 -= msg.value
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, 0, arg1, msg.sender);
                else:
                    require stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 != 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18:
                        revert with 0, '!!mul'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18 > msg.value:
                        revert with 0, '!!sub'
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0:
                        revert with 0, '!notEnoughTokenLocked'
                    stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 = 0
                    if stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 > sub_fa3e1d8b[arg1].field_1280:
                        revert with 0, '!notEnoughTokenLocked'
                    sub_fa3e1d8b[arg1].field_1280 -= stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    require ext_code.size(sub_fa3e1d8b[arg1].field_0)
                    call sub_fa3e1d8b[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_fa3e1d8b[arg1].field_1536 + msg.value < sub_fa3e1d8b[arg1].field_1536:
                        revert with 0, '!!add'
                    sub_fa3e1d8b[arg1].field_1536 += msg.value
                    if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) > 0:
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) > sub_fa3e1d8b[arg1].field_1536:
                            revert with 0, '!notEnoughEthInVault'
                        sub_fa3e1d8b[arg1].field_1536 = sub_fa3e1d8b[arg1].field_1536 - msg.value + (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18)
                        call msg.sender with:
                           value msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.value - (stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18) > msg.value:
                            revert with 0, '!!sub'
                    emit UNLOCK_TOKEN(stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0, stor[(7 * arg1) + ('name', 'sub_fa3e1d8b', 5) + 4][address(msg.sender)].field_0 * 10^18 * sub_fa3e1d8b[arg1].field_256 / ((10^18 * sub_fa3e1d8b[arg1].field_160 * sub_fa3e1d8b[arg1].field_384) - (10^18 * block.timestamp * sub_fa3e1d8b[arg1].field_384) / 8760 * 24 * 3600 / 10000) + 10^18 / 10^18, arg1, msg.sender);
}



}
