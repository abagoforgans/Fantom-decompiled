contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address tokenAddress;
address oracleAddress;
uint256 threshold;
uint256 stor5;
uint256 initialPrice;
uint256 tokenPriceUSD;
uint256 weiRaised;
uint256 sub_4101a840;
uint256 presaleStartsAt;
uint256 presaleEndsAt;
uint256 sub_54c21fb8;
mapping of uint256 sub_7d4833ad;
mapping of uint256 sub_6f71c5ea;

function initialPrice() {
    return uint256(initialPrice)
}

function presaleStartsAt() {
    return presaleStartsAt
}

function weiRaised() {
    return weiRaised
}

function tokenPriceUSD() {
    return tokenPriceUSD
}

function sub_4101a840(?) {
    return sub_4101a840
}

function threshold() {
    return threshold
}

function sub_54c21fb8(?) {
    return sub_54c21fb8
}

function presaleEndsAt() {
    return presaleEndsAt
}

function sub_6f71c5ea(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6f71c5ea[arg1]
}

function sub_7d4833ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7d4833ad[arg1]
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
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

function getDecimalsOracle() {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, eth.balance(this.address));
    stor1 = 1
}

function getLatestPriceETHUSD() {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function withdrawTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < sub_54c21fb8:
        revert with 0, 'Claim period not started'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_4101a840:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - sub_4101a840
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}

function getPriceInWeiPerToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Invalid price'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (arg1 / ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (arg1 * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if arg1 and t * s > -1 / arg1:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    return (arg1 * t * s / ext_call.return_data[32])
}

function getPriceInWeiPerToken() {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Invalid price'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if tokenPriceUSD and 1 > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (tokenPriceUSD / ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if tokenPriceUSD and 10^ext_call.return_data[31 len 1] > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if tokenPriceUSD and t * s > -1 / tokenPriceUSD:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    return (tokenPriceUSD * t * s / ext_call.return_data[32])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Invalid price'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if tokenPriceUSD and 1 > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if sub_7d4833ad[address(arg1)] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not tokenPriceUSD / ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (10^18 * sub_7d4833ad[address(arg1)] / tokenPriceUSD / ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if tokenPriceUSD and 10^ext_call.return_data[31 len 1] > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if sub_7d4833ad[address(arg1)] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
            revert with 'NH{q', 18
        return (10^18 * sub_7d4833ad[address(arg1)] / tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if tokenPriceUSD and t * s > -1 / tokenPriceUSD:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    if sub_7d4833ad[address(arg1)] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not tokenPriceUSD * t * s / ext_call.return_data[32]:
        revert with 'NH{q', 18
    return (10^18 * sub_7d4833ad[address(arg1)] / tokenPriceUSD * t * s / ext_call.return_data[32])
}

function remainingTokensByCurrentPrice() {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Invalid price'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if tokenPriceUSD and 1 > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not tokenPriceUSD / ext_call.return_data[32]:
            revert with 'NH{q', 18
        if threshold < 10^18 * weiRaised / tokenPriceUSD / ext_call.return_data[32]:
            revert with 'NH{q', 17
        return (threshold - (10^18 * weiRaised / tokenPriceUSD / ext_call.return_data[32]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if tokenPriceUSD and 10^ext_call.return_data[31 len 1] > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
            revert with 'NH{q', 18
        if threshold < 10^18 * weiRaised / tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
            revert with 'NH{q', 17
        return (threshold - (10^18 * weiRaised / tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if tokenPriceUSD and t * s > -1 / tokenPriceUSD:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not tokenPriceUSD * t * s / ext_call.return_data[32]:
        revert with 'NH{q', 18
    if threshold < 10^18 * weiRaised / tokenPriceUSD * t * s / ext_call.return_data[32]:
        revert with 'NH{q', 17
    return (threshold - (10^18 * weiRaised / tokenPriceUSD * t * s / ext_call.return_data[32]))
}

function claimTokens() {
    if block.timestamp < sub_54c21fb8:
        revert with 0, 'Claim period not started'
    if sub_7d4833ad[address(msg.sender)] <= 0:
        revert with 0, 'User has NO tokens'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    sub_7d4833ad[address(msg.sender)] = 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Invalid price'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if tokenPriceUSD and 1 > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if sub_7d4833ad[address(msg.sender)] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not tokenPriceUSD / ext_call.return_data[32]:
            revert with 'NH{q', 18
        if sub_4101a840 < 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD / ext_call.return_data[32]:
            sub_4101a840 = 0
        else:
            sub_4101a840 -= 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD / ext_call.return_data[32]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD / ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit ClaimedTokens(msg.sender, 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD / ext_call.return_data[32]);
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if tokenPriceUSD and 10^ext_call.return_data[31 len 1] > -1 / tokenPriceUSD:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if sub_7d4833ad[address(msg.sender)] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                revert with 'NH{q', 18
            if sub_4101a840 < 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                sub_4101a840 = 0
            else:
                sub_4101a840 -= 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit ClaimedTokens(msg.sender, 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]);
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if tokenPriceUSD and t * s > -1 / tokenPriceUSD:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if sub_7d4833ad[address(msg.sender)] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not tokenPriceUSD * t * s / ext_call.return_data[32]:
                revert with 'NH{q', 18
            if sub_4101a840 < 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * t * s / ext_call.return_data[32]:
                sub_4101a840 = 0
            else:
                sub_4101a840 -= 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * t * s / ext_call.return_data[32]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * t * s / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit ClaimedTokens(msg.sender, 10^18 * sub_7d4833ad[address(msg.sender)] / tokenPriceUSD * t * s / ext_call.return_data[32]);
    stor1 = 1
}

function buyTokens() payable {
    if block.timestamp < presaleStartsAt:
        revert with 0, 'It's not presale period'
    if block.timestamp > presaleEndsAt:
        revert with 0, 'It's not presale period'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint256(initialPrice) and 16 > -1 / uint256(initialPrice):
        revert with 'NH{q', 17
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Invalid price'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if tokenPriceUSD and 1 > -1 / tokenPriceUSD:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if msg.value > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not tokenPriceUSD / ext_call.return_data[32]:
            revert with 'NH{q', 18
        if not tokenPriceUSD:
            revert with 'NH{q', 18
        if not 16 * uint256(initialPrice) / tokenPriceUSD:
            revert with 'NH{q', 18
        if 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] <= 0:
            revert with 0, 'Insufficient funds'
        if uint256(initialPrice) and 16 > -1 / uint256(initialPrice):
            revert with 'NH{q', 17
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] <= 0:
            revert with 0, 'Invalid price'
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(252, 0, stor5) and 1 > -1 / 16 * uint256(initialPrice):
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not 16 * uint256(initialPrice) / ext_call.return_data[32]:
                revert with 'NH{q', 18
            if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                revert with 0, 'There is no more tokens to sell'
            if 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            sub_7d4833ad[address(msg.sender)] += msg.value
            if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                revert with 'NH{q', 17
            sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
            if weiRaised > -msg.value - 1:
                revert with 'NH{q', 17
            weiRaised += msg.value
            if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]) - 1:
                revert with 'NH{q', 17
            sub_4101a840 += 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]
            if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not tokenPriceUSD / ext_call.return_data[32]:
                revert with 'NH{q', 18
            if var419001 <= threshold:
                emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32], tokenPriceUSD / ext_call.return_data[32]);
                stor1 = 1
            if not uint256(initialPrice):
                revert with 'NH{q', 18
            if tokenPriceUSD / uint256(initialPrice) < 16:
                if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                    revert with 'NH{q', 17
                # nil
            else:
                emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32], tokenPriceUSD / ext_call.return_data[32]);
                stor1 = 1
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if Mask(252, 0, stor5) and 10^ext_call.return_data[31 len 1] > -1 / 16 * uint256(initialPrice):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                    revert with 0, 'There is no more tokens to sell'
                if 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                sub_7d4833ad[address(msg.sender)] += msg.value
                if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                if weiRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                weiRaised += msg.value
                if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                sub_4101a840 += 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not tokenPriceUSD / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if var425001 <= threshold:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32], tokenPriceUSD / ext_call.return_data[32]);
                    stor1 = 1
                if not uint256(initialPrice):
                    revert with 'NH{q', 18
                if tokenPriceUSD / uint256(initialPrice) < 16:
                    if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                        revert with 'NH{q', 17
                    # nil
                else:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32], tokenPriceUSD / ext_call.return_data[32]);
                    stor1 = 1
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if Mask(252, 0, stor5) and t * s > -1 / 16 * uint256(initialPrice):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not 16 * uint256(initialPrice) * t * s / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) * t * s / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) * t * s / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                    revert with 0, 'There is no more tokens to sell'
                if 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                sub_7d4833ad[address(msg.sender)] += msg.value
                if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                if weiRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                weiRaised += msg.value
                if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                sub_4101a840 += 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32]
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not tokenPriceUSD / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if var430001 <= threshold:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32], tokenPriceUSD / ext_call.return_data[32]);
                    stor1 = 1
                if not uint256(initialPrice):
                    revert with 'NH{q', 18
                if tokenPriceUSD / uint256(initialPrice) < 16:
                    if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                        revert with 'NH{q', 17
                    # nil
                else:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD / ext_call.return_data[32], tokenPriceUSD / ext_call.return_data[32]);
                    stor1 = 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if tokenPriceUSD and 10^ext_call.return_data[31 len 1] > -1 / tokenPriceUSD:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if msg.value > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                revert with 'NH{q', 18
            if not tokenPriceUSD:
                revert with 'NH{q', 18
            if not 16 * uint256(initialPrice) / tokenPriceUSD:
                revert with 'NH{q', 18
            if 10^18 * msg.value / tokenPriceUSD * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32] <= 0:
                revert with 0, 'Insufficient funds'
            if uint256(initialPrice) and 16 > -1 / uint256(initialPrice):
                revert with 'NH{q', 17
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] <= 0:
                revert with 0, 'Invalid price'
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(252, 0, stor5) and 1 > -1 / 16 * uint256(initialPrice):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not 16 * uint256(initialPrice) / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                    revert with 0, 'There is no more tokens to sell'
                if 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                sub_7d4833ad[address(msg.sender)] += msg.value
                if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                if weiRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                weiRaised += msg.value
                if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                sub_4101a840 += 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if var425001 <= threshold:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32], tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]);
                    stor1 = 1
                if not uint256(initialPrice):
                    revert with 'NH{q', 18
                if tokenPriceUSD / uint256(initialPrice) < 16:
                    if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                        revert with 'NH{q', 17
                    # nil
                else:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32], tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]);
                    stor1 = 1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if Mask(252, 0, stor5) and 10^ext_call.return_data[31 len 1] > -1 / 16 * uint256(initialPrice):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                        revert with 0, 'There is no more tokens to sell'
                    if 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_7d4833ad[address(msg.sender)] += msg.value
                    if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                    if weiRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    weiRaised += msg.value
                    if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    sub_4101a840 += 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if var431001 <= threshold:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32], tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]);
                        stor1 = 1
                    if not uint256(initialPrice):
                        revert with 'NH{q', 18
                    if tokenPriceUSD / uint256(initialPrice) < 16:
                        if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32], tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]);
                        stor1 = 1
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if Mask(252, 0, stor5) and t * s > -1 / 16 * uint256(initialPrice):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not 16 * uint256(initialPrice) * t * s / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) * t * s / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) * t * s / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                        revert with 0, 'There is no more tokens to sell'
                    if 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_7d4833ad[address(msg.sender)] += msg.value
                    if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                    if weiRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    weiRaised += msg.value
                    if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    sub_4101a840 += 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if var436001 <= threshold:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32], tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]);
                        stor1 = 1
                    if not uint256(initialPrice):
                        revert with 'NH{q', 18
                    if tokenPriceUSD / uint256(initialPrice) < 16:
                        if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32], tokenPriceUSD * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[32]);
                        stor1 = 1
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if tokenPriceUSD and t * s > -1 / tokenPriceUSD:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if msg.value > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not tokenPriceUSD * t * s / ext_call.return_data[32]:
                revert with 'NH{q', 18
            if not tokenPriceUSD:
                revert with 'NH{q', 18
            if not 16 * uint256(initialPrice) / tokenPriceUSD:
                revert with 'NH{q', 18
            if 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] <= 0:
                revert with 0, 'Insufficient funds'
            if uint256(initialPrice) and 16 > -1 / uint256(initialPrice):
                revert with 'NH{q', 17
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] <= 0:
                revert with 0, 'Invalid price'
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(252, 0, stor5) and 1 > -1 / 16 * uint256(initialPrice):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not 16 * uint256(initialPrice) / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                    revert with 0, 'There is no more tokens to sell'
                if 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                sub_7d4833ad[address(msg.sender)] += msg.value
                if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                if weiRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                weiRaised += msg.value
                if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                sub_4101a840 += 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]
                if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not tokenPriceUSD * t * s / ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if var430001 <= threshold:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32], tokenPriceUSD * t * s / ext_call.return_data[32]);
                    stor1 = 1
                if not uint256(initialPrice):
                    revert with 'NH{q', 18
                if tokenPriceUSD / uint256(initialPrice) < 16:
                    if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                        revert with 'NH{q', 17
                    # nil
                else:
                    emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32], tokenPriceUSD * t * s / ext_call.return_data[32]);
                    stor1 = 1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if Mask(252, 0, stor5) and 10^ext_call.return_data[31 len 1] > -1 / 16 * uint256(initialPrice):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                        revert with 0, 'There is no more tokens to sell'
                    if 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_7d4833ad[address(msg.sender)] += msg.value
                    if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                    if weiRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    weiRaised += msg.value
                    if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    sub_4101a840 += 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not tokenPriceUSD * t * s / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if var436001 <= threshold:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32], tokenPriceUSD * t * s / ext_call.return_data[32]);
                        stor1 = 1
                    if not uint256(initialPrice):
                        revert with 'NH{q', 18
                    if tokenPriceUSD / uint256(initialPrice) < 16:
                        if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32], tokenPriceUSD * t * s / ext_call.return_data[32]);
                        stor1 = 1
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if Mask(252, 0, stor5) and v * u > -1 / 16 * uint256(initialPrice):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not 16 * uint256(initialPrice) * v * u / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if threshold < 10^18 * weiRaised / 16 * uint256(initialPrice) * v * u / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if threshold - (10^18 * weiRaised / 16 * uint256(initialPrice) * v * u / ext_call.return_data[32]) <= 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] / 16 * uint256(initialPrice) / tokenPriceUSD:
                        revert with 0, 'There is no more tokens to sell'
                    if 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] and tokenPriceUSD > -1 / 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if sub_7d4833ad[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_7d4833ad[address(msg.sender)] += msg.value
                    if sub_6f71c5ea[address(msg.sender)] > -(10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    sub_6f71c5ea[address(msg.sender)] += 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32] * tokenPriceUSD / 1000000000000000000 * 10^18
                    if weiRaised > -msg.value - 1:
                        revert with 'NH{q', 17
                    weiRaised += msg.value
                    if sub_4101a840 > -(10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    sub_4101a840 += 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32]
                    if weiRaised > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not tokenPriceUSD * t * s / ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if var441001 <= threshold:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32], tokenPriceUSD * t * s / ext_call.return_data[32]);
                        stor1 = 1
                    if not uint256(initialPrice):
                        revert with 'NH{q', 18
                    if tokenPriceUSD / uint256(initialPrice) < 16:
                        if tokenPriceUSD and 2 > -1 / tokenPriceUSD:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        emit PreBuyTokens(msg.value, msg.sender, 10^18 * msg.value / tokenPriceUSD * t * s / ext_call.return_data[32], tokenPriceUSD * t * s / ext_call.return_data[32]);
                        stor1 = 1
}



}
